                        .intel_syntax    noprefix
                        .text
                        .file            1 "string_concat_twin.sno"
                        .file            2 "<included>"
                        .globl           main
main:
                        push             rdi
                        push             rsi
                        sub              rsp, 8
                        call             rt_main_stack_adopt@PLT
                        mov              rsi, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rsp + 16]
                        add              rsp, 24
                        test             rax, rax;                            jz    .Lmain_stack_kept
                        mov              rsp, rax
.Lmain_stack_kept:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 2
                        call             rt_label_table_install@PLT
                        lea              rdi, [rip + __gc_frame_maps]
                        call             rt_gc_frame_maps_install_counted@PLT
                        mov              rdi, qword ptr [rsp]
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage_argv@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
                        .section         .rodata
.Lgvan0:                .string          "S"
.Lgvan1:                .string          "I"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "LOOP"
.Llbln1:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 392], rax
                        mov              dword ptr [rsp + 384], 160
                        mov              dword ptr [rsp + 388], 400
                        mov              eax, 0
main_α_body:
                        .type            n0_call_bx, @function
n0_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_α:              sub              rsp, 16
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_fp_model_spitbol@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lcall_α_41_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_α
.Lcall_α_41_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1_call_α
n0_call_β:              add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_α
                        .size            n0_call_bx, .-n0_call_bx
                        .type            n1_call_bx, @function
n1_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:              sub              rsp, 16
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_320@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lcall_α_42_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_α
.Lcall_α_42_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n2_statement_begin_α
n1_call_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_α
                        .size            n1_call_bx, .-n1_call_bx
                        .type            n2_statement_begin_bx, @function
n2_statement_begin_bx:
                        .pushsection     .rodata
.Lstnof1:               .string          "string_concat_twin.sno"
                        .popsection
.Lstno1:                .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstno1
                        .long            1
                        .long            4
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# 	S = ''
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n2_statement_begin_α:                                                         jmp   n3_lit_string_α
n2_statement_begin_β:                                                         jmp   n6_setexit_test_α
                        .size            n2_statement_begin_bx, .-n2_statement_begin_bx
                        .type            n3_lit_string_bx, @function
n3_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_45_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_assign_α
.Llit_string_α_45_0:    .quad            .Llit_string_α_45_0_s
.Llit_string_α_45_0_s:  .string          ""
                        .size            n3_lit_string_bx, .-n3_lit_string_bx
                        .type            n4_assign_bx, @function
n4_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # S
                        mov              qword ptr [r9 + 8], rdx;             jmp   n5_statement_end_α
                        .size            n4_assign_bx, .-n4_assign_bx
                        .type            n5_statement_end_bx, @function
n5_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:     add              rsp, 16;                             jmp   n7_statement_begin_α
                        .size            n5_statement_end_bx, .-n5_statement_end_bx
                        .type            n6_setexit_test_bx, @function
n6_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_setexit_test_α:      mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        cmp              qword ptr [rcx + 200], 0;            jz    .Lsetexit_test_α_49_1
                        call             rt_setexit_take@PLT
.Lsetexit_test_α_49_1:                                                        jmp   n7_statement_begin_α
                        .size            n6_setexit_test_bx, .-n6_setexit_test_bx
                        .type            n7_statement_begin_bx, @function
n7_statement_begin_bx:
.Lstno2:                .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstno2
                        .long            2
                        .long            5
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# 	I = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n7_statement_begin_α:                                                         jmp   n8_lit_integer_α
n7_statement_begin_β:                                                         jmp   n11_setexit_test_α
                        .size            n7_statement_begin_bx, .-n7_statement_begin_bx
                        .type            n8_lit_integer_bx, @function
n8_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_52_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_assign_α
.Llit_integer_α_52_0:   .quad            1
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_assign_bx, @function
n9_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # I
                        mov              qword ptr [r9 + 24], rdx;            jmp   n10_statement_end_α
                        .size            n9_assign_bx, .-n9_assign_bx
                        .type            n10_statement_end_bx, @function
n10_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:    add              rsp, 16;                             jmp   n12_statement_begin_α
                        .size            n10_statement_end_bx, .-n10_statement_end_bx
                        .type            n11_setexit_test_bx, @function
n11_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        cmp              qword ptr [rcx + 200], 0;            jz    .Lsetexit_test_α_56_1
                        call             rt_setexit_take@PLT
.Lsetexit_test_α_56_1:                                                        jmp   n12_statement_begin_α
                        .size            n11_setexit_test_bx, .-n11_setexit_test_bx
                        .type            n12_statement_begin_bx, @function
