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
                        sub              rsp, 11144
                        mov              rdi, rsp
                        mov              ecx, 11144
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 11136], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 10880], 0
                        mov              qword ptr [rbp + 10888], 0
                        mov              dword ptr [rbp + 10896], 0
                                                                                        jmp   n2_lit_charset_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 10896]
                        cmp              eax, 0
                                                                                        jne   .Lx393_0
                        mov              rax, qword ptr [rbp + 10912]
                        mov              qword ptr [rbp + 10880], rax
                        mov              rax, qword ptr [rbp + 10920]
                        mov              qword ptr [rbp + 10888], rax
                                                                                        jmp   n1_call_builtin_icon_α
.Lx393_0:
                        cmp              eax, 1
                                                                                        jne   .Lx393_1
                        mov              rax, qword ptr [rbp + 11072]
                        mov              qword ptr [rbp + 10880], rax
                        mov              rax, qword ptr [rbp + 11080]
                        mov              qword ptr [rbp + 10888], rax
                                                                                        jmp   n1_call_builtin_icon_α
.Lx393_1:
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
                                                                                        je    n3_lit_string_α
                                                                                        jmp   n5_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10880]
                        mov              qword ptr [rbp + 10848], rax
                        mov              rax, qword ptr [rbp + 10888]
                        mov              qword ptr [rbp + 10856], rax
                        .section         .rodata
.Lrkfn395:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn395]
                        lea              rsi, [rbp + 10848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10832], rax
                        mov              qword ptr [rbp + 10840], rdx
                        cmp              eax, 99
                                                                                        je    n0_disjunction_β
                                                                                        jmp   n5_disjunction_α
n1_call_builtin_icon_β:
                                                                                        jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_charset_α:
                        mov              qword ptr [rbp + 11008], 1
                        mov              dword ptr [rbp + 11012], -1
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rbp + 11016], rax
                                                                                        jmp   n6_lit_string_α
n2_lit_charset_β:
                                                                                        jmp   n0_disjunction_af
.Lx396_0:
                        .quad            .Lx396_0_s
.Lx396_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 11072], 1
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rbp + 11080], rax
                                                                                        jmp   n0_disjunction_as
n3_lit_string_β:
                                                                                        jmp   n0_disjunction_af
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
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
.Lbynamefn5:            .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn5]
                        lea              rsi, [rbp + 10928]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10912], rax
                        mov              qword ptr [rbp + 10920], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n0_disjunction_as
n4_call_builtin_icon_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n5_disjunction_α:
                        mov              qword ptr [rbp + 10624], 0
                        mov              qword ptr [rbp + 10632], 0
                        mov              dword ptr [rbp + 10640], 0
                                                                                        jmp   n8_lit_charset_α
n5_disjunction_as:
                        mov              eax, dword ptr [rbp + 10640]
                        cmp              eax, 0
                                                                                        jne   .Lx400_0
                        mov              rax, qword ptr [rbp + 10656]
                        mov              qword ptr [rbp + 10624], rax
                        mov              rax, qword ptr [rbp + 10664]
                        mov              qword ptr [rbp + 10632], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx400_0:
                        cmp              eax, 1
                                                                                        jne   .Lx400_1
                        mov              rax, qword ptr [rbp + 10816]
                        mov              qword ptr [rbp + 10624], rax
                        mov              rax, qword ptr [rbp + 10824]
                        mov              qword ptr [rbp + 10632], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx400_1:
                                                                                        jmp   n7_call_builtin_icon_α
n5_disjunction_β:
                        mov              eax, dword ptr [rbp + 10640]
                        cmp              eax, 0
                                                                                        je    n5_disjunction_af
                                                                                        jmp   n5_disjunction_af
n5_disjunction_af:
                        add              dword ptr [rbp + 10640], 1
                        mov              eax, dword ptr [rbp + 10640]
                        cmp              eax, 1
                                                                                        je    n9_lit_string_α
                                                                                        jmp   n12_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 11024], 1
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rbp + 11032], rax
                                                                                        jmp   n11_lit_integer_α
.Lx401_0:
                        .quad            .Lx401_0_s
.Lx401_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10624]
                        mov              qword ptr [rbp + 10592], rax
                        mov              rax, qword ptr [rbp + 10632]
                        mov              qword ptr [rbp + 10600], rax
                        .section         .rodata
.Lrkfn403:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn403]
                        lea              rsi, [rbp + 10592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10576], rax
                        mov              qword ptr [rbp + 10584], rdx
                        cmp              eax, 99
                                                                                        je    n5_disjunction_β
                                                                                        jmp   n12_disjunction_α
n7_call_builtin_icon_β:
                                                                                        jmp   n5_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_charset_α:
                        mov              qword ptr [rbp + 10752], 1
                        mov              dword ptr [rbp + 10756], -1
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rbp + 10760], rax
                                                                                        jmp   n13_lit_string_α
n8_lit_charset_β:
                                                                                        jmp   n5_disjunction_af
.Lx404_0:
                        .quad            .Lx404_0_s
.Lx404_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 10816], 1
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rbp + 10824], rax
                                                                                        jmp   n5_disjunction_as
n9_lit_string_β:
                                                                                        jmp   n5_disjunction_af
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
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
.Lbynamefn11:           .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn11]
                        lea              rsi, [rbp + 10672]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10656], rax
                        mov              qword ptr [rbp + 10664], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n5_disjunction_af
                                                                                        jmp   n5_disjunction_as
n10_call_builtin_icon_β:
                                                                                        jmp   n5_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 11040], 6
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rbp + 11048], rax
                                                                                        jmp   n14_lit_integer_α
.Lx407_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n12_disjunction_α:
                        mov              qword ptr [rbp + 10368], 0
                        mov              qword ptr [rbp + 10376], 0
                        mov              dword ptr [rbp + 10384], 0
                                                                                        jmp   n16_lit_charset_α
n12_disjunction_as:
                        mov              eax, dword ptr [rbp + 10384]
                        cmp              eax, 0
                                                                                        jne   .Lx409_0
                        mov              rax, qword ptr [rbp + 10400]
                        mov              qword ptr [rbp + 10368], rax
                        mov              rax, qword ptr [rbp + 10408]
                        mov              qword ptr [rbp + 10376], rax
                                                                                        jmp   n15_call_builtin_icon_α
.Lx409_0:
                        cmp              eax, 1
                                                                                        jne   .Lx409_1
                        mov              rax, qword ptr [rbp + 10560]
                        mov              qword ptr [rbp + 10368], rax
                        mov              rax, qword ptr [rbp + 10568]
                        mov              qword ptr [rbp + 10376], rax
                                                                                        jmp   n15_call_builtin_icon_α
.Lx409_1:
                                                                                        jmp   n15_call_builtin_icon_α
n12_disjunction_β:
                        mov              eax, dword ptr [rbp + 10384]
                        cmp              eax, 0
                                                                                        je    n12_disjunction_af
                                                                                        jmp   n12_disjunction_af
n12_disjunction_af:
                        add              dword ptr [rbp + 10384], 1
                        mov              eax, dword ptr [rbp + 10384]
                        cmp              eax, 1
                                                                                        je    n17_lit_string_α
                                                                                        jmp   n20_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 10768], 1
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rbp + 10776], rax
                                                                                        jmp   n19_lit_integer_α
.Lx410_0:
                        .quad            .Lx410_0_s
.Lx410_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 11056], 6
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rbp + 11064], rax
                                                                                        jmp   n4_call_builtin_icon_α
.Lx411_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10368]
                        mov              qword ptr [rbp + 10336], rax
                        mov              rax, qword ptr [rbp + 10376]
                        mov              qword ptr [rbp + 10344], rax
                        .section         .rodata
.Lrkfn413:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn413]
                        lea              rsi, [rbp + 10336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10320], rax
                        mov              qword ptr [rbp + 10328], rdx
                        cmp              eax, 99
                                                                                        je    n12_disjunction_β
                                                                                        jmp   n20_disjunction_α
n15_call_builtin_icon_β:
                                                                                        jmp   n12_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_charset_α:
                        mov              qword ptr [rbp + 10496], 1
                        mov              dword ptr [rbp + 10500], -1
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rbp + 10504], rax
                                                                                        jmp   n21_lit_string_α
n16_lit_charset_β:
                                                                                        jmp   n12_disjunction_af
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 10560], 1
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rbp + 10568], rax
                                                                                        jmp   n12_disjunction_as
n17_lit_string_β:
                                                                                        jmp   n12_disjunction_af
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
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
.Lbynamefn19:           .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn19]
                        lea              rsi, [rbp + 10416]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10400], rax
                        mov              qword ptr [rbp + 10408], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n12_disjunction_af
                                                                                        jmp   n12_disjunction_as
n18_call_builtin_icon_β:
                                                                                        jmp   n12_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 10784], 6
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rbp + 10792], rax
                                                                                        jmp   n22_lit_integer_α
.Lx417_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n20_disjunction_α:
                        mov              qword ptr [rbp + 10144], 0
                        mov              qword ptr [rbp + 10152], 0
                        mov              dword ptr [rbp + 10160], 0
                                                                                        jmp   n24_lit_charset_α
n20_disjunction_as:
                        mov              eax, dword ptr [rbp + 10160]
                        cmp              eax, 0
                                                                                        jne   .Lx419_0
                        mov              rax, qword ptr [rbp + 10176]
                        mov              qword ptr [rbp + 10144], rax
                        mov              rax, qword ptr [rbp + 10184]
                        mov              qword ptr [rbp + 10152], rax
                                                                                        jmp   n23_call_builtin_icon_α
.Lx419_0:
                        cmp              eax, 1
                                                                                        jne   .Lx419_1
                        mov              rax, qword ptr [rbp + 10304]
                        mov              qword ptr [rbp + 10144], rax
                        mov              rax, qword ptr [rbp + 10312]
                        mov              qword ptr [rbp + 10152], rax
                                                                                        jmp   n23_call_builtin_icon_α
.Lx419_1:
                                                                                        jmp   n23_call_builtin_icon_α
n20_disjunction_β:
                        mov              eax, dword ptr [rbp + 10160]
                        cmp              eax, 0
                                                                                        je    n20_disjunction_af
                                                                                        jmp   n20_disjunction_af
n20_disjunction_af:
                        add              dword ptr [rbp + 10160], 1
                        mov              eax, dword ptr [rbp + 10160]
                        cmp              eax, 1
                                                                                        je    n25_lit_string_α
                                                                                        jmp   n28_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 10512], 1
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rbp + 10520], rax
                                                                                        jmp   n27_lit_integer_α
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 10800], 6
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rbp + 10808], rax
                                                                                        jmp   n10_call_builtin_icon_α
.Lx421_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10144]
                        mov              qword ptr [rbp + 10112], rax
                        mov              rax, qword ptr [rbp + 10152]
                        mov              qword ptr [rbp + 10120], rax
                        .section         .rodata
.Lrkfn423:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn423]
                        lea              rsi, [rbp + 10112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10096], rax
                        mov              qword ptr [rbp + 10104], rdx
                        cmp              eax, 99
                                                                                        je    n20_disjunction_β
                                                                                        jmp   n28_disjunction_α
n23_call_builtin_icon_β:
                                                                                        jmp   n20_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_charset_α:
                        mov              qword ptr [rbp + 10256], 1
                        mov              dword ptr [rbp + 10260], -1
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rbp + 10264], rax
                                                                                        jmp   n29_lit_string_α
n24_lit_charset_β:
                                                                                        jmp   n20_disjunction_af
.Lx424_0:
                        .quad            .Lx424_0_s
.Lx424_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 10304], 1
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rbp + 10312], rax
                                                                                        jmp   n20_disjunction_as
n25_lit_string_β:
                                                                                        jmp   n20_disjunction_af
.Lx425_0:
                        .quad            .Lx425_0_s
.Lx425_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_icon_α:
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
.Lbynamefn27:           .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn27]
                        lea              rsi, [rbp + 10192]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10176], rax
                        mov              qword ptr [rbp + 10184], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n20_disjunction_af
                                                                                        jmp   n20_disjunction_as
n26_call_builtin_icon_β:
                                                                                        jmp   n20_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:
                        mov              qword ptr [rbp + 10528], 6
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rbp + 10536], rax
                                                                                        jmp   n30_lit_integer_α
.Lx427_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:
                        mov              qword ptr [rbp + 9952], 0
                        mov              qword ptr [rbp + 9960], 0
                        mov              dword ptr [rbp + 9968], 0
                                                                                        jmp   n32_lit_charset_α
n28_disjunction_as:
                        mov              eax, dword ptr [rbp + 9968]
                        cmp              eax, 0
                                                                                        jne   .Lx429_0
                        mov              rax, qword ptr [rbp + 9984]
                        mov              qword ptr [rbp + 9952], rax
                        mov              rax, qword ptr [rbp + 9992]
                        mov              qword ptr [rbp + 9960], rax
                                                                                        jmp   n31_call_builtin_icon_α
.Lx429_0:
                        cmp              eax, 1
                                                                                        jne   .Lx429_1
                        mov              rax, qword ptr [rbp + 10080]
                        mov              qword ptr [rbp + 9952], rax
                        mov              rax, qword ptr [rbp + 10088]
                        mov              qword ptr [rbp + 9960], rax
                                                                                        jmp   n31_call_builtin_icon_α
.Lx429_1:
                                                                                        jmp   n31_call_builtin_icon_α
n28_disjunction_β:
                        mov              eax, dword ptr [rbp + 9968]
                        cmp              eax, 0
                                                                                        je    n28_disjunction_af
                                                                                        jmp   n28_disjunction_af
n28_disjunction_af:
                        add              dword ptr [rbp + 9968], 1
                        mov              eax, dword ptr [rbp + 9968]
                        cmp              eax, 1
                                                                                        je    n33_lit_string_α
                                                                                        jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 10272], 1
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rbp + 10280], rax
                                                                                        jmp   n35_lit_integer_α
.Lx430_0:
                        .quad            .Lx430_0_s
.Lx430_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 10544], 6
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rbp + 10552], rax
                                                                                        jmp   n18_call_builtin_icon_α
.Lx431_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9952]
                        mov              qword ptr [rbp + 9920], rax
                        mov              rax, qword ptr [rbp + 9960]
                        mov              qword ptr [rbp + 9928], rax
                        .section         .rodata
.Lrkfn433:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn433]
                        lea              rsi, [rbp + 9920]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9904], rax
                        mov              qword ptr [rbp + 9912], rdx
                        cmp              eax, 99
                                                                                        je    n28_disjunction_β
                                                                                        jmp   n36_lit_string_α
n31_call_builtin_icon_β:
                                                                                        jmp   n28_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_charset_α:
                        mov              qword ptr [rbp + 10048], 1
                        mov              dword ptr [rbp + 10052], -1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 10056], rax
                                                                                        jmp   n37_lit_string_α
n32_lit_charset_β:
                                                                                        jmp   n28_disjunction_af
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 10080], 1
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 10088], rax
                                                                                        jmp   n28_disjunction_as
n33_lit_string_β:
                                                                                        jmp   n28_disjunction_af
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
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
.Lbynamefn35:           .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn35]
                        lea              rsi, [rbp + 10000]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9984], rax
                        mov              qword ptr [rbp + 9992], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n28_disjunction_af
                                                                                        jmp   n28_disjunction_as
n34_call_builtin_icon_β:
                                                                                        jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rbp + 10288], 6
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rbp + 10296], rax
                                                                                        jmp   n26_call_builtin_icon_α
.Lx437_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 9888], 1
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rbp + 9896], rax
                                                                                        jmp   n38_scan_enter_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 10064], 1
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rbp + 10072], rax
                                                                                        jmp   n34_call_builtin_icon_α
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n38_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 9888]
                        mov              rsi, qword ptr [rbp + 9896]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n39_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n39_disjunction_α:
                        mov              qword ptr [rbp + 9744], 0
                        mov              qword ptr [rbp + 9752], 0
                        mov              dword ptr [rbp + 9760], 0
                                                                                        jmp   n41_lit_charset_α
n39_disjunction_as:
                        mov              eax, dword ptr [rbp + 9760]
                        cmp              eax, 0
                                                                                        jne   .Lx443_0
                        mov              rax, qword ptr [rbp + 9776]
                        mov              qword ptr [rbp + 9744], rax
                        mov              rax, qword ptr [rbp + 9784]
                        mov              qword ptr [rbp + 9752], rax
                                                                                        jmp   n40_call_builtin_icon_α
.Lx443_0:
                        cmp              eax, 1
                                                                                        jne   .Lx443_1
                        mov              rax, qword ptr [rbp + 9872]
                        mov              qword ptr [rbp + 9744], rax
                        mov              rax, qword ptr [rbp + 9880]
                        mov              qword ptr [rbp + 9752], rax
                                                                                        jmp   n40_call_builtin_icon_α
.Lx443_1:
                                                                                        jmp   n40_call_builtin_icon_α
n39_disjunction_β:
                        mov              eax, dword ptr [rbp + 9760]
                        cmp              eax, 0
                                                                                        je    n39_disjunction_af
                                                                                        jmp   n39_disjunction_af
n39_disjunction_af:
                        add              dword ptr [rbp + 9760], 1
                        mov              eax, dword ptr [rbp + 9760]
                        cmp              eax, 1
                                                                                        je    n42_lit_string_α
                                                                                        jmp   n122_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9744]
                        mov              qword ptr [rbp + 9712], rax
                        mov              rax, qword ptr [rbp + 9752]
                        mov              qword ptr [rbp + 9720], rax
                        .section         .rodata
.Lrkfn445:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn445]
                        lea              rsi, [rbp + 9712]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9696], rax
                        mov              qword ptr [rbp + 9704], rdx
                        cmp              eax, 99
                                                                                        je    n39_disjunction_β
                                                                                        jmp   n44_scan_α
n40_call_builtin_icon_β:
                                                                                        jmp   n39_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_charset_α:
                        mov              qword ptr [rbp + 9840], 1
                        mov              dword ptr [rbp + 9844], -1
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rbp + 9848], rax
                                                                                        jmp   n45_lit_string_α
n41_lit_charset_β:
                                                                                        jmp   n39_disjunction_af
.Lx446_0:
                        .quad            .Lx446_0_s
.Lx446_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 9872], 1
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rbp + 9880], rax
                                                                                        jmp   n39_disjunction_as
n42_lit_string_β:
                                                                                        jmp   n39_disjunction_af
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_icon_α:
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
.Lbynamefn44:           .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn44]
                        lea              rsi, [rbp + 9792]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9776], rax
                        mov              qword ptr [rbp + 9784], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n39_disjunction_af
                                                                                        jmp   n39_disjunction_as
n43_call_builtin_icon_β:
                                                                                        jmp   n39_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n44_scan_α:
                        mov              rax, qword ptr [rbp + 9696]
                        mov              qword ptr [rbp + 9664], rax
                        mov              rax, qword ptr [rbp + 9704]
                        mov              qword ptr [rbp + 9672], rax
                        lea              rdi, [rbp + 9632]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 9632]
                        mov              r14, qword ptr [rbp + 9640]
                        mov              r15, qword ptr [rbp + 9648]
                                                                                        jmp   n46_lit_string_α
n44_scan_β:
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 9856], 1
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rbp + 9864], rax
                                                                                        jmp   n43_call_builtin_icon_α
.Lx451_0:
                        .quad            .Lx451_0_s
.Lx451_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 9600], 1
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rbp + 9608], rax
                                                                                        jmp   n47_scan_enter_α
.Lx452_0:
                        .quad            .Lx452_0_s
