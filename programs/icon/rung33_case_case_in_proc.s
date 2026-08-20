                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__classify:
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rcx
                        mov              qword ptr [rsp + 352], rdx
                        mov              rdi, rsp
                        add              rdi, 288
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
classify_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 56], rax;           jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n2_call_builtin_α
.Lx15_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_α:      mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn17:               .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn17]
                        lea              rsi, [rsp + 240]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n5_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n3_lit_string_α
n2_call_builtin_β:                                                            jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 3
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n4_assign_α
.Lx18_0:                .quad            .Lx18_0_s
.Lx18_0_s:              .string          "one"
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n6_call_builtin_α
.Lx20_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_α:      mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn22:               .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn22]
                        lea              rsi, [rsp + 144]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    n9_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_lit_string_α
n6_call_builtin_β:                                                            jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 3
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n8_assign_α
.Lx23_0:                .quad            .Lx23_0_s
.Lx23_0_s:              .string          "two"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 4
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n10_assign_α
.Lx25_0:                .quad            .Lx25_0_s
.Lx25_0_s:              .string          "many"
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 40], rax;           jmp   n12_return_α
#-----------------------------------------------------------------------------------------------------------------------
n12_return_α:           mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   classify_γ
#-----------------------------------------------------------------------------------------------------------------------
classify_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
classify_β:
                                                                              jmp   classify_ω
#-----------------------------------------------------------------------------------------------------------------------
classify_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 344]
                        add              rsp, 368;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
classify_ω:
                        mov              rcx, qword ptr [rsp + 352]
                        add              rsp, 368;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
classify_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx30_2]
                        lea              rdx, [rip + .Lx30_3];                jmp   FN__classify
.Lx30_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx30_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 384
                        mov              qword ptr [rsp + 360], rcx
                        mov              qword ptr [rsp + 368], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_call_proc_staged_α
.Lx40_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n32_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 16]                      # lit_integer
                        call             classify_dcα;                        jmp   .Lx42_2
.Lx42_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx42_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx42_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx42_240
                        add              rsp, 16;                             jmp   n34_lit_integer_α
.Lx42_240:                                                                    jmp   n33_call_builtin_icon_α
n32_call_proc_staged_β:                                                       jmp   n34_lit_integer_α
.Lx42_0:                .quad            .Lx42_0_s
.Lx42_0_s:              .string          "classify"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd44:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd44]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx43_240
                        add              rsp, 16;                             jmp   n34_lit_integer_α
.Lx43_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_call_proc_staged_α
.Lx45_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n35_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 16]                      # lit_integer
                        call             classify_dcα;                        jmp   .Lx47_2
.Lx47_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx47_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx47_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx47_240
                        add              rsp, 16;                             jmp   n37_lit_integer_α
.Lx47_240:                                                                    jmp   n36_call_builtin_icon_α
n35_call_proc_staged_β:                                                       jmp   n37_lit_integer_α
.Lx47_0:                .quad            .Lx47_0_s
.Lx47_0_s:              .string          "classify"
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd49:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd49]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx48_240
                        add              rsp, 16;                             jmp   n37_lit_integer_α
.Lx48_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_call_proc_staged_α
.Lx50_0:                .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n38_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 16]                      # lit_integer
                        call             classify_dcα;                        jmp   .Lx52_2
.Lx52_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx52_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx52_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx52_240
                        add              rsp, 16
                        add              rsp, 112;                            jmp   main_ω
.Lx52_240:                                                                    jmp   n39_call_builtin_icon_α
n38_call_proc_staged_β:                                                       jmp   main_ω
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          "classify"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd54:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd54]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx53_240
                        add              rsp, 16
                        add              rsp, 128;                            jmp   main_ω
.Lx53_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 144;                            jmp   main_γ
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "classify"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__classify
                        .quad            classify_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            304
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