n12_statement_begin_bx:
.Lstno3:                .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstno3
                        .long            3
                        .long            6
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# LOOP	S = S 'x'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n12_statement_begin_α:                                                        jmp   n13_var_α
n12_statement_begin_β:                                                        jmp   n18_setexit_test_α
                        .size            n12_statement_begin_bx, .-n12_statement_begin_bx
                        .type            n13_var_bx, @function
n13_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # S
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_lit_string_α
                        .size            n13_var_bx, .-n13_var_bx
                        .type            n14_lit_string_bx, @function
n14_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_60_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_binop_α
n14_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n12_statement_begin_β
.Llit_string_α_60_0:    .quad            .Llit_string_α_60_0_s
.Llit_string_α_60_0_s:  .string          "x"
                        .size            n14_lit_string_bx, .-n14_lit_string_bx
                        .type            n15_binop_bx, @function
n15_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n16_assign_α
n15_binop_β:            add              rsp, 16;                             jmp   n14_lit_string_β
                        .size            n15_binop_bx, .-n15_binop_bx
                        .type            n16_assign_bx, @function
n16_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # S
                        mov              qword ptr [r9 + 8], rdx;             jmp   n17_statement_end_α
                        .size            n16_assign_bx, .-n16_assign_bx
                        .type            n17_statement_end_bx, @function
n17_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:    add              rsp, 48;                             jmp   n19_statement_begin_α
                        .size            n17_statement_end_bx, .-n17_statement_end_bx
                        .type            n18_setexit_test_bx, @function
n18_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        cmp              qword ptr [rcx + 200], 0;            jz    .Lsetexit_test_α_65_1
                        call             rt_setexit_take@PLT
.Lsetexit_test_α_65_1:                                                        jmp   n19_statement_begin_α
                        .size            n18_setexit_test_bx, .-n18_setexit_test_bx
                        .type            n19_statement_begin_bx, @function
n19_statement_begin_bx:
.Lstno4:                .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstno4
                        .long            4
                        .long            7
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# 	I = I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n19_statement_begin_α:                                                        jmp   n20_var_α
n19_statement_begin_β:                                                        jmp   n25_setexit_test_α
                        .size            n19_statement_begin_bx, .-n19_statement_begin_bx
                        .type            n20_var_bx, @function
n20_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n21_lit_integer_α
                        .size            n20_var_bx, .-n20_var_bx
                        .type            n21_lit_integer_bx, @function
n21_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_69_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_binop_α
n21_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n19_statement_begin_β
.Llit_integer_α_69_0:   .quad            1
                        .size            n21_lit_integer_bx, .-n21_lit_integer_bx
                        .type            n22_binop_bx, @function
n22_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_70_2
                        add              rax, 1;                              jo    .Lbinop_α_70_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_70_7
.Lbinop_α_70_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_70_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_70_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_70_4
.Lbinop_α_70_3:         movq             xmm0, rsi
.Lbinop_α_70_4:         cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_70_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_70_7:                                                               jmp   n23_assign_α
.Lbinop_α_70_0:         mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_70_240
                        add              rsp, 16;                             jmp   n21_lit_integer_β
.Lbinop_α_70_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n23_assign_α
n22_binop_β:            add              rsp, 16;                             jmp   n21_lit_integer_β
                        .size            n22_binop_bx, .-n22_binop_bx
                        .type            n23_assign_bx, @function
n23_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # I
                        mov              qword ptr [r9 + 24], rdx;            jmp   n24_statement_end_α
                        .size            n23_assign_bx, .-n23_assign_bx
                        .type            n24_statement_end_bx, @function
n24_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    add              rsp, 48;                             jmp   n26_statement_begin_α
                        .size            n24_statement_end_bx, .-n24_statement_end_bx
                        .type            n25_setexit_test_bx, @function
n25_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        cmp              qword ptr [rcx + 200], 0;            jz    .Lsetexit_test_α_74_1
                        call             rt_setexit_take@PLT
.Lsetexit_test_α_74_1:                                                        jmp   n26_statement_begin_α
                        .size            n25_setexit_test_bx, .-n25_setexit_test_bx
                        .type            n26_statement_begin_bx, @function
n26_statement_begin_bx:
.Lstno5:                .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstno5
                        .long            5
                        .long            8
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# 	LE(I, 4000)					:S(LOOP)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n26_statement_begin_α:                                                        jmp   n27_var_α
n26_statement_begin_β:                                                        jmp   n33_setexit_test_α
                        .size            n26_statement_begin_bx, .-n26_statement_begin_bx
                        .type            n27_var_bx, @function
n27_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n28_lit_integer_α
                        .size            n27_var_bx, .-n27_var_bx
                        .type            n28_lit_integer_bx, @function
