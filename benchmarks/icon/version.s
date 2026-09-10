                        .intel_syntax    noprefix
                        .text
                        .file            1 "/home/claude_coo/corpus/benchmarks/icon/version.icn"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 240
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_5_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n1_lit_string_α
.Llit_integer_α_5_0:    .quad            4
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 144], 2             # result
                        mov              dword ptr [rbp + 148], 51
                        mov              rax, qword ptr [rip + .Llit_string_α_6_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n2_call_α
.Llit_string_α_6_0:     .quad            .Llit_string_α_6_0_s
.Llit_string_α_6_0_s:   .string          "/home/claude_coo/corpus/benchmarks/icon/version.icn"
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lcall_α_bynamefn3:     .string          "ICN$LINE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefn3]
                        lea              rsi, [rbp + 96]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524476
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n3_kw_icon_α
                                                                              jmp   n3_kw_icon_α
n2_call_β:              mov              r11, 3;                              jmp   n3_kw_icon_α
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_kw_icon_bx, @function
n3_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_kw_icon_α:           mov              r11, 4
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_8_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n4_call_icon_α
n3_kw_icon_β:           mov              r11, 4;                              jmp   main_ω
.Lkw_icon_α_8_0:        .quad            .Lkw_icon_α_8_0_s
.Lkw_icon_α_8_0_s:      .string          "&version"
                        .size            n3_kw_icon_bx, .-n3_kw_icon_bx
                        .type            n4_call_icon_bx, @function
n4_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_icon_α:         mov              r11, 5
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn10:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn10]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n4_call_icon_β:         mov              r11, 5;                              jmp   main_ω
                        .size            n4_call_icon_bx, .-n4_call_icon_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lmain_α_9_248
                        .section         .rodata
.Licn_trace_nm11:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm11]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_9_248:         mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lmain_α_9_249
                        .section         .rodata
.Licn_trace_nm12:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm12]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_9_249:         mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