.Lx452_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n47_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 9600]
                        mov              rsi, qword ptr [rbp + 9608]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n48_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n48_disjunction_α:
                        mov              qword ptr [rbp + 9520], 0
                        mov              qword ptr [rbp + 9528], 0
                        mov              dword ptr [rbp + 9536], 0
                                                                                        jmp   n50_lit_charset_α
n48_disjunction_as:
                        mov              eax, dword ptr [rbp + 9536]
                        cmp              eax, 0
                                                                                        jne   .Lx456_0
                        mov              rax, qword ptr [rbp + 9552]
                        mov              qword ptr [rbp + 9520], rax
                        mov              rax, qword ptr [rbp + 9560]
                        mov              qword ptr [rbp + 9528], rax
                                                                                        jmp   n49_call_builtin_icon_α
.Lx456_0:
                        cmp              eax, 1
                                                                                        jne   .Lx456_1
                        mov              rax, qword ptr [rbp + 9584]
                        mov              qword ptr [rbp + 9520], rax
                        mov              rax, qword ptr [rbp + 9592]
                        mov              qword ptr [rbp + 9528], rax
                                                                                        jmp   n49_call_builtin_icon_α
.Lx456_1:
                                                                                        jmp   n49_call_builtin_icon_α
n48_disjunction_β:
                        mov              eax, dword ptr [rbp + 9536]
                        cmp              eax, 0
                                                                                        je    n48_disjunction_af
                                                                                        jmp   n48_disjunction_af
n48_disjunction_af:
                        add              dword ptr [rbp + 9536], 1
                        mov              eax, dword ptr [rbp + 9536]
                        cmp              eax, 1
                                                                                        je    n51_lit_string_α
                                                                                        jmp   n123_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9520]
                        mov              qword ptr [rbp + 9488], rax
                        mov              rax, qword ptr [rbp + 9528]
                        mov              qword ptr [rbp + 9496], rax
                        .section         .rodata
.Lrkfn458:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn458]
                        lea              rsi, [rbp + 9488]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9472], rax
                        mov              qword ptr [rbp + 9480], rdx
                        cmp              eax, 99
                                                                                        je    n48_disjunction_β
                                                                                        jmp   n53_scan_α
n49_call_builtin_icon_β:
                                                                                        jmp   n48_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_charset_α:
                        mov              qword ptr [rbp + 9568], 1
                        mov              dword ptr [rbp + 9572], -1
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 9576], rax
                                                                                        jmp   n52_scan_any_α
n50_lit_charset_β:
                                                                                        jmp   n48_disjunction_af
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 9584], 1
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rbp + 9592], rax
                                                                                        jmp   n48_disjunction_as
n51_lit_string_β:
                                                                                        jmp   n48_disjunction_af
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n52_scan_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n48_disjunction_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx462_0]
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                                                                                        je    n48_disjunction_af
                        mov              qword ptr [rbp + 9552], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 9560], rax
                                                                                        jmp   n48_disjunction_as
n52_scan_any_β:
                                                                                        jmp   n48_disjunction_af
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n53_scan_α:
                        mov              rax, qword ptr [rbp + 9472]
                        mov              qword ptr [rbp + 9440], rax
                        mov              rax, qword ptr [rbp + 9480]
                        mov              qword ptr [rbp + 9448], rax
                        lea              rdi, [rbp + 9408]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 9408]
                        mov              r14, qword ptr [rbp + 9416]
                        mov              r15, qword ptr [rbp + 9424]
                                                                                        jmp   n54_lit_string_α
n53_scan_β:
                                                                                        jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 9376], 1
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rbp + 9384], rax
                                                                                        jmp   n55_scan_enter_α
.Lx465_0:
                        .quad            .Lx465_0_s
.Lx465_0_s:
                        .string          "1234ab"
#-----------------------------------------------------------------------------------------------------------------------
n55_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 9376]
                        mov              rsi, qword ptr [rbp + 9384]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n56_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:
                        mov              qword ptr [rbp + 9360], 6
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 9368], rax
                                                                                        jmp   n57_keyword_assign_α
.Lx468_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n57_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 9360]
                        mov              rsi, qword ptr [rbp + 9368]
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 99
                                                                                        je    n59_scan_α
                        mov              qword ptr [rbp + 9344], rax
                        mov              qword ptr [rbp + 9352], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n58_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n58_disjunction_α:
                        mov              qword ptr [rbp + 9264], 0
                        mov              qword ptr [rbp + 9272], 0
                        mov              dword ptr [rbp + 9280], 0
                                                                                        jmp   n61_lit_charset_α
n58_disjunction_as:
                        mov              eax, dword ptr [rbp + 9280]
                        cmp              eax, 0
                                                                                        jne   .Lx471_0
                        mov              rax, qword ptr [rbp + 9296]
                        mov              qword ptr [rbp + 9264], rax
                        mov              rax, qword ptr [rbp + 9304]
                        mov              qword ptr [rbp + 9272], rax
                                                                                        jmp   n60_call_builtin_icon_α
.Lx471_0:
                        cmp              eax, 1
                                                                                        jne   .Lx471_1
                        mov              rax, qword ptr [rbp + 9328]
                        mov              qword ptr [rbp + 9264], rax
                        mov              rax, qword ptr [rbp + 9336]
                        mov              qword ptr [rbp + 9272], rax
                                                                                        jmp   n60_call_builtin_icon_α
.Lx471_1:
                                                                                        jmp   n60_call_builtin_icon_α
n58_disjunction_β:
                        mov              eax, dword ptr [rbp + 9280]
                        cmp              eax, 0
                                                                                        je    n58_disjunction_af
                                                                                        jmp   n58_disjunction_af
n58_disjunction_af:
                        add              dword ptr [rbp + 9280], 1
                        mov              eax, dword ptr [rbp + 9280]
                        cmp              eax, 1
                                                                                        je    n62_lit_string_α
                                                                                        jmp   n59_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n59_scan_α:
                        lea              rdi, [rbp + 9136]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 9136]
                        mov              r14, qword ptr [rbp + 9144]
                        mov              r15, qword ptr [rbp + 9152]
                                                                                        jmp   n64_call_builtin_icon_α
n59_scan_β:
                                                                                        jmp   n64_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9264]
                        mov              qword ptr [rbp + 9232], rax
                        mov              rax, qword ptr [rbp + 9272]
                        mov              qword ptr [rbp + 9240], rax
                        .section         .rodata
.Lrkfn475:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn475]
                        lea              rsi, [rbp + 9232]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9216], rax
                        mov              qword ptr [rbp + 9224], rdx
                        cmp              eax, 99
                                                                                        je    n58_disjunction_β
                                                                                        jmp   n65_conjunction_α
n60_call_builtin_icon_β:
                                                                                        jmp   n58_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_charset_α:
                        mov              qword ptr [rbp + 9312], 1
                        mov              dword ptr [rbp + 9316], -1
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rbp + 9320], rax
                                                                                        jmp   n63_scan_any_α
n61_lit_charset_β:
                                                                                        jmp   n58_disjunction_af
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 9328], 1
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rbp + 9336], rax
                                                                                        jmp   n58_disjunction_as
n62_lit_string_β:
                                                                                        jmp   n58_disjunction_af
.Lx477_0:
                        .quad            .Lx477_0_s
.Lx477_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n63_scan_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n58_disjunction_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx479_0]
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                                                                                        je    n58_disjunction_af
                        mov              qword ptr [rbp + 9296], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 9304], rax
                                                                                        jmp   n58_disjunction_as
n63_scan_any_β:
                                                                                        jmp   n58_disjunction_af
.Lx479_0:
                        .quad            .Lx479_0_s
.Lx479_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn481:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn481]
                        lea              rsi, [rbp + 9104]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9088], rax
                        mov              qword ptr [rbp + 9096], rdx
                        cmp              eax, 99
                                                                                        je    n66_disjunction_α
                                                                                        jmp   n66_disjunction_α
n64_call_builtin_icon_β:
                                                                                        jmp   n66_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n65_conjunction_α:
                        mov              rax, qword ptr [rbp + 9216]
                        mov              qword ptr [rbp + 9200], rax
                        mov              rax, qword ptr [rbp + 9224]
                        mov              qword ptr [rbp + 9208], rax
                                                                                        jmp   n67_scan_α
n65_conjunction_β:
                                                                                        jmp   n59_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n66_disjunction_α:
                        mov              qword ptr [rbp + 8944], 0
                        mov              qword ptr [rbp + 8952], 0
                        mov              dword ptr [rbp + 8960], 0
                                                                                        jmp   n69_lit_charset_α
n66_disjunction_as:
                        mov              eax, dword ptr [rbp + 8960]
                        cmp              eax, 0
                                                                                        jne   .Lx484_0
                        mov              rax, qword ptr [rbp + 8976]
                        mov              qword ptr [rbp + 8944], rax
                        mov              rax, qword ptr [rbp + 8984]
                        mov              qword ptr [rbp + 8952], rax
                                                                                        jmp   n68_call_builtin_icon_α
.Lx484_0:
                        cmp              eax, 1
                                                                                        jne   .Lx484_1
                        mov              rax, qword ptr [rbp + 9072]
                        mov              qword ptr [rbp + 8944], rax
                        mov              rax, qword ptr [rbp + 9080]
                        mov              qword ptr [rbp + 8952], rax
                                                                                        jmp   n68_call_builtin_icon_α
.Lx484_1:
                                                                                        jmp   n68_call_builtin_icon_α
n66_disjunction_β:
                        mov              eax, dword ptr [rbp + 8960]
                        cmp              eax, 0
                                                                                        je    n66_disjunction_af
                                                                                        jmp   n66_disjunction_af
n66_disjunction_af:
                        add              dword ptr [rbp + 8960], 1
                        mov              eax, dword ptr [rbp + 8960]
                        cmp              eax, 1
                                                                                        je    n70_lit_string_α
                                                                                        jmp   n72_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n67_scan_α:
                        mov              rax, qword ptr [rbp + 9200]
                        mov              qword ptr [rbp + 9168], rax
                        mov              rax, qword ptr [rbp + 9208]
                        mov              qword ptr [rbp + 9176], rax
                        lea              rdi, [rbp + 9136]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 9136]
                        mov              r14, qword ptr [rbp + 9144]
                        mov              r15, qword ptr [rbp + 9152]
                                                                                        jmp   n64_call_builtin_icon_α
n67_scan_β:
                                                                                        jmp   n64_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8944]
                        mov              qword ptr [rbp + 8912], rax
                        mov              rax, qword ptr [rbp + 8952]
                        mov              qword ptr [rbp + 8920], rax
                        .section         .rodata
.Lrkfn488:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn488]
                        lea              rsi, [rbp + 8912]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8896], rax
                        mov              qword ptr [rbp + 8904], rdx
                        cmp              eax, 99
                                                                                        je    n66_disjunction_β
                                                                                        jmp   n72_disjunction_α
n68_call_builtin_icon_β:
                                                                                        jmp   n66_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_charset_α:
                        mov              qword ptr [rbp + 9040], 1
                        mov              dword ptr [rbp + 9044], -1
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rbp + 9048], rax
                                                                                        jmp   n73_lit_string_α
n69_lit_charset_β:
                                                                                        jmp   n66_disjunction_af
.Lx489_0:
                        .quad            .Lx489_0_s
.Lx489_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 9072], 1
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rbp + 9080], rax
                                                                                        jmp   n66_disjunction_as
n70_lit_string_β:
                                                                                        jmp   n66_disjunction_af
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_icon_α:
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
.Lbynamefn72:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn72]
                        lea              rsi, [rbp + 8992]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8976], rax
                        mov              qword ptr [rbp + 8984], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n66_disjunction_af
                                                                                        jmp   n66_disjunction_as
n71_call_builtin_icon_β:
                                                                                        jmp   n66_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n72_disjunction_α:
                        mov              qword ptr [rbp + 8752], 0
                        mov              qword ptr [rbp + 8760], 0
                        mov              dword ptr [rbp + 8768], 0
                                                                                        jmp   n75_lit_charset_α
n72_disjunction_as:
                        mov              eax, dword ptr [rbp + 8768]
                        cmp              eax, 0
                                                                                        jne   .Lx493_0
                        mov              rax, qword ptr [rbp + 8784]
                        mov              qword ptr [rbp + 8752], rax
                        mov              rax, qword ptr [rbp + 8792]
                        mov              qword ptr [rbp + 8760], rax
                                                                                        jmp   n74_call_builtin_icon_α
.Lx493_0:
                        cmp              eax, 1
                                                                                        jne   .Lx493_1
                        mov              rax, qword ptr [rbp + 8880]
                        mov              qword ptr [rbp + 8752], rax
                        mov              rax, qword ptr [rbp + 8888]
                        mov              qword ptr [rbp + 8760], rax
                                                                                        jmp   n74_call_builtin_icon_α
.Lx493_1:
                                                                                        jmp   n74_call_builtin_icon_α
n72_disjunction_β:
                        mov              eax, dword ptr [rbp + 8768]
                        cmp              eax, 0
                                                                                        je    n72_disjunction_af
                                                                                        jmp   n72_disjunction_af
n72_disjunction_af:
                        add              dword ptr [rbp + 8768], 1
                        mov              eax, dword ptr [rbp + 8768]
                        cmp              eax, 1
                                                                                        je    n76_lit_string_α
                                                                                        jmp   n78_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 9056], 1
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rbp + 9064], rax
                                                                                        jmp   n71_call_builtin_icon_α
.Lx494_0:
                        .quad            .Lx494_0_s
.Lx494_0_s:
                        .string          "ababac"
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 8720], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 8728], rax
                        .section         .rodata
.Lrkfn496:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn496]
                        lea              rsi, [rbp + 8720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8704], rax
                        mov              qword ptr [rbp + 8712], rdx
                        cmp              eax, 99
                                                                                        je    n72_disjunction_β
                                                                                        jmp   n78_disjunction_α
n74_call_builtin_icon_β:
                                                                                        jmp   n72_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_charset_α:
                        mov              qword ptr [rbp + 8848], 1
                        mov              dword ptr [rbp + 8852], -1
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rbp + 8856], rax
                                                                                        jmp   n79_lit_string_α
n75_lit_charset_β:
                                                                                        jmp   n72_disjunction_af
.Lx497_0:
                        .quad            .Lx497_0_s
.Lx497_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 8880], 1
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rbp + 8888], rax
                                                                                        jmp   n72_disjunction_as
n76_lit_string_β:
                                                                                        jmp   n72_disjunction_af
.Lx498_0:
                        .quad            .Lx498_0_s
.Lx498_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
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
.Lbynamefn78:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn78]
                        lea              rsi, [rbp + 8800]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8784], rax
                        mov              qword ptr [rbp + 8792], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n72_disjunction_af
                                                                                        jmp   n72_disjunction_as
n77_call_builtin_icon_β:
                                                                                        jmp   n72_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n78_disjunction_α:
                        mov              qword ptr [rbp + 8560], 0
                        mov              qword ptr [rbp + 8568], 0
                        mov              dword ptr [rbp + 8576], 0
                                                                                        jmp   n81_lit_charset_α
n78_disjunction_as:
                        mov              eax, dword ptr [rbp + 8576]
                        cmp              eax, 0
                                                                                        jne   .Lx501_0
                        mov              rax, qword ptr [rbp + 8592]
                        mov              qword ptr [rbp + 8560], rax
                        mov              rax, qword ptr [rbp + 8600]
                        mov              qword ptr [rbp + 8568], rax
                                                                                        jmp   n80_call_builtin_icon_α
.Lx501_0:
                        cmp              eax, 1
                                                                                        jne   .Lx501_1
                        mov              rax, qword ptr [rbp + 8688]
                        mov              qword ptr [rbp + 8560], rax
                        mov              rax, qword ptr [rbp + 8696]
                        mov              qword ptr [rbp + 8568], rax
                                                                                        jmp   n80_call_builtin_icon_α
.Lx501_1:
                                                                                        jmp   n80_call_builtin_icon_α
n78_disjunction_β:
                        mov              eax, dword ptr [rbp + 8576]
                        cmp              eax, 0
                                                                                        je    n78_disjunction_af
                                                                                        jmp   n78_disjunction_af
n78_disjunction_af:
                        add              dword ptr [rbp + 8576], 1
                        mov              eax, dword ptr [rbp + 8576]
                        cmp              eax, 1
                                                                                        je    n82_lit_string_α
                                                                                        jmp   n84_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 8864], 1
                        mov              rax, qword ptr [rip + .Lx502_0]
                        mov              qword ptr [rbp + 8872], rax
                                                                                        jmp   n77_call_builtin_icon_α
.Lx502_0:
                        .quad            .Lx502_0_s
.Lx502_0_s:
                        .string          "ababab"
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8560]
                        mov              qword ptr [rbp + 8528], rax
                        mov              rax, qword ptr [rbp + 8568]
                        mov              qword ptr [rbp + 8536], rax
                        .section         .rodata
.Lrkfn504:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn504]
                        lea              rsi, [rbp + 8528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8512], rax
                        mov              qword ptr [rbp + 8520], rdx
                        cmp              eax, 99
                                                                                        je    n78_disjunction_β
                                                                                        jmp   n84_call_builtin_icon_α
n80_call_builtin_icon_β:
                                                                                        jmp   n78_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_charset_α:
                        mov              qword ptr [rbp + 8656], 1
                        mov              dword ptr [rbp + 8660], -1
                        mov              rax, qword ptr [rip + .Lx505_0]
                        mov              qword ptr [rbp + 8664], rax
                                                                                        jmp   n85_lit_string_α
n81_lit_charset_β:
                                                                                        jmp   n78_disjunction_af
.Lx505_0:
                        .quad            .Lx505_0_s
.Lx505_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 8688], 1
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rbp + 8696], rax
                                                                                        jmp   n78_disjunction_as
n82_lit_string_β:
                                                                                        jmp   n78_disjunction_af
.Lx506_0:
                        .quad            .Lx506_0_s
.Lx506_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_icon_α:
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
.Lbynamefn84:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn84]
                        lea              rsi, [rbp + 8608]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8592], rax
                        mov              qword ptr [rbp + 8600], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n78_disjunction_af
                                                                                        jmp   n78_disjunction_as
n83_call_builtin_icon_β:
                                                                                        jmp   n78_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn509:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn509]
                        lea              rsi, [rbp + 8496]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8480], rax
                        mov              qword ptr [rbp + 8488], rdx
                        cmp              eax, 99
                                                                                        je    n86_disjunction_α
                                                                                        jmp   n86_disjunction_α
n84_call_builtin_icon_β:
                                                                                        jmp   n86_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 8672], 1
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rbp + 8680], rax
                                                                                        jmp   n83_call_builtin_icon_α
.Lx510_0:
                        .quad            .Lx510_0_s
.Lx510_0_s:
                        .string          "cababab"
#-----------------------------------------------------------------------------------------------------------------------
n86_disjunction_α:
                        mov              qword ptr [rbp + 8336], 0
                        mov              qword ptr [rbp + 8344], 0
                        mov              dword ptr [rbp + 8352], 0
                                                                                        jmp   n88_lit_string_α
n86_disjunction_as:
                        mov              eax, dword ptr [rbp + 8352]
                        cmp              eax, 0
                                                                                        jne   .Lx512_0
                        mov              rax, qword ptr [rbp + 8368]
                        mov              qword ptr [rbp + 8336], rax
                        mov              rax, qword ptr [rbp + 8376]
                        mov              qword ptr [rbp + 8344], rax
                                                                                        jmp   n87_call_builtin_icon_α
.Lx512_0:
                        cmp              eax, 1
                                                                                        jne   .Lx512_1
                        mov              rax, qword ptr [rbp + 8464]
                        mov              qword ptr [rbp + 8336], rax
                        mov              rax, qword ptr [rbp + 8472]
                        mov              qword ptr [rbp + 8344], rax
                                                                                        jmp   n87_call_builtin_icon_α