n28_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_78_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n29_coerce_numeric_α
n28_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n26_statement_begin_β
.Llit_integer_α_78_0:   .quad            4000
                        .size            n28_lit_integer_bx, .-n28_lit_integer_bx
                        .type            n29_coerce_numeric_bx, @function
n29_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_80_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_80_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_80_0
.Lcoerce_numeric_α_80_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_coerce_numeric_α
.Lcoerce_numeric_α_80_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_80_240
                        add              rsp, 16;                             jmp   n28_lit_integer_β
.Lcoerce_numeric_α_80_240:
                                                                              jmp   n30_coerce_numeric_α
n29_coerce_numeric_β:   add              rsp, 16;                             jmp   n28_lit_integer_β
                        .size            n29_coerce_numeric_bx, .-n29_coerce_numeric_bx
                        .type            n30_coerce_numeric_bx, @function
n30_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_82_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_82_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_82_0
.Lcoerce_numeric_α_82_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_cmp_test_α
.Lcoerce_numeric_α_82_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_82_240
                        add              rsp, 16;                             jmp   n29_coerce_numeric_β
.Lcoerce_numeric_α_82_240:
                                                                              jmp   n31_cmp_test_α
n30_coerce_numeric_β:   add              rsp, 16;                             jmp   n29_coerce_numeric_β
                        .size            n30_coerce_numeric_bx, .-n30_coerce_numeric_bx
                        .type            n31_cmp_test_bx, @function
n31_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_84_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_84_239
                        add              rsp, 16;                             jmp   n30_coerce_numeric_β
.Lcmp_test_α_84_239:                                                          jmp   n32_statement_end_α
.Lcmp_test_α_84_0:      lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_84_240
                        add              rsp, 16;                             jmp   n30_coerce_numeric_β
.Lcmp_test_α_84_240:                                                          jmp   n32_statement_end_α
                        .size            n31_cmp_test_bx, .-n31_cmp_test_bx
                        .type            n32_statement_end_bx, @function
n32_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:    add              rsp, 80;                             jmp   n12_statement_begin_α
                        .size            n32_statement_end_bx, .-n32_statement_end_bx
                        .type            n33_setexit_test_bx, @function
n33_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        cmp              qword ptr [rcx + 200], 0;            jz    .Lsetexit_test_α_87_1
                        call             rt_setexit_take@PLT
.Lsetexit_test_α_87_1:                                                        jmp   n34_statement_begin_α
                        .size            n33_setexit_test_bx, .-n33_setexit_test_bx
                        .type            n34_statement_begin_bx, @function
n34_statement_begin_bx:
.Lstno6:                .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstno6
                        .long            6
                        .long            9
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# 	OUTPUT = SIZE(S)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n34_statement_begin_α:                                                        jmp   n35_var_α
n34_statement_begin_β:                                                        jmp   n39_setexit_test_α
                        .size            n34_statement_begin_bx, .-n34_statement_begin_bx
                        .type            n35_var_bx, @function
n35_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # S
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n36_call_α
                        .size            n35_var_bx, .-n35_var_bx
                        .type            n36_call_bx, @function
n36_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd92:      .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd92]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_91_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n34_statement_begin_β
.Lcall_α_91_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:205
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n37_assign_α
n36_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n34_statement_begin_β
                        .size            n36_call_bx, .-n36_call_bx
                        .type            n37_assign_bx, @function
n37_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_93_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n38_statement_end_α
.Lassign_α_93_0:        .quad            .Lassign_α_93_0_s
.Lassign_α_93_0_s:      .string          "OUTPUT"
                        .size            n37_assign_bx, .-n37_assign_bx
                        .type            n38_statement_end_bx, @function
n38_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:    add              rsp, 32;                             jmp   main_γ
                        .size            n38_statement_end_bx, .-n38_statement_end_bx
                        .type            n39_setexit_test_bx, @function
n39_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        cmp              qword ptr [rcx + 200], 0;            jz    .Lsetexit_test_α_96_1
                        call             rt_setexit_take@PLT
.Lsetexit_test_α_96_1:                                                        jmp   main_γ
                        .size            n39_setexit_test_bx, .-n39_setexit_test_bx
                        .type            n40_goto_bx, @function
n40_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_goto_α:                                                                   jmp   n12_statement_begin_α
n40_goto_β:                                                                   jmp   main_ω
                        .size            n40_goto_bx, .-n40_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        call             sno_setexit_fire_on_end@PLT
                        push             rax                                  # gc_poll bb_glue_flat.cpp:43
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            1719333375322
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            384
                        .quad            1
                        .quad            422212465065984
.Lgcmap_main_s:         .string          "main"
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
