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
                        sub              rsp, 872
                        mov              rdi, rsp
                        mov              ecx, 872
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 864], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx27_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx27_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx27_101
.Lx27_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx27_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1_lit_string_α
n0_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n2_lit_string_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n3_lit_string_α
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          "type_error"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n4_lit_string_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "evaluable"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n5_lit_string_α
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n6_lit_integer_α
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n7_op11_α
.Lx33_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n8_op11_α
n7_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n9_var_ref_α
n8_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n11_op11_α
n10_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx39_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx39_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx39_101
.Lx39_100:
                        lea              rdi, [rbp + 512]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx39_101:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n13_var_ref_α
n11_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
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
n12_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n15_lit_integer_α
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n16_op11_α
.Lx44_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n17_op11_α
n16_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n19_var_α
n17_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn48:               .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn48]
                        lea              rsi, [rbp + 544]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n20_lit_string_α
n18_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n22_op11_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "caught_type_error"
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn53:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn53]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n23_lit_string_α
n21_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn55:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn55]
                        lea              rsi, [rbp + 592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n23_lit_string_α
n22_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n24_op11_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn58:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn58]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n25_move_label_α
n24_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_move_label_α:
                        lea              rax, [rip + n12_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n26_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n26_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n26_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 864]
                        add              rsp, 872
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 864]
                        add              rsp, 872
                        ret
                        .section         .note.GNU-stack,"",@progbits