.Lx512_1:
                                                                                        jmp   n87_call_builtin_icon_α
n86_disjunction_β:
                        mov              eax, dword ptr [rbp + 8352]
                        cmp              eax, 0
                                                                                        je    n86_disjunction_af
                                                                                        jmp   n86_disjunction_af
n86_disjunction_af:
                        add              dword ptr [rbp + 8352], 1
                        mov              eax, dword ptr [rbp + 8352]
                        cmp              eax, 1
                                                                                        je    n89_lit_string_α
                                                                                        jmp   n91_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8336]
                        mov              qword ptr [rbp + 8304], rax
                        mov              rax, qword ptr [rbp + 8344]
                        mov              qword ptr [rbp + 8312], rax
                        .section         .rodata
.Lrkfn514:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn514]
                        lea              rsi, [rbp + 8304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8288], rax
                        mov              qword ptr [rbp + 8296], rdx
                        cmp              eax, 99
                                                                                        je    n86_disjunction_β
                                                                                        jmp   n91_disjunction_α
n87_call_builtin_icon_β:
                                                                                        jmp   n86_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 8432], 1
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rbp + 8440], rax
                                                                                        jmp   n92_lit_string_α
n88_lit_string_β:
                                                                                        jmp   n86_disjunction_af
.Lx515_0:
                        .quad            .Lx515_0_s
.Lx515_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 8464], 1
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rbp + 8472], rax
                                                                                        jmp   n86_disjunction_as
n89_lit_string_β:
                                                                                        jmp   n86_disjunction_af
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n90_call_α:
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
.Lbynamefn91:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn91]
                        lea              rsi, [rbp + 8384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8368], rax
                        mov              qword ptr [rbp + 8376], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n86_disjunction_af
                                                                                        jmp   n86_disjunction_as
n90_call_β:
                                                                                        jmp   n86_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n91_disjunction_α:
                        mov              qword ptr [rbp + 8144], 0
                        mov              qword ptr [rbp + 8152], 0
                        mov              dword ptr [rbp + 8160], 0
                                                                                        jmp   n94_lit_string_α
n91_disjunction_as:
                        mov              eax, dword ptr [rbp + 8160]
                        cmp              eax, 0
                                                                                        jne   .Lx519_0
                        mov              rax, qword ptr [rbp + 8176]
                        mov              qword ptr [rbp + 8144], rax
                        mov              rax, qword ptr [rbp + 8184]
                        mov              qword ptr [rbp + 8152], rax
                                                                                        jmp   n93_call_builtin_icon_α
.Lx519_0:
                        cmp              eax, 1
                                                                                        jne   .Lx519_1
                        mov              rax, qword ptr [rbp + 8272]
                        mov              qword ptr [rbp + 8144], rax
                        mov              rax, qword ptr [rbp + 8280]
                        mov              qword ptr [rbp + 8152], rax
                                                                                        jmp   n93_call_builtin_icon_α
.Lx519_1:
                                                                                        jmp   n93_call_builtin_icon_α
n91_disjunction_β:
                        mov              eax, dword ptr [rbp + 8160]
                        cmp              eax, 0
                                                                                        je    n91_disjunction_af
                                                                                        jmp   n91_disjunction_af
n91_disjunction_af:
                        add              dword ptr [rbp + 8160], 1
                        mov              eax, dword ptr [rbp + 8160]
                        cmp              eax, 1
                                                                                        je    n95_lit_string_α
                                                                                        jmp   n97_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rbp + 8448], 1
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rbp + 8456], rax
                                                                                        jmp   n90_call_α
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "ababab"
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8144]
                        mov              qword ptr [rbp + 8112], rax
                        mov              rax, qword ptr [rbp + 8152]
                        mov              qword ptr [rbp + 8120], rax
                        .section         .rodata
.Lrkfn522:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn522]
                        lea              rsi, [rbp + 8112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8096], rax
                        mov              qword ptr [rbp + 8104], rdx
                        cmp              eax, 99
                                                                                        je    n91_disjunction_β
                                                                                        jmp   n97_disjunction_α
n93_call_builtin_icon_β:
                                                                                        jmp   n91_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 8240], 1
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rbp + 8248], rax
                                                                                        jmp   n98_lit_string_α
n94_lit_string_β:
                                                                                        jmp   n91_disjunction_af
.Lx523_0:
                        .quad            .Lx523_0_s
.Lx523_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 8272], 1
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rbp + 8280], rax
                                                                                        jmp   n91_disjunction_as
n95_lit_string_β:
                                                                                        jmp   n91_disjunction_af
.Lx524_0:
                        .quad            .Lx524_0_s
.Lx524_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n96_call_α:
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
.Lbynamefn97:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn97]
                        lea              rsi, [rbp + 8192]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8176], rax
                        mov              qword ptr [rbp + 8184], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n91_disjunction_af
                                                                                        jmp   n91_disjunction_as
n96_call_β:
                                                                                        jmp   n91_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n97_disjunction_α:
                        mov              qword ptr [rbp + 7952], 0
                        mov              qword ptr [rbp + 7960], 0
                        mov              dword ptr [rbp + 7968], 0
                                                                                        jmp   n100_lit_string_α
n97_disjunction_as:
                        mov              eax, dword ptr [rbp + 7968]
                        cmp              eax, 0
                                                                                        jne   .Lx527_0
                        mov              rax, qword ptr [rbp + 7984]
                        mov              qword ptr [rbp + 7952], rax
                        mov              rax, qword ptr [rbp + 7992]
                        mov              qword ptr [rbp + 7960], rax
                                                                                        jmp   n99_call_builtin_icon_α
.Lx527_0:
                        cmp              eax, 1
                                                                                        jne   .Lx527_1
                        mov              rax, qword ptr [rbp + 8080]
                        mov              qword ptr [rbp + 7952], rax
                        mov              rax, qword ptr [rbp + 8088]
                        mov              qword ptr [rbp + 7960], rax
                                                                                        jmp   n99_call_builtin_icon_α
.Lx527_1:
                                                                                        jmp   n99_call_builtin_icon_α
n97_disjunction_β:
                        mov              eax, dword ptr [rbp + 7968]
                        cmp              eax, 0
                                                                                        je    n97_disjunction_af
                                                                                        jmp   n97_disjunction_af
n97_disjunction_af:
                        add              dword ptr [rbp + 7968], 1
                        mov              eax, dword ptr [rbp + 7968]
                        cmp              eax, 1
                                                                                        je    n101_lit_string_α
                                                                                        jmp   n103_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rbp + 8256], 1
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rbp + 8264], rax
                                                                                        jmp   n96_call_α
.Lx528_0:
                        .quad            .Lx528_0_s
.Lx528_0_s:
                        .string          "bbabab"
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7952]
                        mov              qword ptr [rbp + 7920], rax
                        mov              rax, qword ptr [rbp + 7960]
                        mov              qword ptr [rbp + 7928], rax
                        .section         .rodata
.Lrkfn530:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn530]
                        lea              rsi, [rbp + 7920]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7904], rax
                        mov              qword ptr [rbp + 7912], rdx
                        cmp              eax, 99
                                                                                        je    n97_disjunction_β
                                                                                        jmp   n103_disjunction_α
n99_call_builtin_icon_β:
                                                                                        jmp   n97_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        mov              qword ptr [rbp + 8048], 1
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rbp + 8056], rax
                                                                                        jmp   n104_lit_string_α
n100_lit_string_β:
                                                                                        jmp   n97_disjunction_af
.Lx531_0:
                        .quad            .Lx531_0_s
.Lx531_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 8080], 1
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rbp + 8088], rax
                                                                                        jmp   n97_disjunction_as
n101_lit_string_β:
                                                                                        jmp   n97_disjunction_af
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:
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
.Lbynamefn103:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn103]
                        lea              rsi, [rbp + 8000]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7984], rax
                        mov              qword ptr [rbp + 7992], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n97_disjunction_af
                                                                                        jmp   n97_disjunction_as
n102_call_β:
                                                                                        jmp   n97_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n103_disjunction_α:
                        mov              qword ptr [rbp + 7760], 0
                        mov              qword ptr [rbp + 7768], 0
                        mov              dword ptr [rbp + 7776], 0
                                                                                        jmp   n106_lit_string_α
n103_disjunction_as:
                        mov              eax, dword ptr [rbp + 7776]
                        cmp              eax, 0
                                                                                        jne   .Lx535_0
                        mov              rax, qword ptr [rbp + 7792]
                        mov              qword ptr [rbp + 7760], rax
                        mov              rax, qword ptr [rbp + 7800]
                        mov              qword ptr [rbp + 7768], rax
                                                                                        jmp   n105_call_builtin_icon_α
.Lx535_0:
                        cmp              eax, 1
                                                                                        jne   .Lx535_1
                        mov              rax, qword ptr [rbp + 7888]
                        mov              qword ptr [rbp + 7760], rax
                        mov              rax, qword ptr [rbp + 7896]
                        mov              qword ptr [rbp + 7768], rax
                                                                                        jmp   n105_call_builtin_icon_α
.Lx535_1:
                                                                                        jmp   n105_call_builtin_icon_α
n103_disjunction_β:
                        mov              eax, dword ptr [rbp + 7776]
                        cmp              eax, 0
                                                                                        je    n103_disjunction_af
                                                                                        jmp   n103_disjunction_af
n103_disjunction_af:
                        add              dword ptr [rbp + 7776], 1
                        mov              eax, dword ptr [rbp + 7776]
                        cmp              eax, 1
                                                                                        je    n107_lit_string_α
                                                                                        jmp   n109_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 8064], 1
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rbp + 8072], rax
                                                                                        jmp   n102_call_α
.Lx536_0:
                        .quad            .Lx536_0_s
.Lx536_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7760]
                        mov              qword ptr [rbp + 7728], rax
                        mov              rax, qword ptr [rbp + 7768]
                        mov              qword ptr [rbp + 7736], rax
                        .section         .rodata
.Lrkfn538:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn538]
                        lea              rsi, [rbp + 7728]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7712], rax
                        mov              qword ptr [rbp + 7720], rdx
                        cmp              eax, 99
                                                                                        je    n103_disjunction_β
                                                                                        jmp   n109_call_builtin_icon_α
n105_call_builtin_icon_β:
                                                                                        jmp   n103_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 7856], 1
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rbp + 7864], rax
                                                                                        jmp   n110_lit_string_α
n106_lit_string_β:
                                                                                        jmp   n103_disjunction_af
.Lx539_0:
                        .quad            .Lx539_0_s
.Lx539_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rbp + 7888], 1
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rbp + 7896], rax
                                                                                        jmp   n103_disjunction_as
n107_lit_string_β:
                                                                                        jmp   n103_disjunction_af
.Lx540_0:
                        .quad            .Lx540_0_s
.Lx540_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:
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
.Lbynamefn109:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn109]
                        lea              rsi, [rbp + 7808]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7792], rax
                        mov              qword ptr [rbp + 7800], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n103_disjunction_af
                                                                                        jmp   n103_disjunction_as
n108_call_β:
                                                                                        jmp   n103_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn543:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn543]
                        lea              rsi, [rbp + 7696]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7680], rax
                        mov              qword ptr [rbp + 7688], rdx
                        cmp              eax, 99
                                                                                        je    n111_disjunction_α
                                                                                        jmp   n111_disjunction_α
n109_call_builtin_icon_β:
                                                                                        jmp   n111_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 7872], 1
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rbp + 7880], rax
                                                                                        jmp   n108_call_α
.Lx544_0:
                        .quad            .Lx544_0_s
.Lx544_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n111_disjunction_α:
                        mov              qword ptr [rbp + 7440], 0
                        mov              qword ptr [rbp + 7448], 0
                        mov              dword ptr [rbp + 7456], 0
                                                                                        jmp   n113_lit_string_α
n111_disjunction_as:
                        mov              eax, dword ptr [rbp + 7456]
                        cmp              eax, 0
                                                                                        jne   .Lx546_0
                        mov              rax, qword ptr [rbp + 7472]
                        mov              qword ptr [rbp + 7440], rax
                        mov              rax, qword ptr [rbp + 7480]
                        mov              qword ptr [rbp + 7448], rax
                                                                                        jmp   n112_call_builtin_icon_α
.Lx546_0:
                        cmp              eax, 1
                                                                                        jne   .Lx546_1
                        mov              rax, qword ptr [rbp + 7664]
                        mov              qword ptr [rbp + 7440], rax
                        mov              rax, qword ptr [rbp + 7672]
                        mov              qword ptr [rbp + 7448], rax
                                                                                        jmp   n112_call_builtin_icon_α
.Lx546_1:
                                                                                        jmp   n112_call_builtin_icon_α
n111_disjunction_β:
                        mov              eax, dword ptr [rbp + 7456]
                        cmp              eax, 0
                                                                                        je    n114_call_builtin_gen_β
                                                                                        jmp   n111_disjunction_af
n111_disjunction_af:
                        add              dword ptr [rbp + 7456], 1
                        mov              eax, dword ptr [rbp + 7456]
                        cmp              eax, 1
                                                                                        je    n115_lit_string_α
                                                                                        jmp   n124_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7440]
                        mov              qword ptr [rbp + 7408], rax
                        mov              rax, qword ptr [rbp + 7448]
                        mov              qword ptr [rbp + 7416], rax
                        .section         .rodata
.Lrkfn548:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn548]
                        lea              rsi, [rbp + 7408]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx
                        cmp              eax, 99
                                                                                        je    n111_disjunction_β
                                                                                        jmp   n111_disjunction_β
n112_call_builtin_icon_β:
                                                                                        jmp   n111_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 7536], 1
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rbp + 7544], rax
                                                                                        jmp   n116_disjunction_α
n113_lit_string_β:
                                                                                        jmp   n111_disjunction_af
.Lx549_0:
                        .quad            .Lx549_0_s
.Lx549_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_gen_α:
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
.Lx550_60:
                        .section         .rodata
.Lbynamegenfn115:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn115]
                        lea              rsi, [rbp + 7488]
                        mov              edx, 2
                        lea              rcx, [rbp + 7520]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 7472], rax
                        mov              qword ptr [rbp + 7480], rdx
                        cmp              eax, 99
                                                                                        je    n116_disjunction_β
                                                                                        jmp   n111_disjunction_as
n114_call_builtin_gen_β:
                                                                                        jmp   .Lx550_60
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:
                        mov              qword ptr [rbp + 7664], 1
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rbp + 7672], rax
                                                                                        jmp   n111_disjunction_as
n115_lit_string_β:
                                                                                        jmp   n111_disjunction_af
.Lx551_0:
                        .quad            .Lx551_0_s
.Lx551_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n116_disjunction_α:
                        mov              qword ptr [rbp + 7552], 0
                        mov              qword ptr [rbp + 7560], 0
                        mov              dword ptr [rbp + 7568], 0
                                                                                        jmp   n117_lit_string_α
n116_disjunction_as:
                        mov              eax, dword ptr [rbp + 7568]
                        cmp              eax, 0
                                                                                        jne   .Lx553_0
                        mov              rax, qword ptr [rbp + 7584]
                        mov              qword ptr [rbp + 7552], rax
                        mov              rax, qword ptr [rbp + 7592]
                        mov              qword ptr [rbp + 7560], rax
                                                                                        jmp   n114_call_builtin_gen_α
.Lx553_0:
                        cmp              eax, 1
                                                                                        jne   .Lx553_1
                        mov              rax, qword ptr [rbp + 7600]
                        mov              qword ptr [rbp + 7552], rax
                        mov              rax, qword ptr [rbp + 7608]
                        mov              qword ptr [rbp + 7560], rax
                                                                                        jmp   n114_call_builtin_gen_α
.Lx553_1:
                        cmp              eax, 2
                                                                                        jne   .Lx553_2
                        mov              rax, qword ptr [rbp + 7616]
                        mov              qword ptr [rbp + 7552], rax
                        mov              rax, qword ptr [rbp + 7624]
                        mov              qword ptr [rbp + 7560], rax
                                                                                        jmp   n114_call_builtin_gen_α
.Lx553_2:
                        cmp              eax, 3
                                                                                        jne   .Lx553_3
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 7552], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 7560], rax
                                                                                        jmp   n114_call_builtin_gen_α
.Lx553_3:
                        cmp              eax, 4
                                                                                        jne   .Lx553_4
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 7552], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 7560], rax
                                                                                        jmp   n114_call_builtin_gen_α
.Lx553_4:
                                                                                        jmp   n114_call_builtin_gen_α
n116_disjunction_β:
                        mov              eax, dword ptr [rbp + 7568]
                        cmp              eax, 0
                                                                                        je    n116_disjunction_af
                        cmp              eax, 1
                                                                                        je    n116_disjunction_af
                        cmp              eax, 2
                                                                                        je    n116_disjunction_af
                        cmp              eax, 3
                                                                                        je    n116_disjunction_af
                                                                                        jmp   n116_disjunction_af
n116_disjunction_af:
                        add              dword ptr [rbp + 7568], 1
                        mov              eax, dword ptr [rbp + 7568]
                        cmp              eax, 1
                                                                                        je    n118_lit_string_α
                        cmp              eax, 2
                                                                                        je    n119_lit_string_α
                        cmp              eax, 3
                                                                                        je    n120_lit_string_α
                        cmp              eax, 4
                                                                                        je    n121_lit_string_α
                                                                                        jmp   n111_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rbp + 7584], 1
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rbp + 7592], rax
                                                                                        jmp   n116_disjunction_as
n117_lit_string_β:
                                                                                        jmp   n116_disjunction_af
.Lx554_0:
                        .quad            .Lx554_0_s
.Lx554_0_s:
                        .string          "ababab"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 7600], 1
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rbp + 7608], rax
                                                                                        jmp   n116_disjunction_as
n118_lit_string_β:
                                                                                        jmp   n116_disjunction_af
.Lx555_0:
                        .quad            .Lx555_0_s
.Lx555_0_s:
                        .string          "ababa"
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rbp + 7616], 1
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rbp + 7624], rax
                                                                                        jmp   n116_disjunction_as
n119_lit_string_β:
                                                                                        jmp   n116_disjunction_af
.Lx556_0:
                        .quad            .Lx556_0_s
.Lx556_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        mov              qword ptr [rbp + 7632], 1
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rbp + 7640], rax
                                                                                        jmp   n116_disjunction_as
n120_lit_string_β:
                                                                                        jmp   n116_disjunction_af
.Lx557_0:
                        .quad            .Lx557_0_s
.Lx557_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        mov              qword ptr [rbp + 7648], 1
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rbp + 7656], rax
                                                                                        jmp   n116_disjunction_as
n121_lit_string_β:
                                                                                        jmp   n116_disjunction_af
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n122_scan_α:
                        lea              rdi, [rbp + 9632]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 9632]
                        mov              r14, qword ptr [rbp + 9640]
                        mov              r15, qword ptr [rbp + 9648]
                                                                                        jmp   n46_lit_string_α
n122_scan_β:
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_scan_α:
                        lea              rdi, [rbp + 9408]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 9408]
                        mov              r14, qword ptr [rbp + 9416]
                        mov              r15, qword ptr [rbp + 9424]
                                                                                        jmp   n54_lit_string_α
n123_scan_β:
                                                                                        jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn564:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn564]
                        lea              rsi, [rbp + 7376]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7360], rax
                        mov              qword ptr [rbp + 7368], rdx
                        cmp              eax, 99
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
                                                                                        jne   .Lx566_0
                        mov              rax, qword ptr [rbp + 7152]
                        mov              qword ptr [rbp + 7120], rax
                        mov              rax, qword ptr [rbp + 7160]
                        mov              qword ptr [rbp + 7128], rax
                                                                                        jmp   n126_call_builtin_icon_α
