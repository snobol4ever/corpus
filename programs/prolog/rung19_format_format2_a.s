                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rt_gcheap_warmup@PLT
                        call             rt_plw_floor_bypass_on@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                              jmp   main_α
.Lmain_zf_γ:            xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:            mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rcx
                        mov              qword ptr [rsp + 320], rdx
                        mov              qword ptr [rsp + 328], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 304
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx10_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx10_101
.Lx10_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx10_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx10_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx10_101
.Lx10_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx10_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 10
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n2_lit_string_α
.Lx11_0:                .quad            .Lx11_0_s
.Lx11_0_s:              .string          "hello ~a~n"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 1
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n3_lit_string_α
.Lx12_0:                .quad            .Lx12_0_s
.Lx12_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 5
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n4_lit_string_α
.Lx13_0:                .quad            .Lx13_0_s
.Lx13_0_s:              .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n5_call_builtin_prolog_α
.Lx14_0:                .quad            .Lx14_0_s
.Lx14_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_prolog_α:
                        mov              r11, 6
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n9_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_call_builtin_prolog_α
n5_call_builtin_prolog_β:
                        mov              r11, 6;                              jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              r11, 7
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn17:               .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn17]
                        lea              rsi, [rsp + 112]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n9_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_move_label_α
n6_call_builtin_prolog_β:
                        mov              r11, 7;                              jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_move_label_α:        mov              r11, 8
                        lea              rax, [rip + n9_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n8_disjunction_α:       mov              r11, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n8_disjunction_β:       mov              r11, 9;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              r11, 10
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_ω
n9_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n8_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 312]
                        add              rsp, 336;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 320]
                        add              rsp, 336;                            jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
