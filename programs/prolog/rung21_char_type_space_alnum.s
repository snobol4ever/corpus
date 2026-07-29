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
                        sub              rsp, 776
                        mov              rdi, rsp
                        mov              ecx, 776
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 768], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx31_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx31_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx31_101
.Lx31_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx31_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1_lit_string_α
n0_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n2_lit_string_α
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n3_op11_α
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "space"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn35:               .string          "$char_type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn35]
                        lea              rsi, [rbp + 704]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n5_lit_string_α
                                                                                        jmp   n4_lit_string_α
n3_op11_β:
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n6_op11_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n7_op11_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n6_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn39:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn39]
                        lea              rsi, [rbp + 608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n8_lit_string_α
n6_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn41:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn41]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n8_lit_string_α
n7_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n10_op11_α
.Lx42_0:
                        .quad            .Lx42_0_s
.Lx42_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n9_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn45:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn45]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n11_lit_string_α
n10_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n12_lit_string_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n13_op11_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "alnum"
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn49:               .string          "$char_type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn49]
                        lea              rsi, [rbp + 480]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n15_lit_string_α
                                                                                        jmp   n14_lit_string_α
n13_op11_β:
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n16_op11_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n17_op11_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn53:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn53]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n18_lit_string_α
n16_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn55:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn55]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n18_lit_string_α
n17_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n19_op11_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn58:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn58]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n20_lit_string_α
n19_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n21_lit_string_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n22_op11_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "alnum"
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn62:               .string          "$char_type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn62]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n24_lit_string_α
                                                                                        jmp   n23_lit_string_α
n22_op11_β:
                                                                                        jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n25_op11_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n26_op11_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n25_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn66:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n27_lit_string_α
n25_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn68:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn68]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n27_lit_string_α
n26_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n28_op11_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n28_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn71:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn71]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n29_move_label_α
n28_op11_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_move_label_α:
                        lea              rax, [rip + n9_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n30_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n30_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n30_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 768]
                        add              rsp, 776
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 768]
                        add              rsp, 776
                        ret
                        .section         .note.GNU-stack,"",@progbits