.Lx566_0:
                        cmp              eax, 1
                                                                                        jne   .Lx566_1
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 7120], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 7128], rax
                                                                                        jmp   n126_call_builtin_icon_α
.Lx566_1:
                                                                                        jmp   n126_call_builtin_icon_α
n125_disjunction_β:
                        mov              eax, dword ptr [rbp + 7136]
                        cmp              eax, 0
                                                                                        je    n129_call_builtin_gen_β
                                                                                        jmp   n125_disjunction_af
n125_disjunction_af:
                        add              dword ptr [rbp + 7136], 1
                        mov              eax, dword ptr [rbp + 7136]
                        cmp              eax, 1
                                                                                        je    n130_lit_string_α
                                                                                        jmp   n127_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7120]
                        mov              qword ptr [rbp + 7088], rax
                        mov              rax, qword ptr [rbp + 7128]
                        mov              qword ptr [rbp + 7096], rax
                        .section         .rodata
.Lrkfn568:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn568]
                        lea              rsi, [rbp + 7088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7072], rax
                        mov              qword ptr [rbp + 7080], rdx
                        cmp              eax, 99
                                                                                        je    n125_disjunction_β
                                                                                        jmp   n125_disjunction_β
n126_call_builtin_icon_β:
                                                                                        jmp   n125_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn570:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn570]
                        lea              rsi, [rbp + 7056]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7040], rax
                        mov              qword ptr [rbp + 7048], rdx
                        cmp              eax, 99
                                                                                        je    n131_lit_string_α
                                                                                        jmp   n131_lit_string_α
n127_call_builtin_icon_β:
                                                                                        jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_charset_α:
                        mov              qword ptr [rbp + 7216], 1
                        mov              dword ptr [rbp + 7220], -1
                        mov              rax, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rbp + 7224], rax
                                                                                        jmp   n132_disjunction_α
n128_lit_charset_β:
                                                                                        jmp   n125_disjunction_af
.Lx571_0:
                        .quad            .Lx571_0_s
.Lx571_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_gen_α:
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
.Lx572_60:
                        .section         .rodata
.Lbynamegenfn130:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn130]
                        lea              rsi, [rbp + 7168]
                        mov              edx, 2
                        lea              rcx, [rbp + 7200]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 7152], rax
                        mov              qword ptr [rbp + 7160], rdx
                        cmp              eax, 99
                                                                                        je    n132_disjunction_β
                                                                                        jmp   n125_disjunction_as
n129_call_builtin_gen_β:
                                                                                        jmp   .Lx572_60
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        mov              qword ptr [rbp + 7344], 1
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rbp + 7352], rax
                                                                                        jmp   n125_disjunction_as
n130_lit_string_β:
                                                                                        jmp   n125_disjunction_af
.Lx573_0:
                        .quad            .Lx573_0_s
.Lx573_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rbp + 7024], 1
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rbp + 7032], rax
                                                                                        jmp   n133_scan_enter_α
.Lx574_0:
                        .quad            .Lx574_0_s
.Lx574_0_s:
                        .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n132_disjunction_α:
                        mov              qword ptr [rbp + 7232], 0
                        mov              qword ptr [rbp + 7240], 0
                        mov              dword ptr [rbp + 7248], 0
                                                                                        jmp   n134_lit_string_α
n132_disjunction_as:
                        mov              eax, dword ptr [rbp + 7248]
                        cmp              eax, 0
                                                                                        jne   .Lx576_0
                        mov              rax, qword ptr [rbp + 7264]
                        mov              qword ptr [rbp + 7232], rax
                        mov              rax, qword ptr [rbp + 7272]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n129_call_builtin_gen_α
.Lx576_0:
                        cmp              eax, 1
                                                                                        jne   .Lx576_1
                        mov              rax, qword ptr [rbp + 7280]
                        mov              qword ptr [rbp + 7232], rax
                        mov              rax, qword ptr [rbp + 7288]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n129_call_builtin_gen_α
.Lx576_1:
                        cmp              eax, 2
                                                                                        jne   .Lx576_2
                        mov              rax, qword ptr [rbp + 7296]
                        mov              qword ptr [rbp + 7232], rax
                        mov              rax, qword ptr [rbp + 7304]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n129_call_builtin_gen_α
.Lx576_2:
                        cmp              eax, 3
                                                                                        jne   .Lx576_3
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 7232], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n129_call_builtin_gen_α
.Lx576_3:
                        cmp              eax, 4
                                                                                        jne   .Lx576_4
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 7232], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n129_call_builtin_gen_α
.Lx576_4:
                                                                                        jmp   n129_call_builtin_gen_α
n132_disjunction_β:
                        mov              eax, dword ptr [rbp + 7248]
                        cmp              eax, 0
                                                                                        je    n132_disjunction_af
                        cmp              eax, 1
                                                                                        je    n132_disjunction_af
                        cmp              eax, 2
                                                                                        je    n132_disjunction_af
                        cmp              eax, 3
                                                                                        je    n132_disjunction_af
                                                                                        jmp   n132_disjunction_af
n132_disjunction_af:
                        add              dword ptr [rbp + 7248], 1
                        mov              eax, dword ptr [rbp + 7248]
                        cmp              eax, 1
                                                                                        je    n135_lit_string_α
                        cmp              eax, 2
                                                                                        je    n136_lit_string_α
                        cmp              eax, 3
                                                                                        je    n137_lit_string_α
                        cmp              eax, 4
                                                                                        je    n138_lit_string_α
                                                                                        jmp   n125_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n133_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 7024]
                        mov              rsi, qword ptr [rbp + 7032]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n139_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        mov              qword ptr [rbp + 7264], 1
                        mov              rax, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rbp + 7272], rax
                                                                                        jmp   n132_disjunction_as
n134_lit_string_β:
                                                                                        jmp   n132_disjunction_af
.Lx579_0:
                        .quad            .Lx579_0_s
.Lx579_0_s:
                        .string          "abccab"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 7280], 1
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rbp + 7288], rax
                                                                                        jmp   n132_disjunction_as
n135_lit_string_β:
                                                                                        jmp   n132_disjunction_af
.Lx580_0:
                        .quad            .Lx580_0_s
.Lx580_0_s:
                        .string          "cbabc"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 7296], 1
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rbp + 7304], rax
                                                                                        jmp   n132_disjunction_as
n136_lit_string_β:
                                                                                        jmp   n132_disjunction_af
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 7312], 1
                        mov              rax, qword ptr [rip + .Lx582_0]
                        mov              qword ptr [rbp + 7320], rax
                                                                                        jmp   n132_disjunction_as
n137_lit_string_β:
                                                                                        jmp   n132_disjunction_af
.Lx582_0:
                        .quad            .Lx582_0_s
.Lx582_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 7328], 1
                        mov              rax, qword ptr [rip + .Lx583_0]
                        mov              qword ptr [rbp + 7336], rax
                                                                                        jmp   n132_disjunction_as
n138_lit_string_β:
                                                                                        jmp   n132_disjunction_af
.Lx583_0:
                        .quad            .Lx583_0_s
.Lx583_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:
                        mov              qword ptr [rbp + 6944], 6
                        mov              rax, qword ptr [rip + .Lx584_0]
                        mov              qword ptr [rbp + 6952], rax
                                                                                        jmp   n140_scan_move_α
.Lx584_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n140_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx586_239
                        add              rsp, 16
                                                                                        jmp   n142_scan_α
.Lx586_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx586_240
                        add              rsp, 16
                                                                                        jmp   n142_scan_α
.Lx586_240:
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
                        mov              qword ptr [rbp + 6912], rax
                        mov              qword ptr [rbp + 6920], rdx
                                                                                        jmp   n141_lit_string_α
n140_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n142_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 6960], 1
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rbp + 6968], rax
                                                                                        jmp   n143_lit_integer_α
.Lx587_0:
                        .quad            .Lx587_0_s
.Lx587_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n142_scan_α:
                        lea              rdi, [rbp + 6768]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 6768]
                        mov              r14, qword ptr [rbp + 6776]
                        mov              r15, qword ptr [rbp + 6784]
                                                                                        jmp   n144_lit_string_α
n142_scan_β:
                                                                                        jmp   n144_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:
                        mov              qword ptr [rbp + 7008], 6
                        mov              rax, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rbp + 7016], rax
                                                                                        jmp   n145_scan_move_α
.Lx590_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        mov              qword ptr [rbp + 6736], 1
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rbp + 6744], rax
                                                                                        jmp   n146_scan_enter_α
.Lx591_0:
                        .quad            .Lx591_0_s
.Lx591_0_s:
                        .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n145_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 2
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx593_239
                        add              rsp, 16
                                                                                        jmp   n142_scan_α
.Lx593_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx593_240
                        add              rsp, 16
                                                                                        jmp   n142_scan_α
.Lx593_240:
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
                        mov              qword ptr [rbp + 6976], rax
                        mov              qword ptr [rbp + 6984], rdx
                                                                                        jmp   n147_call_builtin_icon_α
n145_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n142_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n146_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 6736]
                        mov              rsi, qword ptr [rbp + 6744]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n148_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6912]
                        mov              qword ptr [rbp + 6848], rax
                        mov              rax, qword ptr [rbp + 6920]
                        mov              qword ptr [rbp + 6856], rax
                        mov              rax, qword ptr [rbp + 6960]
                        mov              qword ptr [rbp + 6864], rax
                        mov              rax, qword ptr [rbp + 6968]
                        mov              qword ptr [rbp + 6872], rax
                        mov              rax, qword ptr [rbp + 6976]
                        mov              qword ptr [rbp + 6880], rax
                        mov              rax, qword ptr [rbp + 6984]
                        mov              qword ptr [rbp + 6888], rax
                        .section         .rodata
.Lrkfn597:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn597]
                        lea              rsi, [rbp + 6848]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6832], rax
                        mov              qword ptr [rbp + 6840], rdx
                        cmp              eax, 99
                                                                                        je    n142_scan_α
                                                                                        jmp   n149_scan_α
n147_call_builtin_icon_β:
                                                                                        jmp   n142_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:
                        mov              qword ptr [rbp + 6720], 6
                        mov              rax, qword ptr [rip + .Lx598_0]
                        mov              qword ptr [rbp + 6728], rax
                                                                                        jmp   n150_scan_move_α
.Lx598_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n149_scan_α:
                        mov              rax, qword ptr [rbp + 6832]
                        mov              qword ptr [rbp + 6800], rax
                        mov              rax, qword ptr [rbp + 6840]
                        mov              qword ptr [rbp + 6808], rax
                        lea              rdi, [rbp + 6768]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 6768]
                        mov              r14, qword ptr [rbp + 6776]
                        mov              r15, qword ptr [rbp + 6784]
                                                                                        jmp   n144_lit_string_α
n149_scan_β:
                                                                                        jmp   n144_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n150_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx602_239
                        add              rsp, 16
                                                                                        jmp   n152_lit_integer_α
.Lx602_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx602_240
                        add              rsp, 16
                                                                                        jmp   n152_lit_integer_α
.Lx602_240:
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
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                                                                                        jmp   n151_call_builtin_icon_α
n150_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n152_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6688]
                        mov              qword ptr [rbp + 6656], rax
                        mov              rax, qword ptr [rbp + 6696]
                        mov              qword ptr [rbp + 6664], rax
                        .section         .rodata
.Lrkfn604:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn604]
                        lea              rsi, [rbp + 6656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6640], rax
                        mov              qword ptr [rbp + 6648], rdx
                        cmp              eax, 99
                                                                                        je    n152_lit_integer_α
                                                                                        jmp   n152_lit_integer_α
n151_call_builtin_icon_β:
                                                                                        jmp   n152_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:
                        mov              qword ptr [rbp + 6624], 6
                        mov              rax, qword ptr [rip + .Lx605_0]
                        mov              qword ptr [rbp + 6632], rax
                                                                                        jmp   n153_scan_move_α
.Lx605_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n153_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 2
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx607_239
                        add              rsp, 16
                                                                                        jmp   n155_lit_integer_α
.Lx607_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx607_240
                        add              rsp, 16
                                                                                        jmp   n155_lit_integer_α
.Lx607_240:
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
                        mov              qword ptr [rbp + 6592], rax
                        mov              qword ptr [rbp + 6600], rdx
                                                                                        jmp   n154_call_builtin_icon_α
n153_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n154_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6592]
                        mov              qword ptr [rbp + 6560], rax
                        mov              rax, qword ptr [rbp + 6600]
                        mov              qword ptr [rbp + 6568], rax
                        .section         .rodata
.Lrkfn609:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn609]
                        lea              rsi, [rbp + 6560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx
                        cmp              eax, 99
                                                                                        je    n155_lit_integer_α
                                                                                        jmp   n155_lit_integer_α
n154_call_builtin_icon_β:
                                                                                        jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        mov              qword ptr [rbp + 6528], 6
                        mov              rax, qword ptr [rip + .Lx610_0]
                        mov              qword ptr [rbp + 6536], rax
                                                                                        jmp   n156_scan_move_α
.Lx610_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n156_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 3
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx612_239
                        add              rsp, 16
                                                                                        jmp   n158_lit_integer_α
.Lx612_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx612_240
                        add              rsp, 16
                                                                                        jmp   n158_lit_integer_α
.Lx612_240:
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
                        mov              qword ptr [rbp + 6496], rax
                        mov              qword ptr [rbp + 6504], rdx
                                                                                        jmp   n157_call_builtin_icon_α
n156_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n158_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6496]
                        mov              qword ptr [rbp + 6464], rax
                        mov              rax, qword ptr [rbp + 6504]
                        mov              qword ptr [rbp + 6472], rax
                        .section         .rodata
.Lrkfn614:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn614]
                        lea              rsi, [rbp + 6464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        cmp              eax, 99
                                                                                        je    n158_lit_integer_α
                                                                                        jmp   n158_lit_integer_α
n157_call_builtin_icon_β:
                                                                                        jmp   n158_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:
                        mov              qword ptr [rbp + 6432], 6
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rbp + 6440], rax
                                                                                        jmp   n159_scan_move_α
.Lx615_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n159_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 4
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx617_239
                        add              rsp, 16
                                                                                        jmp   n161_lit_integer_α
.Lx617_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx617_240
                        add              rsp, 16
                                                                                        jmp   n161_lit_integer_α
.Lx617_240:
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
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                                                                                        jmp   n160_call_builtin_icon_α
n159_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n161_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 6368], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 6376], rax
                        .section         .rodata
.Lrkfn619:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn619]
                        lea              rsi, [rbp + 6368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx
                        cmp              eax, 99
                                                                                        je    n161_lit_integer_α
                                                                                        jmp   n161_lit_integer_α
n160_call_builtin_icon_β:
                                                                                        jmp   n161_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:
                        mov              qword ptr [rbp + 6336], 6
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rbp + 6344], rax
                                                                                        jmp   n162_scan_move_α
.Lx620_0:
                        .quad            18446744073709551612
#-----------------------------------------------------------------------------------------------------------------------
n162_scan_move_α:
                        sub              rsp, 16
                        mov              rax, -4
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx622_239
                        add              rsp, 16
                                                                                        jmp   n164_scan_α
.Lx622_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx622_240
                        add              rsp, 16
                                                                                        jmp   n164_scan_α
.Lx622_240:
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
                        mov              qword ptr [rbp + 6304], rax
                        mov              qword ptr [rbp + 6312], rdx
                                                                                        jmp   n163_call_builtin_icon_α
n162_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n164_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6304]
                        mov              qword ptr [rbp + 6272], rax
                        mov              rax, qword ptr [rbp + 6312]
                        mov              qword ptr [rbp + 6280], rax
                        .section         .rodata
.Lrkfn624:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn624]
                        lea              rsi, [rbp + 6272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx
                        cmp              eax, 99
                                                                                        je    n164_scan_α
                                                                                        jmp   n165_conjunction_α
n163_call_builtin_icon_β:
                                                                                        jmp   n164_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n164_scan_α:
                        lea              rdi, [rbp + 6176]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 6176]
                        mov              r14, qword ptr [rbp + 6184]
                        mov              r15, qword ptr [rbp + 6192]
                                                                                        jmp   n166_call_builtin_icon_α
n164_scan_β:
                                                                                        jmp   n166_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n165_conjunction_α:
                        mov              rax, qword ptr [rbp + 6256]
                        mov              qword ptr [rbp + 6240], rax
                        mov              rax, qword ptr [rbp + 6264]
                        mov              qword ptr [rbp + 6248], rax
                                                                                        jmp   n167_scan_α
n165_conjunction_β:
                                                                                        jmp   n164_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn629:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn629]
                        lea              rsi, [rbp + 6144]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6128], rax
                        mov              qword ptr [rbp + 6136], rdx
                        cmp              eax, 99
                                                                                        je    n168_lit_string_α
                                                                                        jmp   n168_lit_string_α
n166_call_builtin_icon_β:
                                                                                        jmp   n168_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n167_scan_α:
                        mov              rax, qword ptr [rbp + 6240]
                        mov              qword ptr [rbp + 6208], rax
                        mov              rax, qword ptr [rbp + 6248]
                        mov              qword ptr [rbp + 6216], rax
                        lea              rdi, [rbp + 6176]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 6176]
                        mov              r14, qword ptr [rbp + 6184]
                        mov              r15, qword ptr [rbp + 6192]
                                                                                        jmp   n166_call_builtin_icon_α
n167_scan_β:
                                                                                        jmp   n166_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        mov              qword ptr [rbp + 6112], 1
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rbp + 6120], rax
                                                                                        jmp   n169_scan_enter_α
.Lx632_0:
                        .quad            .Lx632_0_s
.Lx632_0_s:
                        .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n169_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 6112]
                        mov              rsi, qword ptr [rbp + 6120]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n170_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_integer_α:
                        mov              qword ptr [rbp + 6032], 6
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rbp + 6040], rax
                                                                                        jmp   n171_scan_tab_α
.Lx635_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n171_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx637_0
                        add              rax, r15
                        add              rax, 1
.Lx637_0:
                        cmp              rax, 1
                                                                                        jge   .Lx637_239
                        add              rsp, 16
                                                                                        jmp   n173_scan_α
.Lx637_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx637_240
                        add              rsp, 16
                                                                                        jmp   n173_scan_α
.Lx637_240:
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
                        mov              qword ptr [rbp + 6000], rax
                        mov              qword ptr [rbp + 6008], rdx
                                                                                        jmp   n172_lit_string_α
n171_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n173_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:
                        mov              qword ptr [rbp + 6048], 1
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rbp + 6056], rax
                                                                                        jmp   n174_lit_integer_α
.Lx638_0:
                        .quad            .Lx638_0_s
.Lx638_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n173_scan_α:
                        lea              rdi, [rbp + 5856]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 5856]
                        mov              r14, qword ptr [rbp + 5864]
                        mov              r15, qword ptr [rbp + 5872]
                                                                                        jmp   n175_lit_string_α
n173_scan_β:
                                                                                        jmp   n175_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:
                        mov              qword ptr [rbp + 6096], 6
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   n176_scan_tab_α
.Lx641_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:
                        mov              qword ptr [rbp + 5824], 1
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rbp + 5832], rax
                                                                                        jmp   n177_scan_enter_α
.Lx642_0:
                        .quad            .Lx642_0_s
.Lx642_0_s:
                        .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n176_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 2
                        cmp              rax, 1
                                                                                        jge   .Lx644_0
                        add              rax, r15
                        add              rax, 1
.Lx644_0:
                        cmp              rax, 1
                                                                                        jge   .Lx644_239
                        add              rsp, 16
                                                                                        jmp   n173_scan_α
