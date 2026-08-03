                        .intel_syntax    noprefix
                        .text
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "color(r,g,b)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "c"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 1
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 1
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 12
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_call_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          "color(r,g,b)"
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd25:             .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd25]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx24_240
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
.Lx24_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_statement_end_α
n2_call_β:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_lit_integer_α
.Lx30_0:
                        .quad            255
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_lit_integer_α
.Lx31_0:
                        .quad            128
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_call_α
.Lx32_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 32], r10
                        mov              qword ptr [rsp + 40], r11
                        .section         .rodata
.Lrkfnzd34:             .string          "color"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd34]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx33_240
                        add              rsp, 16
                                                                                        jmp   n11_statement_begin_α
.Lx33_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n9_assign_α
n8_call_β:
                        add              rsp, 16
                                                                                        jmp   n11_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # c
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n10_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:
                                                                                        jmp   n11_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_begin_α:
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # c
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_call_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd42:             .string          "DATATYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd42]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx41_240
                        add              rsp, 16
                                                                                        jmp   n16_statement_begin_α
.Lx41_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n14_assign_α
n13_call_β:
                        add              rsp, 16
                                                                                        jmp   n16_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx43_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n15_statement_end_α
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:
                                                                                        jmp   n16_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # c
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n18_call_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd50:             .string          "r"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd50]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx49_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   main_γ
.Lx49_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_assign_α
n18_call_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx51_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n20_statement_end_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:
                        add              rsp, 160
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
