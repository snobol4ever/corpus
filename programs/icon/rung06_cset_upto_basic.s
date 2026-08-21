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
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rcx
                        mov              qword ptr [rsp + 224], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 11
                        mov              rax, qword ptr [rip + .Lx7_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n1_scan_enter_α
.Lx7_0:                 .quad            .Lx7_0_s
.Lx7_0_s:               .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n1_scan_enter_α:        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n2_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_charset_α:       mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], -1
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n3_scan_upto_α
.Lx10_0:                .quad            .Lx10_0_s
.Lx10_0_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n3_scan_upto_α:         mov              qword ptr [rsp + 144], r14
.Lx12_0:                mov              rax, qword ptr [rsp + 144]
                        cmp              rax, r15;                            jge   n6_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx12_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx12_1
                        mov              qword ptr [rsp + 128], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 136], rax;          jmp   n4_call_builtin_icon_α
.Lx12_1:                inc              qword ptr [rsp + 144];               jmp   .Lx12_0
n3_scan_upto_β:         inc              qword ptr [rsp + 144];               jmp   .Lx12_0
.Lx12_2:                .quad            .Lx12_2_s
.Lx12_2_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α: mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn14:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn14]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n3_scan_upto_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_scan_α
n4_call_builtin_icon_β:                                                       jmp   n3_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n5_scan_α:              mov              rax, qword ptr [rsp + 80]
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
                        mov              r15, qword ptr [rsp + 32];           jmp   main_ω
n5_scan_β:                                                                    jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_scan_α:              lea              rdi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 16]
                        mov              r14, qword ptr [rsp + 24]
                        mov              r15, qword ptr [rsp + 32];           jmp   main_ω
n6_scan_β:                                                                    jmp   main_ω
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