.Lx644_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx644_240
                        add              rsp, 16
                                                                                        jmp   n173_scan_α
.Lx644_240:
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
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx
                                                                                        jmp   n178_call_builtin_icon_α
n176_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n173_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n177_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 5824]
                        mov              rsi, qword ptr [rbp + 5832]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n179_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n178_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6000]
                        mov              qword ptr [rbp + 5936], rax
                        mov              rax, qword ptr [rbp + 6008]
                        mov              qword ptr [rbp + 5944], rax
                        mov              rax, qword ptr [rbp + 6048]
                        mov              qword ptr [rbp + 5952], rax
                        mov              rax, qword ptr [rbp + 6056]
                        mov              qword ptr [rbp + 5960], rax
                        mov              rax, qword ptr [rbp + 6064]
                        mov              qword ptr [rbp + 5968], rax
                        mov              rax, qword ptr [rbp + 6072]
                        mov              qword ptr [rbp + 5976], rax
                        .section         .rodata
.Lrkfn648:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn648]
                        lea              rsi, [rbp + 5936]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                        cmp              eax, 99
                                                                                        je    n173_scan_α
                                                                                        jmp   n180_scan_α
n178_call_builtin_icon_β:
                                                                                        jmp   n173_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:
                        mov              qword ptr [rbp + 5808], 6
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rbp + 5816], rax
                                                                                        jmp   n181_scan_tab_α
.Lx649_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n180_scan_α:
                        mov              rax, qword ptr [rbp + 5920]
                        mov              qword ptr [rbp + 5888], rax
                        mov              rax, qword ptr [rbp + 5928]
                        mov              qword ptr [rbp + 5896], rax
                        lea              rdi, [rbp + 5856]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 5856]
                        mov              r14, qword ptr [rbp + 5864]
                        mov              r15, qword ptr [rbp + 5872]
                                                                                        jmp   n175_lit_string_α
n180_scan_β:
                                                                                        jmp   n175_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n181_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 2
                        cmp              rax, 1
                                                                                        jge   .Lx653_0
                        add              rax, r15
                        add              rax, 1
.Lx653_0:
                        cmp              rax, 1
                                                                                        jge   .Lx653_239
                        add              rsp, 16
                                                                                        jmp   n183_lit_integer_α
.Lx653_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx653_240
                        add              rsp, 16
                                                                                        jmp   n183_lit_integer_α
.Lx653_240:
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
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx
                                                                                        jmp   n182_call_builtin_icon_α
n181_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n183_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n182_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 5744], rax
                        mov              rax, qword ptr [rbp + 5784]
                        mov              qword ptr [rbp + 5752], rax
                        .section         .rodata
.Lrkfn655:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn655]
                        lea              rsi, [rbp + 5744]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5728], rax
                        mov              qword ptr [rbp + 5736], rdx
                        cmp              eax, 99
                                                                                        je    n183_lit_integer_α
                                                                                        jmp   n183_lit_integer_α
n182_call_builtin_icon_β:
                                                                                        jmp   n183_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_integer_α:
                        mov              qword ptr [rbp + 5712], 6
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rbp + 5720], rax
                                                                                        jmp   n184_scan_tab_α
.Lx656_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n184_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 4
                        cmp              rax, 1
                                                                                        jge   .Lx658_0
                        add              rax, r15
                        add              rax, 1
.Lx658_0:
                        cmp              rax, 1
                                                                                        jge   .Lx658_239
                        add              rsp, 16
                                                                                        jmp   n186_lit_integer_α
.Lx658_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx658_240
                        add              rsp, 16
                                                                                        jmp   n186_lit_integer_α
.Lx658_240:
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
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx
                                                                                        jmp   n185_call_builtin_icon_α
n184_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n186_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 5648], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 5656], rax
                        .section         .rodata
.Lrkfn660:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn660]
                        lea              rsi, [rbp + 5648]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5632], rax
                        mov              qword ptr [rbp + 5640], rdx
                        cmp              eax, 99
                                                                                        je    n186_lit_integer_α
                                                                                        jmp   n186_lit_integer_α
n185_call_builtin_icon_β:
                                                                                        jmp   n186_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:
                        mov              qword ptr [rbp + 5616], 6
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rbp + 5624], rax
                                                                                        jmp   n187_scan_tab_α
.Lx661_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n187_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, -1
                        cmp              rax, 1
                                                                                        jge   .Lx663_0
                        add              rax, r15
                        add              rax, 1
.Lx663_0:
                        cmp              rax, 1
                                                                                        jge   .Lx663_239
                        add              rsp, 16
                                                                                        jmp   n189_lit_integer_α
.Lx663_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx663_240
                        add              rsp, 16
                                                                                        jmp   n189_lit_integer_α
.Lx663_240:
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
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx
                                                                                        jmp   n188_call_builtin_icon_α
n187_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5584]
                        mov              qword ptr [rbp + 5552], rax
                        mov              rax, qword ptr [rbp + 5592]
                        mov              qword ptr [rbp + 5560], rax
                        .section         .rodata
.Lrkfn665:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn665]
                        lea              rsi, [rbp + 5552]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5536], rax
                        mov              qword ptr [rbp + 5544], rdx
                        cmp              eax, 99
                                                                                        je    n189_lit_integer_α
                                                                                        jmp   n189_lit_integer_α
n188_call_builtin_icon_β:
                                                                                        jmp   n189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:
                        mov              qword ptr [rbp + 5520], 6
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rbp + 5528], rax
                                                                                        jmp   n190_scan_tab_α
.Lx666_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n190_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx668_0
                        add              rax, r15
                        add              rax, 1
.Lx668_0:
                        cmp              rax, 1
                                                                                        jge   .Lx668_239
                        add              rsp, 16
                                                                                        jmp   n192_scan_α
.Lx668_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx668_240
                        add              rsp, 16
                                                                                        jmp   n192_scan_α
.Lx668_240:
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
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx
                                                                                        jmp   n191_call_builtin_icon_α
n190_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n192_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n191_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5488]
                        mov              qword ptr [rbp + 5456], rax
                        mov              rax, qword ptr [rbp + 5496]
                        mov              qword ptr [rbp + 5464], rax
                        .section         .rodata
.Lrkfn670:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn670]
                        lea              rsi, [rbp + 5456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5440], rax
                        mov              qword ptr [rbp + 5448], rdx
                        cmp              eax, 99
                                                                                        je    n192_scan_α
                                                                                        jmp   n193_conjunction_α
n191_call_builtin_icon_β:
                                                                                        jmp   n192_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n192_scan_α:
                        lea              rdi, [rbp + 5360]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 5360]
                        mov              r14, qword ptr [rbp + 5368]
                        mov              r15, qword ptr [rbp + 5376]
                                                                                        jmp   n194_lit_string_α
n192_scan_β:
                                                                                        jmp   n194_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n193_conjunction_α:
                        mov              rax, qword ptr [rbp + 5440]
                        mov              qword ptr [rbp + 5424], rax
                        mov              rax, qword ptr [rbp + 5448]
                        mov              qword ptr [rbp + 5432], rax
                                                                                        jmp   n195_scan_α
n193_conjunction_β:
                                                                                        jmp   n192_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:
                        mov              qword ptr [rbp + 5328], 1
                        mov              rax, qword ptr [rip + .Lx674_0]
                        mov              qword ptr [rbp + 5336], rax
                                                                                        jmp   n196_scan_enter_α
.Lx674_0:
                        .quad            .Lx674_0_s
.Lx674_0_s:
                        .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n195_scan_α:
                        mov              rax, qword ptr [rbp + 5424]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5432]
                        mov              qword ptr [rbp + 5400], rax
                        lea              rdi, [rbp + 5360]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 5360]
                        mov              r14, qword ptr [rbp + 5368]
                        mov              r15, qword ptr [rbp + 5376]
                                                                                        jmp   n194_lit_string_α
n195_scan_β:
                                                                                        jmp   n194_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n196_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 5328]
                        mov              rsi, qword ptr [rbp + 5336]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n197_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:
                        mov              qword ptr [rbp + 5312], 6
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rbp + 5320], rax
                                                                                        jmp   n198_scan_tab_α
.Lx679_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n198_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 4
                        cmp              rax, 1
                                                                                        jge   .Lx681_0
                        add              rax, r15
                        add              rax, 1
.Lx681_0:
                        cmp              rax, 1
                                                                                        jge   .Lx681_239
                        add              rsp, 16
                                                                                        jmp   n200_lit_integer_α
.Lx681_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx681_240
                        add              rsp, 16
                                                                                        jmp   n200_lit_integer_α
.Lx681_240:
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
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx
                                                                                        jmp   n199_call_builtin_icon_α
n198_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n200_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 5248], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 5256], rax
                        .section         .rodata
.Lrkfn683:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn683]
                        lea              rsi, [rbp + 5248]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5232], rax
                        mov              qword ptr [rbp + 5240], rdx
                        cmp              eax, 99
                                                                                        je    n200_lit_integer_α
                                                                                        jmp   n200_lit_integer_α
n199_call_builtin_icon_β:
                                                                                        jmp   n200_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:
                        mov              qword ptr [rbp + 5216], 6
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rbp + 5224], rax
                                                                                        jmp   n201_scan_tab_α
.Lx684_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n201_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx686_0
                        add              rax, r15
                        add              rax, 1
.Lx686_0:
                        cmp              rax, 1
                                                                                        jge   .Lx686_239
                        add              rsp, 16
                                                                                        jmp   n203_lit_integer_α
.Lx686_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx686_240
                        add              rsp, 16
                                                                                        jmp   n203_lit_integer_α
.Lx686_240:
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
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx
                                                                                        jmp   n202_call_builtin_icon_α
n201_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n203_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n202_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5184]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5192]
                        mov              qword ptr [rbp + 5160], rax
                        .section         .rodata
.Lrkfn688:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn688]
                        lea              rsi, [rbp + 5152]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5136], rax
                        mov              qword ptr [rbp + 5144], rdx
                        cmp              eax, 99
                                                                                        je    n203_lit_integer_α
                                                                                        jmp   n203_lit_integer_α
n202_call_builtin_icon_β:
                                                                                        jmp   n203_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:
                        mov              qword ptr [rbp + 5120], 6
                        mov              rax, qword ptr [rip + .Lx689_0]
                        mov              qword ptr [rbp + 5128], rax
                                                                                        jmp   n204_scan_tab_α
.Lx689_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n204_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 3
                        cmp              rax, 1
                                                                                        jge   .Lx691_0
                        add              rax, r15
                        add              rax, 1
.Lx691_0:
                        cmp              rax, 1
                                                                                        jge   .Lx691_239
                        add              rsp, 16
                                                                                        jmp   n206_scan_α
.Lx691_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx691_240
                        add              rsp, 16
                                                                                        jmp   n206_scan_α
.Lx691_240:
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
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx
                                                                                        jmp   n205_call_builtin_icon_α
n204_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n206_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5088]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 5096]
                        mov              qword ptr [rbp + 5064], rax
                        .section         .rodata
.Lrkfn693:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn693]
                        lea              rsi, [rbp + 5056]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                        cmp              eax, 99
                                                                                        je    n206_scan_α
                                                                                        jmp   n207_conjunction_α
n205_call_builtin_icon_β:
                                                                                        jmp   n206_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n206_scan_α:
                        lea              rdi, [rbp + 4960]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 4960]
                        mov              r14, qword ptr [rbp + 4968]
                        mov              r15, qword ptr [rbp + 4976]
                                                                                        jmp   n208_call_builtin_icon_α
n206_scan_β:
                                                                                        jmp   n208_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n207_conjunction_α:
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 5024], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 5032], rax
                                                                                        jmp   n209_scan_α
n207_conjunction_β:
                                                                                        jmp   n206_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn698:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn698]
                        lea              rsi, [rbp + 4928]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                        cmp              eax, 99
                                                                                        je    n210_lit_string_α
                                                                                        jmp   n210_lit_string_α
n208_call_builtin_icon_β:
                                                                                        jmp   n210_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n209_scan_α:
                        mov              rax, qword ptr [rbp + 5024]
                        mov              qword ptr [rbp + 4992], rax
                        mov              rax, qword ptr [rbp + 5032]
                        mov              qword ptr [rbp + 5000], rax
                        lea              rdi, [rbp + 4960]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 4960]
                        mov              r14, qword ptr [rbp + 4968]
                        mov              r15, qword ptr [rbp + 4976]
                                                                                        jmp   n208_call_builtin_icon_α
n209_scan_β:
                                                                                        jmp   n208_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:
                        mov              qword ptr [rbp + 4896], 1
                        mov              rax, qword ptr [rip + .Lx701_0]
                        mov              qword ptr [rbp + 4904], rax
                                                                                        jmp   n211_scan_enter_α
.Lx701_0:
                        .quad            .Lx701_0_s
.Lx701_0_s:
                        .string          "-35"
#-----------------------------------------------------------------------------------------------------------------------
n211_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 4896]
                        mov              rsi, qword ptr [rbp + 4904]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n212_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_charset_α:
                        mov              qword ptr [rbp + 4880], 1
                        mov              dword ptr [rbp + 4884], -1
                        mov              rax, qword ptr [rip + .Lx704_0]
                        mov              qword ptr [rbp + 4888], rax
                                                                                        jmp   n213_scan_bal_α
.Lx704_0:
                        .quad            .Lx704_0_s
.Lx704_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n213_scan_bal_α:
                        mov              qword ptr [rbp + 4864], r14
                        mov              qword ptr [rbp + 4872], 0
.Lx706_0:
                        mov              rax, qword ptr [rbp + 4864]
                        cmp              rax, r15
                                                                                        jge   n215_scan_α
                        mov              rdx, qword ptr [rbp + 4872]
                        cmp              rdx, 0
                                                                                        jne   .Lx706_1
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx706_4]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx706_1
                        mov              qword ptr [rbp + 4848], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 4856], rax
                                                                                        jmp   n214_scan_α
.Lx706_1:
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 40
                                                                                        jne   .Lx706_2
                        inc              qword ptr [rbp + 4872]
                                                                                        jmp   .Lx706_3
.Lx706_2:
                        cmp              rsi, 41
                                                                                        jne   .Lx706_3
                        mov              rdx, qword ptr [rbp + 4872]
                        sub              rdx, 1
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              rdx, 0
                                                                                        jl    n215_scan_α
.Lx706_3:
                        inc              qword ptr [rbp + 4864]
                                                                                        jmp   .Lx706_0
n213_scan_bal_β:
                        inc              qword ptr [rbp + 4864]
                                                                                        jmp   .Lx706_0
.Lx706_4:
                        .quad            .Lx706_4_s
.Lx706_4_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n214_scan_α:
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 4824], rax
                        lea              rdi, [rbp + 4784]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 4784]
                        mov              r14, qword ptr [rbp + 4792]
                        mov              r15, qword ptr [rbp + 4800]
                                                                                        jmp   n216_call_builtin_icon_α
n214_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n213_scan_bal_β
                                                                                        jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n215_scan_α:
                        lea              rdi, [rbp + 4784]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 4784]
                        mov              r14, qword ptr [rbp + 4792]
                        mov              r15, qword ptr [rbp + 4800]
                                                                                        jmp   n217_lit_string_α
n215_scan_β:
                                                                                        jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n216_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 4744], rax
                        .section         .rodata
.Lrkfn712:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn712]
                        lea              rsi, [rbp + 4736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx
                        cmp              eax, 99
                                                                                        je    n214_scan_β
                                                                                        jmp   n214_scan_β
n216_call_builtin_icon_β:
                                                                                        jmp   n214_scan_β
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        mov              qword ptr [rbp + 4704], 1
                        mov              rax, qword ptr [rip + .Lx713_0]
                        mov              qword ptr [rbp + 4712], rax
                                                                                        jmp   n218_scan_enter_α
.Lx713_0:
                        .quad            .Lx713_0_s
.Lx713_0_s:
                        .string          "((2*x)+3)+(5*y)"
#-----------------------------------------------------------------------------------------------------------------------
n218_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 4704]
                        mov              rsi, qword ptr [rbp + 4712]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n219_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_charset_α:
                        mov              qword ptr [rbp + 4688], 1
                        mov              dword ptr [rbp + 4692], -1
                        mov              rax, qword ptr [rip + .Lx716_0]
                        mov              qword ptr [rbp + 4696], rax
                                                                                        jmp   n220_scan_bal_α
.Lx716_0:
                        .quad            .Lx716_0_s
.Lx716_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n220_scan_bal_α:
                        mov              qword ptr [rbp + 4672], r14
                        mov              qword ptr [rbp + 4680], 0
.Lx718_0:
                        mov              rax, qword ptr [rbp + 4672]
                        cmp              rax, r15
                                                                                        jge   n222_scan_α
                        mov              rdx, qword ptr [rbp + 4680]
                        cmp              rdx, 0
                                                                                        jne   .Lx718_1
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx718_4]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx718_1
                        mov              qword ptr [rbp + 4656], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n221_scan_α
.Lx718_1:
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 40
                                                                                        jne   .Lx718_2
                        inc              qword ptr [rbp + 4680]
                                                                                        jmp   .Lx718_3
.Lx718_2:
                        cmp              rsi, 41
                                                                                        jne   .Lx718_3
                        mov              rdx, qword ptr [rbp + 4680]
                        sub              rdx, 1
                        mov              qword ptr [rbp + 4680], rdx
                        cmp              rdx, 0
                                                                                        jl    n222_scan_α
.Lx718_3:
                        inc              qword ptr [rbp + 4672]
                                                                                        jmp   .Lx718_0
n220_scan_bal_β:
                        inc              qword ptr [rbp + 4672]
                                                                                        jmp   .Lx718_0
.Lx718_4:
                        .quad            .Lx718_4_s
.Lx718_4_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n221_scan_α:
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4632], rax
                        lea              rdi, [rbp + 4592]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 4592]
                        mov              r14, qword ptr [rbp + 4600]
                        mov              r15, qword ptr [rbp + 4608]
                                                                                        jmp   n223_call_builtin_icon_α
n221_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n220_scan_bal_β
                                                                                        jmp   n224_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n222_scan_α:
                        lea              rdi, [rbp + 4592]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 4592]
                        mov              r14, qword ptr [rbp + 4600]
                        mov              r15, qword ptr [rbp + 4608]
                                                                                        jmp   n224_lit_string_α
n222_scan_β:
                                                                                        jmp   n224_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4552], rax
                        .section         .rodata
.Lrkfn724:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn724]
                        lea              rsi, [rbp + 4544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        cmp              eax, 99
                                                                                        je    n221_scan_β
                                                                                        jmp   n221_scan_β
n223_call_builtin_icon_β:
                                                                                        jmp   n221_scan_β
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:
                        mov              qword ptr [rbp + 4512], 1
                        mov              rax, qword ptr [rip + .Lx725_0]
                        mov              qword ptr [rbp + 4520], rax
                                                                                        jmp   n225_scan_enter_α
.Lx725_0:
                        .quad            .Lx725_0_s
.Lx725_0_s:
                        .string          "[+,[2,3]],[*,[5,10]]"
#-----------------------------------------------------------------------------------------------------------------------
n225_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 4512]
                        mov              rsi, qword ptr [rbp + 4520]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n226_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_charset_α:
                        mov              qword ptr [rbp + 4464], 1
                        mov              dword ptr [rbp + 4468], -1
                        mov              rax, qword ptr [rip + .Lx728_0]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n227_lit_charset_α
.Lx728_0:
                        .quad            .Lx728_0_s
.Lx728_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_charset_α:
                        mov              qword ptr [rbp + 4480], 1
                        mov              dword ptr [rbp + 4484], -1
                        mov              rax, qword ptr [rip + .Lx729_0]
                        mov              qword ptr [rbp + 4488], rax
                                                                                        jmp   n228_lit_charset_α
