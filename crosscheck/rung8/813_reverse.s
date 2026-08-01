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
#=======================================================================================================================
#         DIFFER(REVERSE('hello'), 'olleh')                   :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_call_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd32:             .string          "REVERSE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd32]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx31_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n6_lit_string_α
.Lx31_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_lit_string_α
n1_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_call_α
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "olleh"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd35:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd35]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx34_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n6_lit_string_α
.Lx34_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 64
                                                                                        jmp   n4_lit_string_α
n3_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n6_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 813/001: reverse hello'           :(END)
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 27
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_assign_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "FAIL 813/001: reverse hello"
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx37_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(REVERSE('x'), 'x')                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_call_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n7_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd40:             .string          "REVERSE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd40]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx39_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx39_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n8_lit_string_α
n7_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n9_call_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n9_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd43:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd43]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx42_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n12_lit_string_α
.Lx42_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 64
                                                                                        jmp   n10_lit_string_α
n9_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n12_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 813/002: reverse single char'    :(END)
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_assign_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "FAIL 813/002: reverse single char"
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx45_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(REVERSE(''), '')                   :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_call_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd48:             .string          "REVERSE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd48]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx47_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n18_lit_string_α
.Lx47_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n14_lit_string_α
n13_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_call_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n15_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd51:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd51]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx50_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n18_lit_string_α
.Lx50_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 64
                                                                                        jmp   n16_lit_string_α
n15_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n18_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 813/003: reverse null is null'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 34
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_assign_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "FAIL 813/003: reverse null is null"
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx53_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(REVERSE('abcba'), 'abcba')                   :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_call_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "abcba"
#-----------------------------------------------------------------------------------------------------------------------
n19_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd56:             .string          "REVERSE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd56]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx55_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n24_lit_string_α
.Lx55_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n20_lit_string_α
n19_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n21_call_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "abcba"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd59:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd59]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx58_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n24_lit_string_α
.Lx58_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 64
                                                                                        jmp   n22_lit_string_α
n21_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n24_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 813/004: reverse palindrome'     :(END)
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_assign_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "FAIL 813/004: reverse palindrome"
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx61_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'PASS 813_reverse (4/4)'
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_assign_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "PASS 813_reverse (4/4)"
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx63_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n26_goto_α:
                                                                                        jmp   n6_lit_string_α
n26_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_goto_α:
                                                                                        jmp   n12_lit_string_α
n27_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_goto_α:
                                                                                        jmp   n18_lit_string_α
n28_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_goto_α:
                                                                                        jmp   n24_lit_string_α
n29_goto_β:
                                                                                        jmp   main_ω
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
