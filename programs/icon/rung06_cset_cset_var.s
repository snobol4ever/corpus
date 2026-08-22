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
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              rdi, rsp
                        add              rdi, 208
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_charset_α:       mov              r11, 1
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], -1
                        mov              rax, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n1_assign_α
.Lx9_0:                 .quad            .Lx9_0_s
.Lx9_0_s:               .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 4
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n3_scan_enter_α
.Lx11_0:                .quad            .Lx11_0_s
.Lx11_0_s:              .string          "icon"
#-----------------------------------------------------------------------------------------------------------------------
n3_scan_enter_α:        mov              r11, 4
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              r11, 5
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 152], rax;          jmp   n5_scan_any_α
#-----------------------------------------------------------------------------------------------------------------------
n5_scan_any_α:          mov              r11, 6
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n8_scan_α
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 152]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        test             rax, rax;                            je    n8_scan_α
                        mov              qword ptr [rsp + 128], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 136], rax;          jmp   n6_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α: mov              r11, 7
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn19:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn19]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n8_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_scan_α
n6_call_builtin_icon_β: mov              r11, 7;                              jmp   n8_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n7_scan_α:              mov              r11, 8
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 16]
                        mov              r14, qword ptr [rsp + 24]
                        mov              r15, qword ptr [rsp + 32];           jmp   main_γ
n7_scan_β:              mov              r11, 8;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_scan_α:              mov              r11, 9
                        lea              rdi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 16]
                        mov              r14, qword ptr [rsp + 24]
                        mov              r15, qword ptr [rsp + 32];           jmp   main_ω
n8_scan_β:              mov              r11, 9;                              jmp   main_ω
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