.Lx729_0:
                        .quad            .Lx729_0_s
.Lx729_0_s:
                        .string          "["
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_charset_α:
                        mov              qword ptr [rbp + 4496], 1
                        mov              dword ptr [rbp + 4500], -1
                        mov              rax, qword ptr [rip + .Lx730_0]
                        mov              qword ptr [rbp + 4504], rax
                                                                                        jmp   n229_call_builtin_icon_α
.Lx730_0:
                        .quad            .Lx730_0_s
.Lx730_0_s:
                        .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n229_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4408], rax
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 4424], rax
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4440], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn230:          .string          "bal"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn230]
                        lea              rsi, [rbp + 4400]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n231_scan_α
                                                                                        jmp   n230_scan_α
n229_call_builtin_icon_β:
                                                                                        jmp   n231_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n230_scan_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4360], rax
                        lea              rdi, [rbp + 4320]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 4320]
                        mov              r14, qword ptr [rbp + 4328]
                        mov              r15, qword ptr [rbp + 4336]
                                                                                        jmp   n232_call_builtin_icon_α
n230_scan_β:
                                                                                        jmp   n233_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n231_scan_α:
                        lea              rdi, [rbp + 4320]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 4320]
                        mov              r14, qword ptr [rbp + 4328]
                        mov              r15, qword ptr [rbp + 4336]
                                                                                        jmp   n233_call_builtin_icon_α
n231_scan_β:
                                                                                        jmp   n233_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4272], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4280], rax
                        .section         .rodata
.Lrkfn737:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn737]
                        lea              rsi, [rbp + 4272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        cmp              eax, 99
                                                                                        je    n233_call_builtin_icon_α
                                                                                        jmp   n233_call_builtin_icon_α
n232_call_builtin_icon_β:
                                                                                        jmp   n233_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n233_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn739:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn739]
                        lea              rsi, [rbp + 4240]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx
                        cmp              eax, 99
                                                                                        je    n234_lit_string_α
                                                                                        jmp   n234_lit_string_α
n233_call_builtin_icon_β:
                                                                                        jmp   n234_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:
                        mov              qword ptr [rbp + 4208], 1
                        mov              rax, qword ptr [rip + .Lx740_0]
                        mov              qword ptr [rbp + 4216], rax
                                                                                        jmp   n235_scan_enter_α
.Lx740_0:
                        .quad            .Lx740_0_s
.Lx740_0_s:
                        .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n235_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 4208]
                        mov              rsi, qword ptr [rbp + 4216]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n236_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:
                        mov              qword ptr [rbp + 4192], 6
                        mov              rax, qword ptr [rip + .Lx743_0]
                        mov              qword ptr [rbp + 4200], rax
                                                                                        jmp   n237_scan_pos_α
.Lx743_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n237_scan_pos_α:
                        mov              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx745_0
                        add              rax, r15
                        add              rax, 1
.Lx745_0:
                        cmp              rax, 1
                                                                                        jl    n239_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n239_lit_integer_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n239_lit_integer_α
                        mov              qword ptr [rbp + 4176], 6
                        mov              qword ptr [rbp + 4184], rax
                                                                                        jmp   n238_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4152], rax
                        .section         .rodata
.Lrkfn747:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn747]
                        lea              rsi, [rbp + 4144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                        cmp              eax, 99
                                                                                        je    n239_lit_integer_α
                                                                                        jmp   n239_lit_integer_α
n238_call_builtin_icon_β:
                                                                                        jmp   n239_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_integer_α:
                        mov              qword ptr [rbp + 4112], 6
                        mov              rax, qword ptr [rip + .Lx748_0]
                        mov              qword ptr [rbp + 4120], rax
                                                                                        jmp   n240_scan_pos_α
.Lx748_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n240_scan_pos_α:
                        mov              rax, -5
                        cmp              rax, 1
                                                                                        jge   .Lx750_0
                        add              rax, r15
                        add              rax, 1
.Lx750_0:
                        cmp              rax, 1
                                                                                        jl    n242_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n242_disjunction_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n242_disjunction_α
                        mov              qword ptr [rbp + 4096], 6
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n241_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n241_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 4072], rax
                        .section         .rodata
.Lrkfn752:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn752]
                        lea              rsi, [rbp + 4064]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                        cmp              eax, 99
                                                                                        je    n242_disjunction_α
                                                                                        jmp   n242_disjunction_α
n241_call_builtin_icon_β:
                                                                                        jmp   n242_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n242_disjunction_α:
                        mov              qword ptr [rbp + 3968], 0
                        mov              qword ptr [rbp + 3976], 0
                        mov              dword ptr [rbp + 3984], 0
                                                                                        jmp   n245_lit_integer_α
n242_disjunction_as:
                        mov              eax, dword ptr [rbp + 3984]
                        cmp              eax, 0
                                                                                        jne   .Lx754_0
                        mov              rax, qword ptr [rbp + 4000]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n243_call_builtin_icon_α
.Lx754_0:
                        cmp              eax, 1
                                                                                        jne   .Lx754_1
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n243_call_builtin_icon_α
.Lx754_1:
                                                                                        jmp   n243_call_builtin_icon_α
n242_disjunction_β:
                        mov              eax, dword ptr [rbp + 3984]
                        cmp              eax, 0
                                                                                        je    n242_disjunction_af
                                                                                        jmp   n242_disjunction_af
n242_disjunction_af:
                        add              dword ptr [rbp + 3984], 1
                        mov              eax, dword ptr [rbp + 3984]
                        cmp              eax, 1
                                                                                        je    n246_lit_string_α
                                                                                        jmp   n244_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n243_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3944], rax
                        .section         .rodata
.Lrkfn756:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn756]
                        lea              rsi, [rbp + 3936]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                        cmp              eax, 99
                                                                                        je    n242_disjunction_β
                                                                                        jmp   n248_conjunction_α
n243_call_builtin_icon_β:
                                                                                        jmp   n242_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n244_scan_α:
                        lea              rdi, [rbp + 3840]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3840]
                        mov              r14, qword ptr [rbp + 3848]
                        mov              r15, qword ptr [rbp + 3856]
                                                                                        jmp   n249_call_builtin_icon_α
n244_scan_β:
                                                                                        jmp   n249_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_integer_α:
                        mov              qword ptr [rbp + 4016], 6
                        mov              rax, qword ptr [rip + .Lx759_0]
                        mov              qword ptr [rbp + 4024], rax
                                                                                        jmp   n247_scan_pos_α
n245_lit_integer_β:
                                                                                        jmp   n242_disjunction_af
.Lx759_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:
                        mov              qword ptr [rbp + 4032], 1
                        mov              rax, qword ptr [rip + .Lx760_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n242_disjunction_as
n246_lit_string_β:
                                                                                        jmp   n242_disjunction_af
.Lx760_0:
                        .quad            .Lx760_0_s
.Lx760_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n247_scan_pos_α:
                        mov              rax, 3
                        cmp              rax, 1
                                                                                        jge   .Lx762_0
                        add              rax, r15
                        add              rax, 1
.Lx762_0:
                        cmp              rax, 1
                                                                                        jl    n242_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n242_disjunction_af
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n242_disjunction_af
                        mov              qword ptr [rbp + 4000], 6
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   n242_disjunction_as
n247_scan_pos_β:
                                                                                        jmp   n242_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n248_conjunction_α:
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3912], rax
                                                                                        jmp   n250_scan_α
n248_conjunction_β:
                                                                                        jmp   n244_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n249_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn765:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn765]
                        lea              rsi, [rbp + 3808]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              eax, 99
                                                                                        je    n251_lit_string_α
                                                                                        jmp   n251_lit_string_α
n249_call_builtin_icon_β:
                                                                                        jmp   n251_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n250_scan_α:
                        mov              rax, qword ptr [rbp + 3904]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 3880], rax
                        lea              rdi, [rbp + 3840]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3840]
                        mov              r14, qword ptr [rbp + 3848]
                        mov              r15, qword ptr [rbp + 3856]
                                                                                        jmp   n249_call_builtin_icon_α
n250_scan_β:
                                                                                        jmp   n249_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:
                        mov              qword ptr [rbp + 3776], 1
                        mov              rax, qword ptr [rip + .Lx768_0]
                        mov              qword ptr [rbp + 3784], rax
                                                                                        jmp   n252_scan_enter_α
.Lx768_0:
                        .quad            .Lx768_0_s
.Lx768_0_s:
                        .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n252_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 3776]
                        mov              rsi, qword ptr [rbp + 3784]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n253_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n253_disjunction_α:
                        mov              qword ptr [rbp + 3648], 0
                        mov              qword ptr [rbp + 3656], 0
                        mov              dword ptr [rbp + 3664], 0
                                                                                        jmp   n256_lit_string_α
n253_disjunction_as:
                        mov              eax, dword ptr [rbp + 3664]
                        cmp              eax, 0
                                                                                        jne   .Lx772_0
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   n254_call_builtin_icon_α
.Lx772_0:
                        cmp              eax, 1
                                                                                        jne   .Lx772_1
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   n254_call_builtin_icon_α
.Lx772_1:
                                                                                        jmp   n254_call_builtin_icon_α
n253_disjunction_β:
                        mov              eax, dword ptr [rbp + 3664]
                        cmp              eax, 0
                                                                                        je    n253_disjunction_af
                                                                                        jmp   n253_disjunction_af
n253_disjunction_af:
                        add              dword ptr [rbp + 3664], 1
                        mov              eax, dword ptr [rbp + 3664]
                        cmp              eax, 1
                                                                                        je    n257_lit_string_α
                                                                                        jmp   n255_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n254_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3624], rax
                        .section         .rodata
.Lrkfn774:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn774]
                        lea              rsi, [rbp + 3616]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              eax, 99
                                                                                        je    n253_disjunction_β
                                                                                        jmp   n259_scan_α
n254_call_builtin_icon_β:
                                                                                        jmp   n253_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n255_scan_α:
                        lea              rdi, [rbp + 3536]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3536]
                        mov              r14, qword ptr [rbp + 3544]
                        mov              r15, qword ptr [rbp + 3552]
                                                                                        jmp   n260_lit_string_α
n255_scan_β:
                                                                                        jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:
                        mov              qword ptr [rbp + 3744], 1
                        mov              rax, qword ptr [rip + .Lx777_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n261_scan_match_α
n256_lit_string_β:
                                                                                        jmp   n253_disjunction_af
.Lx777_0:
                        .quad            .Lx777_0_s
.Lx777_0_s:
                        .string          "123"
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:
                        mov              qword ptr [rbp + 3760], 1
                        mov              rax, qword ptr [rip + .Lx778_0]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n253_disjunction_as
n257_lit_string_β:
                                                                                        jmp   n253_disjunction_af
.Lx778_0:
                        .quad            .Lx778_0_s
.Lx778_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n258_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 3720]
                        cmp              rax, 1
                                                                                        jge   .Lx780_0
                        add              rax, r15
                        add              rax, 1
.Lx780_0:
                        cmp              rax, 1
                                                                                        jge   .Lx780_239
                        add              rsp, 16
                                                                                        jmp   n253_disjunction_af
.Lx780_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx780_240
                        add              rsp, 16
                                                                                        jmp   n253_disjunction_af
.Lx780_240:
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
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                                                                                        jmp   n253_disjunction_as
n258_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n253_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n259_scan_α:
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3576], rax
                        lea              rdi, [rbp + 3536]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3536]
                        mov              r14, qword ptr [rbp + 3544]
                        mov              r15, qword ptr [rbp + 3552]
                                                                                        jmp   n260_lit_string_α
n259_scan_β:
                                                                                        jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:
                        mov              qword ptr [rbp + 3504], 1
                        mov              rax, qword ptr [rip + .Lx783_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n262_scan_enter_α
.Lx783_0:
                        .quad            .Lx783_0_s
.Lx783_0_s:
                        .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n261_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 3
                                                                                        jge   .Lx785_239
                        add              rsp, 16
                                                                                        jmp   n253_disjunction_af
.Lx785_239:
                        mov              rdi, qword ptr [rip + .Lx785_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 3
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx785_240
                        add              rsp, 16
                                                                                        jmp   n253_disjunction_af
.Lx785_240:
                        mov              qword ptr [rbp + 3712], 6
                        mov              rax, r14
                        add              rax, 4
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n258_scan_tab_α
.Lx785_0:
                        .quad            .Lx785_0_s
.Lx785_0_s:
                        .string          "123"
#-----------------------------------------------------------------------------------------------------------------------
n262_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 3504]
                        mov              rsi, qword ptr [rbp + 3512]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n263_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_integer_α:
                        mov              qword ptr [rbp + 3488], 6
                        mov              rax, qword ptr [rip + .Lx788_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n264_scan_tab_α
.Lx788_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n264_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 2
                        cmp              rax, 1
                                                                                        jge   .Lx790_0
                        add              rax, r15
                        add              rax, 1
.Lx790_0:
                        cmp              rax, 1
                                                                                        jge   .Lx790_239
                        add              rsp, 16
                                                                                        jmp   n265_disjunction_α
.Lx790_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx790_240
                        add              rsp, 16
                                                                                        jmp   n265_disjunction_α
.Lx790_240:
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
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n265_disjunction_α
n264_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n265_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n265_disjunction_α:
                        mov              qword ptr [rbp + 3328], 0
                        mov              qword ptr [rbp + 3336], 0
                        mov              dword ptr [rbp + 3344], 0
                                                                                        jmp   n268_lit_string_α
n265_disjunction_as:
                        mov              eax, dword ptr [rbp + 3344]
                        cmp              eax, 0
                                                                                        jne   .Lx792_0
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n266_call_builtin_icon_α
.Lx792_0:
                        cmp              eax, 1
                                                                                        jne   .Lx792_1
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n266_call_builtin_icon_α
.Lx792_1:
                                                                                        jmp   n266_call_builtin_icon_α
n265_disjunction_β:
                        mov              eax, dword ptr [rbp + 3344]
                        cmp              eax, 0
                                                                                        je    n265_disjunction_af
                                                                                        jmp   n265_disjunction_af
n265_disjunction_af:
                        add              dword ptr [rbp + 3344], 1
                        mov              eax, dword ptr [rbp + 3344]
                        cmp              eax, 1
                                                                                        je    n269_lit_string_α
                                                                                        jmp   n267_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n266_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3304], rax
                        .section         .rodata
.Lrkfn794:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn794]
                        lea              rsi, [rbp + 3296]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        cmp              eax, 99
                                                                                        je    n265_disjunction_β
                                                                                        jmp   n271_conjunction_α
n266_call_builtin_icon_β:
                                                                                        jmp   n265_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n267_scan_α:
                        lea              rdi, [rbp + 3200]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3200]
                        mov              r14, qword ptr [rbp + 3208]
                        mov              r15, qword ptr [rbp + 3216]
                                                                                        jmp   n272_lit_string_α
n267_scan_β:
                                                                                        jmp   n272_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:
                        mov              qword ptr [rbp + 3424], 1
                        mov              rax, qword ptr [rip + .Lx797_0]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n273_scan_match_α
n268_lit_string_β:
                                                                                        jmp   n265_disjunction_af
.Lx797_0:
                        .quad            .Lx797_0_s
.Lx797_0_s:
                        .string          "123"
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:
                        mov              qword ptr [rbp + 3440], 1
                        mov              rax, qword ptr [rip + .Lx798_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n265_disjunction_as
n269_lit_string_β:
                                                                                        jmp   n265_disjunction_af
.Lx798_0:
                        .quad            .Lx798_0_s
.Lx798_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n270_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 3400]
                        cmp              rax, 1
                                                                                        jge   .Lx800_0
                        add              rax, r15
                        add              rax, 1
.Lx800_0:
                        cmp              rax, 1
                                                                                        jge   .Lx800_239
                        add              rsp, 16
                                                                                        jmp   n265_disjunction_af
.Lx800_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx800_240
                        add              rsp, 16
                                                                                        jmp   n265_disjunction_af
.Lx800_240:
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
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   n265_disjunction_as
n270_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n265_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n271_conjunction_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3272], rax
                                                                                        jmp   n274_scan_α
n271_conjunction_β:
                                                                                        jmp   n267_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_string_α:
                        mov              qword ptr [rbp + 3168], 1
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n275_scan_enter_α
.Lx802_0:
                        .quad            .Lx802_0_s
.Lx802_0_s:
                        .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n273_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 3
                                                                                        jge   .Lx804_239
                        add              rsp, 16
                                                                                        jmp   n265_disjunction_af
.Lx804_239:
                        mov              rdi, qword ptr [rip + .Lx804_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 3
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx804_240
                        add              rsp, 16
                                                                                        jmp   n265_disjunction_af
.Lx804_240:
                        mov              qword ptr [rbp + 3392], 6
                        mov              rax, r14
                        add              rax, 4
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n270_scan_tab_α
.Lx804_0:
                        .quad            .Lx804_0_s
.Lx804_0_s:
                        .string          "123"
#-----------------------------------------------------------------------------------------------------------------------
n274_scan_α:
                        mov              rax, qword ptr [rbp + 3264]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 3240], rax
                        lea              rdi, [rbp + 3200]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3200]
                        mov              r14, qword ptr [rbp + 3208]
                        mov              r15, qword ptr [rbp + 3216]
                                                                                        jmp   n272_lit_string_α
n274_scan_β:
                                                                                        jmp   n272_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n275_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 3168]
                        mov              rsi, qword ptr [rbp + 3176]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n276_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_integer_α:
                        mov              qword ptr [rbp + 3152], 6
                        mov              rax, qword ptr [rip + .Lx809_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n277_scan_tab_α
.Lx809_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n277_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 2
                        cmp              rax, 1
                                                                                        jge   .Lx811_0
                        add              rax, r15
                        add              rax, 1
.Lx811_0:
                        cmp              rax, 1
                                                                                        jge   .Lx811_239
                        add              rsp, 16
                                                                                        jmp   n278_disjunction_α
.Lx811_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx811_240
                        add              rsp, 16
                                                                                        jmp   n278_disjunction_α
.Lx811_240:
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
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   n278_disjunction_α
n277_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n278_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n278_disjunction_α:
                        mov              qword ptr [rbp + 2992], 0
                        mov              qword ptr [rbp + 3000], 0
                        mov              dword ptr [rbp + 3008], 0
                                                                                        jmp   n281_lit_string_α
n278_disjunction_as:
                        mov              eax, dword ptr [rbp + 3008]
                        cmp              eax, 0
                                                                                        jne   .Lx813_0
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n279_call_builtin_icon_α
.Lx813_0:
                        cmp              eax, 1
                                                                                        jne   .Lx813_1
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n279_call_builtin_icon_α
.Lx813_1:
                                                                                        jmp   n279_call_builtin_icon_α
n278_disjunction_β:
                        mov              eax, dword ptr [rbp + 3008]
                        cmp              eax, 0
                                                                                        je    n278_disjunction_af
                                                                                        jmp   n278_disjunction_af
n278_disjunction_af:
                        add              dword ptr [rbp + 3008], 1
                        mov              eax, dword ptr [rbp + 3008]
                        cmp              eax, 1
                                                                                        je    n282_lit_string_α
                                                                                        jmp   n280_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n279_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2968], rax
                        .section         .rodata
.Lrkfn815:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn815]
                        lea              rsi, [rbp + 2960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n278_disjunction_β
                                                                                        jmp   n284_conjunction_α
n279_call_builtin_icon_β:
                                                                                        jmp   n278_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n280_scan_α:
                        lea              rdi, [rbp + 2864]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2864]
                        mov              r14, qword ptr [rbp + 2872]
                        mov              r15, qword ptr [rbp + 2880]
                                                                                        jmp   n285_call_builtin_icon_α
