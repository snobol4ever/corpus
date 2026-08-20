                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              rdi, rsp
                        add              rdi, 272
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n1_assign_α
.Lx13_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 3
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n3_scan_enter_α
.Lx15_0:                .quad            .Lx15_0_s
.Lx15_0_s:              .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n3_scan_enter_α:        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n4_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_charset_α:       mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], -1
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n5_scan_any_α
.Lx18_0:                .quad            .Lx18_0_s
.Lx18_0_s:              .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n5_scan_any_α:          mov              eax, r14d
                        cmp              eax, r15d;                           jge   n10_scan_α
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx20_0]
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax;                            je    n10_scan_α
                        mov              qword ptr [rsp + 192], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 200], rax;          jmp   n6_lit_integer_α
.Lx20_0:                .quad            .Lx20_0_s
.Lx20_0_s:              .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n7_assign_α
.Lx21_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n8_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n8_conjunction_α:       mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax;          jmp   n9_scan_α
n8_conjunction_β:                                                             jmp   n10_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n9_scan_α:              mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 80]
                        mov              r14, qword ptr [rsp + 88]
                        mov              r15, qword ptr [rsp + 96];           jmp   n11_var_α
n9_scan_β:                                                                    jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_scan_α:             lea              rdi, [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 80]
                        mov              r14, qword ptr [rsp + 88]
                        mov              r15, qword ptr [rsp + 96];           jmp   n11_var_α
n10_scan_β:                                                                   jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 56], rax;           jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn31:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn31]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_γ
n12_call_builtin_icon_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        and              rsp, -16
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