n280_scan_β:
                                                                                        jmp   n285_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:
                        mov              qword ptr [rbp + 3088], 1
                        mov              rax, qword ptr [rip + .Lx818_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n286_scan_match_α
n281_lit_string_β:
                                                                                        jmp   n278_disjunction_af
.Lx818_0:
                        .quad            .Lx818_0_s
.Lx818_0_s:
                        .string          "23"
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              rax, qword ptr [rip + .Lx819_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n278_disjunction_as
n282_lit_string_β:
                                                                                        jmp   n278_disjunction_af
.Lx819_0:
                        .quad            .Lx819_0_s
.Lx819_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n283_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 3064]
                        cmp              rax, 1
                                                                                        jge   .Lx821_0
                        add              rax, r15
                        add              rax, 1
.Lx821_0:
                        cmp              rax, 1
                                                                                        jge   .Lx821_239
                        add              rsp, 16
                                                                                        jmp   n278_disjunction_af
.Lx821_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx821_240
                        add              rsp, 16
                                                                                        jmp   n278_disjunction_af
.Lx821_240:
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
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                                                                                        jmp   n278_disjunction_as
n283_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n278_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n284_conjunction_α:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n287_scan_α
n284_conjunction_β:
                                                                                        jmp   n280_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n285_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn824:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn824]
                        lea              rsi, [rbp + 2832]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              eax, 99
                                                                                        je    n288_lit_charset_α
                                                                                        jmp   n288_lit_charset_α
n285_call_builtin_icon_β:
                                                                                        jmp   n288_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n286_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 2
                                                                                        jge   .Lx826_239
                        add              rsp, 16
                                                                                        jmp   n278_disjunction_af
.Lx826_239:
                        mov              rdi, qword ptr [rip + .Lx826_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 2
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx826_240
                        add              rsp, 16
                                                                                        jmp   n278_disjunction_af
.Lx826_240:
                        mov              qword ptr [rbp + 3056], 6
                        mov              rax, r14
                        add              rax, 3
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n283_scan_tab_α
.Lx826_0:
                        .quad            .Lx826_0_s
.Lx826_0_s:
                        .string          "23"
#-----------------------------------------------------------------------------------------------------------------------
n287_scan_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2904], rax
                        lea              rdi, [rbp + 2864]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2864]
                        mov              r14, qword ptr [rbp + 2872]
                        mov              r15, qword ptr [rbp + 2880]
                                                                                        jmp   n285_call_builtin_icon_α
n287_scan_β:
                                                                                        jmp   n285_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_charset_α:
                        mov              qword ptr [rbp + 2800], 1
                        mov              dword ptr [rbp + 2804], -1
                        mov              rax, qword ptr [rip + .Lx829_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n289_assign_α
.Lx829_0:
                        .quad            .Lx829_0_s
.Lx829_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:
                        mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 11088], rax
                        mov              qword ptr [rbp + 11096], rdx
                                                                                        jmp   n290_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_charset_α:
                        mov              qword ptr [rbp + 2784], 1
                        mov              dword ptr [rbp + 2788], -1
                        mov              rax, qword ptr [rip + .Lx831_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n291_assign_α
.Lx831_0:
                        .quad            .Lx831_0_s
.Lx831_0_s:
                        .string          "AEIOUaeiou"
#-----------------------------------------------------------------------------------------------------------------------
n291_assign_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              rdx, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 11120], rax
                        mov              qword ptr [rbp + 11128], rdx
                                                                                        jmp   n292_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n292_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx833_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n296_keyword_icon_α
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n293_keyword_icon_α
n292_keyword_icon_β:
                                                                                        jmp   n296_keyword_icon_α
.Lx833_0:
                        .quad            .Lx833_0_s
.Lx833_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n293_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx834_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n296_keyword_icon_α
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n294_binop_α
n293_keyword_icon_β:
                                                                                        jmp   n296_keyword_icon_α
.Lx834_0:
                        .quad            .Lx834_0_s
.Lx834_0_s:
                        .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n294_binop_α:
                        mov              rdi, qword ptr [rbp + 2720]
                        mov              rsi, qword ptr [rbp + 2728]
                        mov              rdx, qword ptr [rbp + 2752]
                        mov              rcx, qword ptr [rbp + 2760]
                        call             rt_cdiff@PLT
                        cmp              eax, 99
                                                                                        je    n296_keyword_icon_α
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n295_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n295_assign_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              rdx, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 11104], rax
                        mov              qword ptr [rbp + 11112], rdx
                                                                                        jmp   n296_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n296_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx837_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n313_var_α
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n297_scan_enter_α
n296_keyword_icon_β:
                                                                                        jmp   n313_var_α
.Lx837_0:
                        .quad            .Lx837_0_s
.Lx837_0_s:
                        .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n297_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2656]
                        mov              rsi, qword ptr [rbp + 2664]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n298_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              rax, qword ptr [rip + .Lx840_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n299_disjunction_α
.Lx840_0:
                        .quad            .Lx840_0_s
.Lx840_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n299_disjunction_α:
                        mov              qword ptr [rbp + 2544], 0
                        mov              qword ptr [rbp + 2552], 0
                        mov              dword ptr [rbp + 2560], 0
                                                                                        jmp   n302_lit_string_α
n299_disjunction_as:
                        mov              eax, dword ptr [rbp + 2560]
                        cmp              eax, 0
                                                                                        jne   .Lx842_0
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n300_call_builtin_icon_α
.Lx842_0:
                        cmp              eax, 1
                                                                                        jne   .Lx842_1
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n300_call_builtin_icon_α
.Lx842_1:
                        cmp              eax, 2
                                                                                        jne   .Lx842_2
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n300_call_builtin_icon_α
.Lx842_2:
                                                                                        jmp   n300_call_builtin_icon_α
n299_disjunction_β:
                        mov              eax, dword ptr [rbp + 2560]
                        cmp              eax, 0
                                                                                        je    n299_disjunction_af
                        cmp              eax, 1
                                                                                        je    n304_scan_upto_β
                                                                                        jmp   n299_disjunction_af
n299_disjunction_af:
                        add              dword ptr [rbp + 2560], 1
                        mov              eax, dword ptr [rbp + 2560]
                        cmp              eax, 1
                                                                                        je    n303_var_α
                        cmp              eax, 2
                                                                                        je    n305_lit_string_α
                                                                                        jmp   n301_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n300_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2488], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2504], rax
                        .section         .rodata
.Lrkfn844:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn844]
                        lea              rsi, [rbp + 2480]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 99
                                                                                        je    n299_disjunction_β
                                                                                        jmp   n299_disjunction_β
n300_call_builtin_icon_β:
                                                                                        jmp   n299_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_string_α:
                        mov              qword ptr [rbp + 2336], 1
                        mov              rax, qword ptr [rip + .Lx845_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n306_disjunction_α
.Lx845_0:
                        .quad            .Lx845_0_s
.Lx845_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:
                        mov              qword ptr [rbp + 2576], 1
                        mov              rax, qword ptr [rip + .Lx846_0]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n299_disjunction_as
n302_lit_string_β:
                                                                                        jmp   n299_disjunction_af
.Lx846_0:
                        .quad            .Lx846_0_s
.Lx846_0_s:
                        .string          "ascii?skips"
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:
                        mov              rax, qword ptr [rbp + 11088]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 11096]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n304_scan_upto_α
n303_var_β:
                                                                                        jmp   n299_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n304_scan_upto_α:
                        mov              qword ptr [rbp + 2608], r14
.Lx850_0:
                        mov              rax, qword ptr [rbp + 2608]
                        cmp              rax, r15
                                                                                        jge   n299_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 2632]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx850_1
                        mov              qword ptr [rbp + 2592], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n299_disjunction_as
.Lx850_1:
                        inc              qword ptr [rbp + 2608]
                                                                                        jmp   .Lx850_0
n304_scan_upto_β:
                        inc              qword ptr [rbp + 2608]
                                                                                        jmp   .Lx850_0
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:
                        mov              qword ptr [rbp + 2640], 1
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n299_disjunction_as
n305_lit_string_β:
                                                                                        jmp   n299_disjunction_af
.Lx851_0:
                        .quad            .Lx851_0_s
.Lx851_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n306_disjunction_α:
                        mov              qword ptr [rbp + 2352], 0
                        mov              qword ptr [rbp + 2360], 0
                        mov              dword ptr [rbp + 2368], 0
                                                                                        jmp   n309_lit_string_α
n306_disjunction_as:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 0
                                                                                        jne   .Lx853_0
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n307_call_builtin_icon_α
.Lx853_0:
                        cmp              eax, 1
                                                                                        jne   .Lx853_1
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n307_call_builtin_icon_α
.Lx853_1:
                        cmp              eax, 2
                                                                                        jne   .Lx853_2
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n307_call_builtin_icon_α
.Lx853_2:
                                                                                        jmp   n307_call_builtin_icon_α
n306_disjunction_β:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 0
                                                                                        je    n306_disjunction_af
                        cmp              eax, 1
                                                                                        je    n311_scan_upto_β
                                                                                        jmp   n306_disjunction_af
n306_disjunction_af:
                        add              dword ptr [rbp + 2368], 1
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 1
                                                                                        je    n310_var_α
                        cmp              eax, 2
                                                                                        je    n312_lit_string_α
                                                                                        jmp   n308_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n307_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2296], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2312], rax
                        .section         .rodata
.Lrkfn855:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn855]
                        lea              rsi, [rbp + 2288]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n306_disjunction_β
                                                                                        jmp   n306_disjunction_β
n307_call_builtin_icon_β:
                                                                                        jmp   n306_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n308_scan_α:
                        lea              rdi, [rbp + 2224]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2224]
                        mov              r14, qword ptr [rbp + 2232]
                        mov              r15, qword ptr [rbp + 2240]
                                                                                        jmp   n313_var_α
n308_scan_β:
                                                                                        jmp   n313_var_α
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_string_α:
                        mov              qword ptr [rbp + 2384], 1
                        mov              rax, qword ptr [rip + .Lx858_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n306_disjunction_as
n309_lit_string_β:
                                                                                        jmp   n306_disjunction_af
.Lx858_0:
                        .quad            .Lx858_0_s
.Lx858_0_s:
                        .string          "ascii?vowls"
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:
                        mov              rax, qword ptr [rbp + 11120]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 11128]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n311_scan_upto_α
n310_var_β:
                                                                                        jmp   n306_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n311_scan_upto_α:
                        mov              qword ptr [rbp + 2416], r14
.Lx862_0:
                        mov              rax, qword ptr [rbp + 2416]
                        cmp              rax, r15
                                                                                        jge   n306_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 2440]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx862_1
                        mov              qword ptr [rbp + 2400], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n306_disjunction_as
.Lx862_1:
                        inc              qword ptr [rbp + 2416]
                                                                                        jmp   .Lx862_0
n311_scan_upto_β:
                        inc              qword ptr [rbp + 2416]
                                                                                        jmp   .Lx862_0
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:
                        mov              qword ptr [rbp + 2448], 1
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n306_disjunction_as
n312_lit_string_β:
                                                                                        jmp   n306_disjunction_af
.Lx863_0:
                        .quad            .Lx863_0_s
.Lx863_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:
                        mov              rax, qword ptr [rbp + 11120]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 11128]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n314_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n314_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2192]
                        mov              rsi, qword ptr [rbp + 2200]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n316_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:
                        mov              rax, qword ptr [rbp + 11088]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 11096]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n317_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx870_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n319_disjunction_α
.Lx870_0:
                        .quad            .Lx870_0_s
.Lx870_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n317_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n320_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:
                        mov              rax, qword ptr [rbp + 11104]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 11112]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n321_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n319_disjunction_α:
                        mov              qword ptr [rbp + 2080], 0
                        mov              qword ptr [rbp + 2088], 0
                        mov              dword ptr [rbp + 2096], 0
                                                                                        jmp   n324_lit_string_α
n319_disjunction_as:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 0
                                                                                        jne   .Lx876_0
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n322_call_builtin_icon_α
.Lx876_0:
                        cmp              eax, 1
                                                                                        jne   .Lx876_1
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n322_call_builtin_icon_α
.Lx876_1:
                        cmp              eax, 2
                                                                                        jne   .Lx876_2
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n322_call_builtin_icon_α
.Lx876_2:
                                                                                        jmp   n322_call_builtin_icon_α
n319_disjunction_β:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 0
                                                                                        je    n319_disjunction_af
                        cmp              eax, 1
                                                                                        je    n326_scan_upto_β
                                                                                        jmp   n319_disjunction_af
n319_disjunction_af:
                        add              dword ptr [rbp + 2096], 1
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 1
                                                                                        je    n325_var_α
                        cmp              eax, 2
                                                                                        je    n327_lit_string_α
                                                                                        jmp   n323_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx877_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n328_disjunction_α
.Lx877_0:
                        .quad            .Lx877_0_s
.Lx877_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n321_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n329_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n322_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2040], rax
                        .section         .rodata
.Lrkfn881:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn881]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n319_disjunction_β
                                                                                        jmp   n319_disjunction_β
n322_call_builtin_icon_β:
                                                                                        jmp   n319_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:
                        mov              qword ptr [rbp + 1872], 1
                        mov              rax, qword ptr [rip + .Lx882_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n330_disjunction_α
.Lx882_0:
                        .quad            .Lx882_0_s
.Lx882_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:
                        mov              qword ptr [rbp + 2112], 1
                        mov              rax, qword ptr [rip + .Lx883_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n319_disjunction_as
n324_lit_string_β:
                                                                                        jmp   n319_disjunction_af
.Lx883_0:
                        .quad            .Lx883_0_s
.Lx883_0_s:
                        .string          "vowls?skips"
#-----------------------------------------------------------------------------------------------------------------------
n325_var_α:
                        mov              rax, qword ptr [rbp + 11088]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 11096]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n326_scan_upto_α
n325_var_β:
                                                                                        jmp   n319_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n326_scan_upto_α:
                        mov              qword ptr [rbp + 2144], r14
.Lx887_0:
                        mov              rax, qword ptr [rbp + 2144]
                        cmp              rax, r15
                                                                                        jge   n319_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 2168]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx887_1
                        mov              qword ptr [rbp + 2128], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n319_disjunction_as
.Lx887_1:
                        inc              qword ptr [rbp + 2144]
                                                                                        jmp   .Lx887_0
n326_scan_upto_β:
                        inc              qword ptr [rbp + 2144]
                                                                                        jmp   .Lx887_0
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx888_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n319_disjunction_as
n327_lit_string_β:
                                                                                        jmp   n319_disjunction_af
.Lx888_0:
                        .quad            .Lx888_0_s
.Lx888_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n328_disjunction_α:
                        mov              qword ptr [rbp + 1408], 0
                        mov              qword ptr [rbp + 1416], 0
                        mov              dword ptr [rbp + 1424], 0
                                                                                        jmp   n333_lit_string_α
n328_disjunction_as:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 0
                                                                                        jne   .Lx890_0
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n331_call_builtin_icon_α
.Lx890_0:
                        cmp              eax, 1
                                                                                        jne   .Lx890_1
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n331_call_builtin_icon_α
.Lx890_1:
                        cmp              eax, 2
                                                                                        jne   .Lx890_2
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n331_call_builtin_icon_α
.Lx890_2:
                                                                                        jmp   n331_call_builtin_icon_α
n328_disjunction_β:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 0
                                                                                        je    n328_disjunction_af
                        cmp              eax, 1
                                                                                        je    n335_scan_upto_β
                                                                                        jmp   n328_disjunction_af
n328_disjunction_af:
                        add              dword ptr [rbp + 1424], 1
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 1
                                                                                        je    n334_var_α
                        cmp              eax, 2
                                                                                        je    n336_lit_string_α
                                                                                        jmp   n332_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx891_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n337_disjunction_α
.Lx891_0:
                        .quad            .Lx891_0_s
.Lx891_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n330_disjunction_α:
                        mov              qword ptr [rbp + 1888], 0
                        mov              qword ptr [rbp + 1896], 0
                        mov              dword ptr [rbp + 1904], 0
                                                                                        jmp   n340_lit_string_α
n330_disjunction_as:
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              eax, 0
                                                                                        jne   .Lx893_0
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n338_call_builtin_icon_α
.Lx893_0:
                        cmp              eax, 1
                                                                                        jne   .Lx893_1
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n338_call_builtin_icon_α
.Lx893_1:
                        cmp              eax, 2
                                                                                        jne   .Lx893_2
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n338_call_builtin_icon_α
.Lx893_2:
                                                                                        jmp   n338_call_builtin_icon_α
n330_disjunction_β:
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              eax, 0
                                                                                        je    n330_disjunction_af
                        cmp              eax, 1
                                                                                        je    n342_scan_upto_β
                                                                                        jmp   n330_disjunction_af
n330_disjunction_af:
                        add              dword ptr [rbp + 1904], 1
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              eax, 1
                                                                                        je    n341_lit_charset_α
                        cmp              eax, 2
                                                                                        je    n343_lit_string_α
                                                                                        jmp   n339_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n331_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lrkfn895:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn895]
                        lea              rsi, [rbp + 1344]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n328_disjunction_β
                                                                                        jmp   n328_disjunction_β
n331_call_builtin_icon_β:
                                                                                        jmp   n328_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx896_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n344_disjunction_α
.Lx896_0:
                        .quad            .Lx896_0_s
.Lx896_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx897_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n328_disjunction_as
n333_lit_string_β:
                                                                                        jmp   n328_disjunction_af
.Lx897_0:
                        .quad            .Lx897_0_s
.Lx897_0_s:
                        .string          "skips?vowls"
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:
                        mov              rax, qword ptr [rbp + 11120]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 11128]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n335_scan_upto_α
n334_var_β:
                                                                                        jmp   n328_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n335_scan_upto_α:
                        mov              qword ptr [rbp + 1472], r14
.Lx901_0:
                        mov              rax, qword ptr [rbp + 1472]
                        cmp              rax, r15
                                                                                        jge   n328_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 1496]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx901_1
                        mov              qword ptr [rbp + 1456], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n328_disjunction_as
.Lx901_1:
                        inc              qword ptr [rbp + 1472]
                                                                                        jmp   .Lx901_0
n335_scan_upto_β:
                        inc              qword ptr [rbp + 1472]
                                                                                        jmp   .Lx901_0
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx902_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n328_disjunction_as
n336_lit_string_β:
                                                                                        jmp   n328_disjunction_af
.Lx902_0:
                        .quad            .Lx902_0_s
.Lx902_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n337_disjunction_α:
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              dword ptr [rbp + 352], 0
                                                                                        jmp   n347_lit_string_α
n337_disjunction_as:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        jne   .Lx904_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n345_call_builtin_icon_α
.Lx904_0:
                        cmp              eax, 1
                                                                                        jne   .Lx904_1
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n345_call_builtin_icon_α
.Lx904_1:
                        cmp              eax, 2
                                                                                        jne   .Lx904_2
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n345_call_builtin_icon_α
.Lx904_2:
                                                                                        jmp   n345_call_builtin_icon_α
n337_disjunction_β:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        je    n337_disjunction_af
                        cmp              eax, 1
                                                                                        je    n349_scan_upto_β
                                                                                        jmp   n337_disjunction_af
n337_disjunction_af:
                        add              dword ptr [rbp + 352], 1
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 1
                                                                                        je    n348_keyword_icon_α
                        cmp              eax, 2
                                                                                        je    n350_lit_string_α
                                                                                        jmp   n346_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n338_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1848], rax
                        .section         .rodata
.Lrkfn906:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn906]
                        lea              rsi, [rbp + 1824]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n330_disjunction_β
                                                                                        jmp   n330_disjunction_β
n338_call_builtin_icon_β:
                                                                                        jmp   n330_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:
                        mov              qword ptr [rbp + 1664], 1
                        mov              rax, qword ptr [rip + .Lx907_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n351_disjunction_α
.Lx907_0:
                        .quad            .Lx907_0_s
.Lx907_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              rax, qword ptr [rip + .Lx908_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n330_disjunction_as
n340_lit_string_β:
                                                                                        jmp   n330_disjunction_af
.Lx908_0:
                        .quad            .Lx908_0_s
.Lx908_0_s:
                        .string          "vowls?letts"
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_charset_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              dword ptr [rbp + 1972], -1
                        mov              rax, qword ptr [rip + .Lx909_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n342_scan_upto_α
n341_lit_charset_β:
                                                                                        jmp   n330_disjunction_af
.Lx909_0:
                        .quad            .Lx909_0_s
.Lx909_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n342_scan_upto_α:
                        mov              qword ptr [rbp + 1952], r14
.Lx911_0:
                        mov              rax, qword ptr [rbp + 1952]
                        cmp              rax, r15
                                                                                        jge   n330_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx911_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx911_1
                        mov              qword ptr [rbp + 1936], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n330_disjunction_as
.Lx911_1:
                        inc              qword ptr [rbp + 1952]
                                                                                        jmp   .Lx911_0
n342_scan_upto_β:
                        inc              qword ptr [rbp + 1952]
                                                                                        jmp   .Lx911_0
.Lx911_2:
                        .quad            .Lx911_2_s
.Lx911_2_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx912_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n330_disjunction_as
n343_lit_string_β:
                                                                                        jmp   n330_disjunction_af
.Lx912_0:
                        .quad            .Lx912_0_s
.Lx912_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n344_disjunction_α:
                        mov              qword ptr [rbp + 1216], 0
                        mov              qword ptr [rbp + 1224], 0
                        mov              dword ptr [rbp + 1232], 0
                                                                                        jmp   n354_lit_string_α
n344_disjunction_as:
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 0
                                                                                        jne   .Lx914_0
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n352_call_builtin_icon_α
.Lx914_0:
                        cmp              eax, 1
                                                                                        jne   .Lx914_1
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n352_call_builtin_icon_α
.Lx914_1:
                        cmp              eax, 2
                                                                                        jne   .Lx914_2
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n352_call_builtin_icon_α
.Lx914_2:
                                                                                        jmp   n352_call_builtin_icon_α
n344_disjunction_β:
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 0
                                                                                        je    n344_disjunction_af
                        cmp              eax, 1
                                                                                        je    n356_scan_upto_β
                                                                                        jmp   n344_disjunction_af
n344_disjunction_af:
                        add              dword ptr [rbp + 1232], 1
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 1
                                                                                        je    n355_lit_charset_α
                        cmp              eax, 2
                                                                                        je    n357_lit_string_α
                                                                                        jmp   n353_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n345_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn916:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn916]
                        lea              rsi, [rbp + 272]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n337_disjunction_β
                                                                                        jmp   n337_disjunction_β
n345_call_builtin_icon_β:
                                                                                        jmp   n337_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx917_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n358_disjunction_α
.Lx917_0:
                        .quad            .Lx917_0_s
.Lx917_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx918_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n337_disjunction_as
n347_lit_string_β:
                                                                                        jmp   n337_disjunction_af
.Lx918_0:
                        .quad            .Lx918_0_s
.Lx918_0_s:
                        .string          "upprs?ascii"
#-----------------------------------------------------------------------------------------------------------------------
n348_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx919_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n337_disjunction_af
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n349_scan_upto_α
n348_keyword_icon_β:
                                                                                        jmp   n337_disjunction_af
.Lx919_0:
                        .quad            .Lx919_0_s
.Lx919_0_s:
                        .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n349_scan_upto_α:
                        mov              qword ptr [rbp + 400], r14
.Lx921_0:
                        mov              rax, qword ptr [rbp + 400]
                        cmp              rax, r15
                                                                                        jge   n337_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 424]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx921_1
                        mov              qword ptr [rbp + 384], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n337_disjunction_as
.Lx921_1:
                        inc              qword ptr [rbp + 400]
                                                                                        jmp   .Lx921_0
n349_scan_upto_β:
                        inc              qword ptr [rbp + 400]
                                                                                        jmp   .Lx921_0
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx922_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n337_disjunction_as
n350_lit_string_β:
                                                                                        jmp   n337_disjunction_af
.Lx922_0:
                        .quad            .Lx922_0_s
.Lx922_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n351_disjunction_α:
                        mov              qword ptr [rbp + 1680], 0
                        mov              qword ptr [rbp + 1688], 0
                        mov              dword ptr [rbp + 1696], 0
                                                                                        jmp   n361_lit_string_α
n351_disjunction_as:
                        mov              eax, dword ptr [rbp + 1696]
                        cmp              eax, 0
                                                                                        jne   .Lx924_0
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n359_call_builtin_icon_α
.Lx924_0:
                        cmp              eax, 1
                                                                                        jne   .Lx924_1
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n359_call_builtin_icon_α
.Lx924_1:
                        cmp              eax, 2
                                                                                        jne   .Lx924_2
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n359_call_builtin_icon_α
.Lx924_2:
                                                                                        jmp   n359_call_builtin_icon_α
n351_disjunction_β:
                        mov              eax, dword ptr [rbp + 1696]
                        cmp              eax, 0
                                                                                        je    n351_disjunction_af
                        cmp              eax, 1
                                                                                        je    n363_scan_upto_β
                                                                                        jmp   n351_disjunction_af
n351_disjunction_af:
                        add              dword ptr [rbp + 1696], 1
                        mov              eax, dword ptr [rbp + 1696]
                        cmp              eax, 1
                                                                                        je    n362_keyword_icon_α
                        cmp              eax, 2
                                                                                        je    n364_lit_string_α
                                                                                        jmp   n360_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n352_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn926:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn926]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n344_disjunction_β
                                                                                        jmp   n344_disjunction_β
n352_call_builtin_icon_β:
                                                                                        jmp   n344_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n365_disjunction_α
.Lx927_0:
                        .quad            .Lx927_0_s
.Lx927_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx928_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n344_disjunction_as
n354_lit_string_β:
                                                                                        jmp   n344_disjunction_af
.Lx928_0:
                        .quad            .Lx928_0_s
.Lx928_0_s:
                        .string          "skips?letts"
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_charset_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              dword ptr [rbp + 1300], -1
                        mov              rax, qword ptr [rip + .Lx929_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n356_scan_upto_α
n355_lit_charset_β:
                                                                                        jmp   n344_disjunction_af
.Lx929_0:
                        .quad            .Lx929_0_s
.Lx929_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n356_scan_upto_α:
                        mov              qword ptr [rbp + 1280], r14
.Lx931_0:
                        mov              rax, qword ptr [rbp + 1280]
                        cmp              rax, r15
                                                                                        jge   n344_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx931_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx931_1
                        mov              qword ptr [rbp + 1264], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n344_disjunction_as
.Lx931_1:
                        inc              qword ptr [rbp + 1280]
                                                                                        jmp   .Lx931_0
n356_scan_upto_β:
                        inc              qword ptr [rbp + 1280]
                                                                                        jmp   .Lx931_0
.Lx931_2:
                        .quad            .Lx931_2_s
.Lx931_2_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx932_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n344_disjunction_as
n357_lit_string_β:
                                                                                        jmp   n344_disjunction_af
.Lx932_0:
                        .quad            .Lx932_0_s
.Lx932_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n358_disjunction_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0
                                                                                        jmp   n368_lit_string_α
n358_disjunction_as:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        jne   .Lx934_0
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n366_call_builtin_icon_α
.Lx934_0:
                        cmp              eax, 1
                                                                                        jne   .Lx934_1
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n366_call_builtin_icon_α
.Lx934_1:
                        cmp              eax, 2
                                                                                        jne   .Lx934_2
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n366_call_builtin_icon_α
.Lx934_2:
                                                                                        jmp   n366_call_builtin_icon_α
n358_disjunction_β:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        je    n358_disjunction_af
                        cmp              eax, 1
                                                                                        je    n370_scan_upto_β
                                                                                        jmp   n358_disjunction_af
n358_disjunction_af:
                        add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 1
                                                                                        je    n369_var_α
                        cmp              eax, 2
                                                                                        je    n371_lit_string_α
                                                                                        jmp   n367_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n359_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lrkfn936:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn936]
                        lea              rsi, [rbp + 1616]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n351_disjunction_β
                                                                                        jmp   n351_disjunction_β
n359_call_builtin_icon_β:
                                                                                        jmp   n351_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n360_scan_α:
                        lea              rdi, [rbp + 1552]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1552]
                        mov              r14, qword ptr [rbp + 1560]
                        mov              r15, qword ptr [rbp + 1568]
                                                                                        jmp   n315_var_α
n360_scan_β:
                                                                                        jmp   n315_var_α
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx939_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n351_disjunction_as
n361_lit_string_β:
                                                                                        jmp   n351_disjunction_af
.Lx939_0:
                        .quad            .Lx939_0_s
.Lx939_0_s:
                        .string          "vowls?ascii"
#-----------------------------------------------------------------------------------------------------------------------
n362_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx940_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n351_disjunction_af
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n363_scan_upto_α
n362_keyword_icon_β:
                                                                                        jmp   n351_disjunction_af
.Lx940_0:
                        .quad            .Lx940_0_s
.Lx940_0_s:
                        .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n363_scan_upto_α:
                        mov              qword ptr [rbp + 1744], r14
.Lx942_0:
                        mov              rax, qword ptr [rbp + 1744]
                        cmp              rax, r15
                                                                                        jge   n351_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 1768]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx942_1
                        mov              qword ptr [rbp + 1728], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n351_disjunction_as
.Lx942_1:
                        inc              qword ptr [rbp + 1744]
                                                                                        jmp   .Lx942_0
n363_scan_upto_β:
                        inc              qword ptr [rbp + 1744]
                                                                                        jmp   .Lx942_0
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx943_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n351_disjunction_as
n364_lit_string_β:
                                                                                        jmp   n351_disjunction_af
.Lx943_0:
                        .quad            .Lx943_0_s
.Lx943_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n365_disjunction_α:
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                        mov              dword ptr [rbp + 1024], 0
                                                                                        jmp   n374_lit_string_α
n365_disjunction_as:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 0
                                                                                        jne   .Lx945_0
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n372_call_builtin_icon_α
.Lx945_0:
                        cmp              eax, 1
                                                                                        jne   .Lx945_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n372_call_builtin_icon_α
.Lx945_1:
                        cmp              eax, 2
                                                                                        jne   .Lx945_2
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n372_call_builtin_icon_α
.Lx945_2:
                                                                                        jmp   n372_call_builtin_icon_α
n365_disjunction_β:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 0
                                                                                        je    n365_disjunction_af
                        cmp              eax, 1
                                                                                        je    n376_scan_upto_β
                                                                                        jmp   n365_disjunction_af
n365_disjunction_af:
                        add              dword ptr [rbp + 1024], 1
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 1
                                                                                        je    n375_keyword_icon_α
                        cmp              eax, 2
                                                                                        je    n377_lit_string_α
                                                                                        jmp   n373_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n366_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn947:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn947]
                        lea              rsi, [rbp + 80]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n358_disjunction_β
                                                                                        jmp   n358_disjunction_β
n366_call_builtin_icon_β:
                                                                                        jmp   n358_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n367_scan_α:
                        lea              rdi, [rbp + 16]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 16]
                        mov              r14, qword ptr [rbp + 24]
                        mov              r15, qword ptr [rbp + 32]
                                                                                        jmp   main_ω
n367_scan_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx950_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n358_disjunction_as
n368_lit_string_β:
                                                                                        jmp   n358_disjunction_af
.Lx950_0:
                        .quad            .Lx950_0_s
.Lx950_0_s:
                        .string          "upprs?skips"
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:
                        mov              rax, qword ptr [rbp + 11088]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 11096]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n370_scan_upto_α
n369_var_β:
                                                                                        jmp   n358_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n370_scan_upto_α:
                        mov              qword ptr [rbp + 208], r14
.Lx954_0:
                        mov              rax, qword ptr [rbp + 208]
                        cmp              rax, r15
                                                                                        jge   n358_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 232]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx954_1
                        mov              qword ptr [rbp + 192], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n358_disjunction_as
.Lx954_1:
                        inc              qword ptr [rbp + 208]
                                                                                        jmp   .Lx954_0
n370_scan_upto_β:
                        inc              qword ptr [rbp + 208]
                                                                                        jmp   .Lx954_0
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n358_disjunction_as
n371_lit_string_β:
                                                                                        jmp   n358_disjunction_af
.Lx955_0:
                        .quad            .Lx955_0_s
.Lx955_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n372_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        .section         .rodata
.Lrkfn957:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn957]
                        lea              rsi, [rbp + 944]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n365_disjunction_β
                                                                                        jmp   n365_disjunction_β
n372_call_builtin_icon_β:
                                                                                        jmp   n365_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx958_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n378_disjunction_α
.Lx958_0:
                        .quad            .Lx958_0_s
.Lx958_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx959_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n365_disjunction_as
n374_lit_string_β:
                                                                                        jmp   n365_disjunction_af
.Lx959_0:
                        .quad            .Lx959_0_s
.Lx959_0_s:
                        .string          "skips?ascii"
#-----------------------------------------------------------------------------------------------------------------------
n375_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx960_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n365_disjunction_af
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n376_scan_upto_α
n375_keyword_icon_β:
                                                                                        jmp   n365_disjunction_af
.Lx960_0:
                        .quad            .Lx960_0_s
.Lx960_0_s:
                        .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n376_scan_upto_α:
                        mov              qword ptr [rbp + 1072], r14
.Lx962_0:
                        mov              rax, qword ptr [rbp + 1072]
                        cmp              rax, r15
                                                                                        jge   n365_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 1096]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx962_1
                        mov              qword ptr [rbp + 1056], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n365_disjunction_as
.Lx962_1:
                        inc              qword ptr [rbp + 1072]
                                                                                        jmp   .Lx962_0
n376_scan_upto_β:
                        inc              qword ptr [rbp + 1072]
                                                                                        jmp   .Lx962_0
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx963_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n365_disjunction_as
n377_lit_string_β:
                                                                                        jmp   n365_disjunction_af
.Lx963_0:
                        .quad            .Lx963_0_s
.Lx963_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n378_disjunction_α:
                        mov              qword ptr [rbp + 816], 0
                        mov              qword ptr [rbp + 824], 0
                        mov              dword ptr [rbp + 832], 0
                                                                                        jmp   n381_lit_string_α
n378_disjunction_as:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 0
                                                                                        jne   .Lx965_0
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n379_call_builtin_icon_α
.Lx965_0:
                        cmp              eax, 1
                                                                                        jne   .Lx965_1
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n379_call_builtin_icon_α
.Lx965_1:
                        cmp              eax, 2
                                                                                        jne   .Lx965_2
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n379_call_builtin_icon_α
.Lx965_2:
                                                                                        jmp   n379_call_builtin_icon_α
n378_disjunction_β:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 0
                                                                                        je    n378_disjunction_af
                        cmp              eax, 1
                                                                                        je    n383_scan_upto_β
                                                                                        jmp   n378_disjunction_af
n378_disjunction_af:
                        add              dword ptr [rbp + 832], 1
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 1
                                                                                        je    n382_var_α
                        cmp              eax, 2
                                                                                        je    n384_lit_string_α
                                                                                        jmp   n380_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n379_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn967:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn967]
                        lea              rsi, [rbp + 752]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n378_disjunction_β
                                                                                        jmp   n378_disjunction_β
n379_call_builtin_icon_β:
                                                                                        jmp   n378_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx968_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n385_disjunction_α
.Lx968_0:
                        .quad            .Lx968_0_s
.Lx968_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx969_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n378_disjunction_as
n381_lit_string_β:
                                                                                        jmp   n378_disjunction_af
.Lx969_0:
                        .quad            .Lx969_0_s
.Lx969_0_s:
                        .string          "skips?upprs"
#-----------------------------------------------------------------------------------------------------------------------
n382_var_α:
                        mov              rax, qword ptr [rbp + 11104]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 11112]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n383_scan_upto_α
n382_var_β:
                                                                                        jmp   n378_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n383_scan_upto_α:
                        mov              qword ptr [rbp + 880], r14
.Lx973_0:
                        mov              rax, qword ptr [rbp + 880]
                        cmp              rax, r15
                                                                                        jge   n378_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 904]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx973_1
                        mov              qword ptr [rbp + 864], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n378_disjunction_as
.Lx973_1:
                        inc              qword ptr [rbp + 880]
                                                                                        jmp   .Lx973_0
n383_scan_upto_β:
                        inc              qword ptr [rbp + 880]
                                                                                        jmp   .Lx973_0
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx974_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n378_disjunction_as
n384_lit_string_β:
                                                                                        jmp   n378_disjunction_af
.Lx974_0:
                        .quad            .Lx974_0_s
.Lx974_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n385_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n388_lit_string_α
n385_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx976_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n386_call_builtin_icon_α
.Lx976_0:
                        cmp              eax, 1
                                                                                        jne   .Lx976_1
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n386_call_builtin_icon_α
.Lx976_1:
                        cmp              eax, 2
                                                                                        jne   .Lx976_2
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n386_call_builtin_icon_α
.Lx976_2:
                                                                                        jmp   n386_call_builtin_icon_α
n385_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        je    n385_disjunction_af
                        cmp              eax, 1
                                                                                        je    n390_scan_upto_β
                                                                                        jmp   n385_disjunction_af
n385_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 1
                                                                                        je    n389_var_α
                        cmp              eax, 2
                                                                                        je    n391_lit_string_α
                                                                                        jmp   n387_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n386_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn978:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn978]
                        lea              rsi, [rbp + 560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n385_disjunction_β
                                                                                        jmp   n385_disjunction_β
n386_call_builtin_icon_β:
                                                                                        jmp   n385_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n387_scan_α:
                        lea              rdi, [rbp + 496]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 496]
                        mov              r14, qword ptr [rbp + 504]
                        mov              r15, qword ptr [rbp + 512]
                                                                                        jmp   n318_var_α
n387_scan_β:
                                                                                        jmp   n318_var_α
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx981_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n385_disjunction_as
n388_lit_string_β:
                                                                                        jmp   n385_disjunction_af
.Lx981_0:
                        .quad            .Lx981_0_s
.Lx981_0_s:
                        .string          "skips?skips"
#-----------------------------------------------------------------------------------------------------------------------
n389_var_α:
                        mov              rax, qword ptr [rbp + 11088]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 11096]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n390_scan_upto_α
n389_var_β:
                                                                                        jmp   n385_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n390_scan_upto_α:
                        mov              qword ptr [rbp + 688], r14
.Lx985_0:
                        mov              rax, qword ptr [rbp + 688]
                        cmp              rax, r15
                                                                                        jge   n385_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 712]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx985_1
                        mov              qword ptr [rbp + 672], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n385_disjunction_as
.Lx985_1:
                        inc              qword ptr [rbp + 688]
                                                                                        jmp   .Lx985_0
n390_scan_upto_β:
                        inc              qword ptr [rbp + 688]
                                                                                        jmp   .Lx985_0
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx986_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n385_disjunction_as
n391_lit_string_β:
                                                                                        jmp   n385_disjunction_af
.Lx986_0:
                        .quad            .Lx986_0_s
.Lx986_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 11136]
                        add              rsp, 11144
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 11136]
                        add              rsp, 11144
                        ret
                        .section         .note.GNU-stack,"",@progbits
