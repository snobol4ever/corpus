                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__p0:
                        sub              rsp, 112
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        sub              rsp, 16
                        mov              r11, 1
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx2_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_call_proc_staged_α
.Lx2_0:                 .quad            .Lx2_0_s
.Lx2_0_s:               .string          "p0"
#-----------------------------------------------------------------------------------------------------------------------
n1_call_proc_staged_α:  sub              rsp, 16
                        mov              r11, 2
                        mov              edi, 13
                        lea              rsi, [rsp + 16]                      # lit_string
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det1@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx4_1
                        lea              rcx, [rip + .Lx4_4]
                        push             rcx
                        lea              rcx, [rip + .Lx4_3]
                        push             rcx;                                 jmp   rax
.Lx4_3:                 add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx4_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_named_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx4_2
.Lx4_4:                 add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx4_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_named_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx4_2
.Lx4_1:                 call             rt_faildescr@PLT
.Lx4_2:                 mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx4_29
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
.Lx4_29:                mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx4_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   p0_ω
.Lx4_240:               add              rsp, 32;                             jmp   p0_γ
n1_call_proc_staged_β:  mov              r11, 2;                              jmp   p0_ω
.Lx4_0:                 .quad            .Lx4_0_s
.Lx4_0_s:               .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
p0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p0_β:
                                                                              jmp   p0_ω
#-----------------------------------------------------------------------------------------------------------------------
p0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 112;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
p0_ω:
                        add              rsp, 112;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
p0_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx5_3]
                        push             rcx
                        lea              rcx, [rip + .Lx5_2]
                        push             rcx;                                 jmp   FN__p0
.Lx5_2:                 add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx5_3:                 add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__p1:
                        sub              rsp, 192
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 96], 2              # result
                        mov              dword ptr [rsp + 100], 2
                        mov              rax, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n7_var_α
.Lx9_0:                 .quad            .Lx9_0_s
.Lx9_0_s:               .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              r11, 4
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax;          jmp   n8_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_proc_staged_α:  mov              r11, 5
                        mov              edi, 13
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx13_1
                        lea              rcx, [rip + .Lx13_4]
                        push             rcx
                        lea              rcx, [rip + .Lx13_3]
                        push             rcx;                                 jmp   rax
.Lx13_3:                add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx13_2
.Lx13_4:                add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx13_2
.Lx13_1:                call             rt_faildescr@PLT
.Lx13_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx13_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
.Lx13_29:               mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    p1_ω
                                                                              jmp   p1_γ
n8_call_proc_staged_β:  mov              r11, 5;                              jmp   p1_ω
.Lx13_0:                .quad            .Lx13_0_s
.Lx13_0_s:              .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
p1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p1_β:
                                                                              jmp   p1_ω
#-----------------------------------------------------------------------------------------------------------------------
p1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 192;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
p1_ω:
                        add              rsp, 192;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
p1_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx14_3]
                        push             rcx
                        lea              rcx, [rip + .Lx14_2]
                        push             rcx;                                 jmp   FN__p1
.Lx14_2:                add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx14_3:                add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__p2:
                        sub              rsp, 256
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 6
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 2
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n16_var_α
.Lx19_0:                .quad            .Lx19_0_s
.Lx19_0_s:              .string          "p2"
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 7
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax;          jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              r11, 8
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 168], rax;          jmp   n18_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_proc_staged_α: mov              r11, 9
                        mov              edi, 13
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 144]
                        lea              rcx, [rsp + 160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx25_1
                        lea              rcx, [rip + .Lx25_4]
                        push             rcx
                        lea              rcx, [rip + .Lx25_3]
                        push             rcx;                                 jmp   rax
.Lx25_3:                add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx25_2
.Lx25_4:                add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx25_2
.Lx25_1:                call             rt_faildescr@PLT
.Lx25_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx25_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
.Lx25_29:               mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    p2_ω
                                                                              jmp   p2_γ
n18_call_proc_staged_β: mov              r11, 9;                              jmp   p2_ω
.Lx25_0:                .quad            .Lx25_0_s
.Lx25_0_s:              .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
p2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p2_β:
                                                                              jmp   p2_ω
#-----------------------------------------------------------------------------------------------------------------------
p2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 256;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
p2_ω:
                        add              rsp, 256;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
p2_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx26_3]
                        push             rcx
                        lea              rcx, [rip + .Lx26_2]
                        push             rcx;                                 jmp   FN__p2
.Lx26_2:                add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx26_3:                add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__p3:
                        sub              rsp, 320
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 10
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n28_var_α
.Lx32_0:                .quad            .Lx32_0_s
.Lx32_0_s:              .string          "p3"
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              mov              r11, 11
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax;          jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              mov              r11, 12
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 200], rax;          jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              r11, 13
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 216], rax;          jmp   n31_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_proc_staged_α: mov              r11, 14
                        mov              edi, 13
                        lea              rsi, [rsp + 160]
                        lea              rdx, [rsp + 176]
                        lea              rcx, [rsp + 192]
                        lea              r8, [rsp + 208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx40_1
                        lea              rcx, [rip + .Lx40_4]
                        push             rcx
                        lea              rcx, [rip + .Lx40_3]
                        push             rcx;                                 jmp   rax
.Lx40_3:                add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx40_2
.Lx40_4:                add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx40_2
.Lx40_1:                call             rt_faildescr@PLT
.Lx40_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx40_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
.Lx40_29:               mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    p3_ω
                                                                              jmp   p3_γ
n31_call_proc_staged_β: mov              r11, 14;                             jmp   p3_ω
.Lx40_0:                .quad            .Lx40_0_s
.Lx40_0_s:              .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
p3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p3_β:
                                                                              jmp   p3_ω
#-----------------------------------------------------------------------------------------------------------------------
p3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 320;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
p3_ω:
                        add              rsp, 320;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
p3_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx41_3]
                        push             rcx
                        lea              rcx, [rip + .Lx41_2]
                        push             rcx;                                 jmp   FN__p3
.Lx41_2:                add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx41_3:                add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__p4:
                        sub              rsp, 384
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 2
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n43_var_α
.Lx48_0:                .quad            .Lx48_0_s
.Lx48_0_s:              .string          "p4"
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              mov              r11, 16
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              mov              r11, 17
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 232], rax;          jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              mov              r11, 18
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 248], rax;          jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              mov              r11, 19
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 264], rax;          jmp   n47_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α: mov              r11, 20
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx58_200
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx58_201
.Lx58_200:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx58_201:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx58_202
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx58_203
.Lx58_202:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx58_203:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx58_204
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx58_205
.Lx58_204:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx58_205:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx58_206
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx58_207
.Lx58_206:              mov              edi, 3
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx58_207:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx58_208
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx58_209
.Lx58_208:              mov              edi, 4
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx58_209:              mov              edi, 13
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx58_1
                        lea              rcx, [rip + .Lx58_4]
                        push             rcx
                        lea              rcx, [rip + .Lx58_3]
                        push             rcx;                                 jmp   rax
.Lx58_3:                add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx58_2
.Lx58_4:                add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx58_2
.Lx58_1:                call             rt_faildescr@PLT
.Lx58_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx58_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx58_29:               mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    p4_ω
                                                                              jmp   p4_γ
n47_call_proc_staged_β: mov              r11, 20;                             jmp   p4_ω
.Lx58_0:                .quad            .Lx58_0_s
.Lx58_0_s:              .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
p4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p4_β:
                                                                              jmp   p4_ω
#-----------------------------------------------------------------------------------------------------------------------
p4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 384;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
p4_ω:
                        add              rsp, 384;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
p4_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r8
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 24]
                        mov              edi, 3
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx59_3]
                        push             rcx
                        lea              rcx, [rip + .Lx59_2]
                        push             rcx;                                 jmp   FN__p4
.Lx59_2:                add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx59_3:                add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__p5:
                        sub              rsp, 448
                        mov              rdi, rsp
                        mov              esi, 5
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              r11, 21
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n61_var_α
.Lx67_0:                .quad            .Lx67_0_s
.Lx67_0_s:              .string          "p5"
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              mov              r11, 22
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 248], rax;          jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:              mov              r11, 23
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 264], rax;          jmp   n63_var_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              mov              r11, 24
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 280], rax;          jmp   n64_var_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              mov              r11, 25
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 296], rax;          jmp   n65_var_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              mov              r11, 26
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 312], rax;          jmp   n66_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_proc_staged_α: mov              r11, 27
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx79_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx79_201
.Lx79_200:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx79_201:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx79_202
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx79_203
.Lx79_202:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx79_203:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx79_204
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx79_205
.Lx79_204:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx79_205:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx79_206
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx79_207
.Lx79_206:              mov              edi, 3
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx79_207:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx79_208
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx79_209
.Lx79_208:              mov              edi, 4
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx79_209:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx79_210
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lx79_211
.Lx79_210:              mov              edi, 5
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx79_211:              mov              edi, 13
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx79_1
                        lea              rcx, [rip + .Lx79_4]
                        push             rcx
                        lea              rcx, [rip + .Lx79_3]
                        push             rcx;                                 jmp   rax
.Lx79_3:                add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx79_2
.Lx79_4:                add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx79_2
.Lx79_1:                call             rt_faildescr@PLT
.Lx79_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx79_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx79_29:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    p5_ω
                                                                              jmp   p5_γ
n66_call_proc_staged_β: mov              r11, 27;                             jmp   p5_ω
.Lx79_0:                .quad            .Lx79_0_s
.Lx79_0_s:              .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
p5_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p5_β:
                                                                              jmp   p5_ω
#-----------------------------------------------------------------------------------------------------------------------
p5_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 448;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
p5_ω:
                        add              rsp, 448;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__p6:
                        sub              rsp, 512
                        mov              rdi, rsp
                        mov              esi, 6
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p6_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 2
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n81_var_α
.Lx88_0:                .quad            .Lx88_0_s
.Lx88_0_s:              .string          "p6"
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              mov              r11, 29
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n82_var_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              mov              r11, 30
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 296], rax;          jmp   n83_var_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              mov              r11, 31
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 312], rax;          jmp   n84_var_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              mov              r11, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 328], rax;          jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:              mov              r11, 33
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 344], rax;          jmp   n86_var_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 360], rax;          jmp   n87_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α: mov              r11, 35
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx102_200
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx102_201
.Lx102_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx102_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx102_202
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx102_203
.Lx102_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx102_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx102_204
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx102_205
.Lx102_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx102_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx102_206
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx102_207
.Lx102_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx102_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx102_208
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx102_209
.Lx102_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx102_209:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx102_210
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lx102_211
.Lx102_210:             mov              edi, 5
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx102_211:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx102_212
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 96], rax
                        mov              qword ptr [r8 + 104], rdx;           jmp   .Lx102_213
.Lx102_212:             mov              edi, 6
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx102_213:             mov              edi, 13
                        mov              esi, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx102_1
                        lea              rcx, [rip + .Lx102_4]
                        push             rcx
                        lea              rcx, [rip + .Lx102_3]
                        push             rcx;                                 jmp   rax
.Lx102_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx102_2
.Lx102_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx102_2
.Lx102_1:               call             rt_faildescr@PLT
.Lx102_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx102_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx102_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    p6_ω
                                                                              jmp   p6_γ
n87_call_proc_staged_β: mov              r11, 35;                             jmp   p6_ω
.Lx102_0:               .quad            .Lx102_0_s
.Lx102_0_s:             .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
p6_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p6_β:
                                                                              jmp   p6_ω
#-----------------------------------------------------------------------------------------------------------------------
p6_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 512;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
p6_ω:
                        add              rsp, 512;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__p7:
                        sub              rsp, 576
                        mov              rdi, rsp
                        mov              esi, 7
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p7_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              r11, 36
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 2
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n104_var_α
.Lx112_0:               .quad            .Lx112_0_s
.Lx112_0_s:             .string          "p7"
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:             mov              r11, 37
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 312], rax;          jmp   n105_var_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             mov              r11, 38
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 328], rax;          jmp   n106_var_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             mov              r11, 39
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 344], rax;          jmp   n107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             mov              r11, 40
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 360], rax;          jmp   n108_var_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             mov              r11, 41
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 376], rax;          jmp   n109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:             mov              r11, 42
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 392], rax;          jmp   n110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:             mov              r11, 43
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 408], rax;          jmp   n111_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_proc_staged_α:
                        mov              r11, 44
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx128_200
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx128_201
.Lx128_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx128_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx128_202
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx128_203
.Lx128_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx128_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx128_204
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx128_205
.Lx128_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx128_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx128_206
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx128_207
.Lx128_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx128_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx128_208
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx128_209
.Lx128_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx128_209:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx128_210
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lx128_211
.Lx128_210:             mov              edi, 5
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx128_211:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx128_212
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 96], rax
                        mov              qword ptr [r8 + 104], rdx;           jmp   .Lx128_213
.Lx128_212:             mov              edi, 6
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx128_213:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx128_214
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 112], rax
                        mov              qword ptr [r8 + 120], rdx;           jmp   .Lx128_215
.Lx128_214:             mov              edi, 7
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx128_215:             mov              edi, 13
                        mov              esi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx128_1
                        lea              rcx, [rip + .Lx128_4]
                        push             rcx
                        lea              rcx, [rip + .Lx128_3]
                        push             rcx;                                 jmp   rax
.Lx128_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx128_2
.Lx128_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx128_2
.Lx128_1:               call             rt_faildescr@PLT
.Lx128_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx128_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lx128_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    p7_ω
                                                                              jmp   p7_γ
n111_call_proc_staged_β:
                        mov              r11, 44;                             jmp   p7_ω
.Lx128_0:               .quad            .Lx128_0_s
.Lx128_0_s:             .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
p7_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p7_β:
                                                                              jmp   p7_ω
#-----------------------------------------------------------------------------------------------------------------------
p7_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 576;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
p7_ω:
                        add              rsp, 576;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__p8:
                        sub              rsp, 640
                        mov              rdi, rsp
                        mov              esi, 8
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p8_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:      mov              r11, 45
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 2
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n130_var_α
.Lx139_0:               .quad            .Lx139_0_s
.Lx139_0_s:             .string          "p8"
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             mov              r11, 46
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 344], rax;          jmp   n131_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             mov              r11, 47
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 360], rax;          jmp   n132_var_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             mov              r11, 48
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 376], rax;          jmp   n133_var_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             mov              r11, 49
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 392], rax;          jmp   n134_var_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             mov              r11, 50
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 408], rax;          jmp   n135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:             mov              r11, 51
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 424], rax;          jmp   n136_var_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             mov              r11, 52
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 440], rax;          jmp   n137_var_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             mov              r11, 53
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 456], rax;          jmp   n138_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_proc_staged_α:
                        mov              r11, 54
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx157_200
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx157_201
.Lx157_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx157_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx157_202
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx157_203
.Lx157_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx157_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx157_204
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx157_205
.Lx157_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx157_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx157_206
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx157_207
.Lx157_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx157_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx157_208
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx157_209
.Lx157_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx157_209:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx157_210
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lx157_211
.Lx157_210:             mov              edi, 5
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx157_211:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx157_212
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 96], rax
                        mov              qword ptr [r8 + 104], rdx;           jmp   .Lx157_213
.Lx157_212:             mov              edi, 6
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx157_213:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx157_214
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 112], rax
                        mov              qword ptr [r8 + 120], rdx;           jmp   .Lx157_215
.Lx157_214:             mov              edi, 7
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx157_215:             mov              edi, 8
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 13
                        mov              esi, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx157_1
                        lea              rcx, [rip + .Lx157_4]
                        push             rcx
                        lea              rcx, [rip + .Lx157_3]
                        push             rcx;                                 jmp   rax
.Lx157_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx157_2
.Lx157_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx157_2
.Lx157_1:               call             rt_faildescr@PLT
.Lx157_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx157_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
.Lx157_29:              mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    p8_ω
                                                                              jmp   p8_γ
n138_call_proc_staged_β:
                        mov              r11, 54;                             jmp   p8_ω
.Lx157_0:               .quad            .Lx157_0_s
.Lx157_0_s:             .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
p8_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p8_β:
                                                                              jmp   p8_ω
#-----------------------------------------------------------------------------------------------------------------------
p8_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 640;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
p8_ω:
                        add              rsp, 640;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__p9:
                        sub              rsp, 704
                        mov              rdi, rsp
                        mov              esi, 9
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p9_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:      mov              r11, 55
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 2
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n159_var_α
.Lx169_0:               .quad            .Lx169_0_s
.Lx169_0_s:             .string          "p9"
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             mov              r11, 56
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 376], rax;          jmp   n160_var_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:             mov              r11, 57
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 392], rax;          jmp   n161_var_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             mov              r11, 58
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 408], rax;          jmp   n162_var_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:             mov              r11, 59
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 424], rax;          jmp   n163_var_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:             mov              r11, 60
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 440], rax;          jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             mov              r11, 61
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 456], rax;          jmp   n165_var_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             mov              r11, 62
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 472], rax;          jmp   n166_var_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:             mov              r11, 63
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 488], rax;          jmp   n167_var_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             mov              r11, 64
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 504], rax;          jmp   n168_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n168_call_proc_staged_α:
                        mov              r11, 65
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx189_200
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx189_201
.Lx189_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx189_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx189_202
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx189_203
.Lx189_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx189_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx189_204
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx189_205
.Lx189_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx189_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx189_206
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx189_207
.Lx189_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx189_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx189_208
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx189_209
.Lx189_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx189_209:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx189_210
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lx189_211
.Lx189_210:             mov              edi, 5
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx189_211:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx189_212
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 96], rax
                        mov              qword ptr [r8 + 104], rdx;           jmp   .Lx189_213
.Lx189_212:             mov              edi, 6
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx189_213:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx189_214
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 112], rax
                        mov              qword ptr [r8 + 120], rdx;           jmp   .Lx189_215
.Lx189_214:             mov              edi, 7
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx189_215:             mov              edi, 8
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 9
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 13
                        mov              esi, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx189_1
                        lea              rcx, [rip + .Lx189_4]
                        push             rcx
                        lea              rcx, [rip + .Lx189_3]
                        push             rcx;                                 jmp   rax
.Lx189_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx189_2
.Lx189_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx189_2
.Lx189_1:               call             rt_faildescr@PLT
.Lx189_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx189_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
.Lx189_29:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    p9_ω
                                                                              jmp   p9_γ
n168_call_proc_staged_β:
                        mov              r11, 65;                             jmp   p9_ω
.Lx189_0:               .quad            .Lx189_0_s
.Lx189_0_s:             .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
p9_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p9_β:
                                                                              jmp   p9_ω
#-----------------------------------------------------------------------------------------------------------------------
p9_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 704;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
p9_ω:
                        add              rsp, 704;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__p10:
                        sub              rsp, 768
                        mov              rdi, rsp
                        mov              esi, 10
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p10_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      mov              r11, 66
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 3
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n191_var_α
.Lx202_0:               .quad            .Lx202_0_s
.Lx202_0_s:             .string          "p10"
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:             mov              r11, 67
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 408], rax;          jmp   n192_var_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:             mov              r11, 68
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 424], rax;          jmp   n193_var_α
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             mov              r11, 69
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 440], rax;          jmp   n194_var_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             mov              r11, 70
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 456], rax;          jmp   n195_var_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             mov              r11, 71
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 472], rax;          jmp   n196_var_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             mov              r11, 72
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 488], rax;          jmp   n197_var_α
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:             mov              r11, 73
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 504], rax;          jmp   n198_var_α
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:             mov              r11, 74
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 520], rax;          jmp   n199_var_α
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:             mov              r11, 75
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 536], rax;          jmp   n200_var_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             mov              r11, 76
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 552], rax;          jmp   n201_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n201_call_proc_staged_α:
                        mov              r11, 77
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx224_200
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx224_201
.Lx224_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx224_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx224_202
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx224_203
.Lx224_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx224_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx224_204
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx224_205
.Lx224_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx224_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx224_206
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx224_207
.Lx224_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx224_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx224_208
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx224_209
.Lx224_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx224_209:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx224_210
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lx224_211
.Lx224_210:             mov              edi, 5
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx224_211:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx224_212
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 96], rax
                        mov              qword ptr [r8 + 104], rdx;           jmp   .Lx224_213
.Lx224_212:             mov              edi, 6
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx224_213:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx224_214
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 112], rax
                        mov              qword ptr [r8 + 120], rdx;           jmp   .Lx224_215
.Lx224_214:             mov              edi, 7
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx224_215:             mov              edi, 8
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 9
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 10
                        mov              rsi, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 13
                        mov              esi, 11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx224_1
                        lea              rcx, [rip + .Lx224_4]
                        push             rcx
                        lea              rcx, [rip + .Lx224_3]
                        push             rcx;                                 jmp   rax
.Lx224_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx224_2
.Lx224_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx224_2
.Lx224_1:               call             rt_faildescr@PLT
.Lx224_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx224_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
.Lx224_29:              mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    p10_ω
                                                                              jmp   p10_γ
n201_call_proc_staged_β:
                        mov              r11, 77;                             jmp   p10_ω
.Lx224_0:               .quad            .Lx224_0_s
.Lx224_0_s:             .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
p10_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p10_β:
                                                                              jmp   p10_ω
#-----------------------------------------------------------------------------------------------------------------------
p10_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 768;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
p10_ω:
                        add              rsp, 768;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__p11:
                        sub              rsp, 832
                        mov              rdi, rsp
                        mov              esi, 11
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p11_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:      mov              r11, 78
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 3
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n226_var_α
.Lx238_0:               .quad            .Lx238_0_s
.Lx238_0_s:             .string          "p11"
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             mov              r11, 79
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 440], rax;          jmp   n227_var_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:             mov              r11, 80
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 456], rax;          jmp   n228_var_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:             mov              r11, 81
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 472], rax;          jmp   n229_var_α
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:             mov              r11, 82
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 488], rax;          jmp   n230_var_α
#-----------------------------------------------------------------------------------------------------------------------
n230_var_α:             mov              r11, 83
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 504], rax;          jmp   n231_var_α
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             mov              r11, 84
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 520], rax;          jmp   n232_var_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:             mov              r11, 85
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 536], rax;          jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             mov              r11, 86
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 552], rax;          jmp   n234_var_α
#-----------------------------------------------------------------------------------------------------------------------
n234_var_α:             mov              r11, 87
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 568], rax;          jmp   n235_var_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:             mov              r11, 88
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 584], rax;          jmp   n236_var_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             mov              r11, 89
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 600], rax;          jmp   n237_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n237_call_proc_staged_α:
                        mov              r11, 90
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx262_200
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx262_201
.Lx262_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx262_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx262_202
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx262_203
.Lx262_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx262_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx262_204
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx262_205
.Lx262_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx262_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx262_206
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx262_207
.Lx262_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx262_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx262_208
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx262_209
.Lx262_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx262_209:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx262_210
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lx262_211
.Lx262_210:             mov              edi, 5
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx262_211:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx262_212
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 96], rax
                        mov              qword ptr [r8 + 104], rdx;           jmp   .Lx262_213
.Lx262_212:             mov              edi, 6
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx262_213:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx262_214
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 112], rax
                        mov              qword ptr [r8 + 120], rdx;           jmp   .Lx262_215
.Lx262_214:             mov              edi, 7
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx262_215:             mov              edi, 8
                        mov              rsi, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 9
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 10
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 11
                        mov              rsi, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 13
                        mov              esi, 12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx262_1
                        lea              rcx, [rip + .Lx262_4]
                        push             rcx
                        lea              rcx, [rip + .Lx262_3]
                        push             rcx;                                 jmp   rax
.Lx262_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx262_2
.Lx262_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx262_2
.Lx262_1:               call             rt_faildescr@PLT
.Lx262_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx262_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
.Lx262_29:              mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    p11_ω
                                                                              jmp   p11_γ
n237_call_proc_staged_β:
                        mov              r11, 90;                             jmp   p11_ω
.Lx262_0:               .quad            .Lx262_0_s
.Lx262_0_s:             .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
p11_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p11_β:
                                                                              jmp   p11_ω
#-----------------------------------------------------------------------------------------------------------------------
p11_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 832;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
p11_ω:
                        add              rsp, 832;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__p12:
                        sub              rsp, 896
                        mov              rdi, rsp
                        mov              esi, 12
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p12_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:      mov              r11, 91
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 3
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n264_var_α
.Lx277_0:               .quad            .Lx277_0_s
.Lx277_0_s:             .string          "p12"
#-----------------------------------------------------------------------------------------------------------------------
n264_var_α:             mov              r11, 92
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 472], rax;          jmp   n265_var_α
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             mov              r11, 93
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 488], rax;          jmp   n266_var_α
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:             mov              r11, 94
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 504], rax;          jmp   n267_var_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:             mov              r11, 95
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 520], rax;          jmp   n268_var_α
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:             mov              r11, 96
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 536], rax;          jmp   n269_var_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:             mov              r11, 97
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 552], rax;          jmp   n270_var_α
#-----------------------------------------------------------------------------------------------------------------------
n270_var_α:             mov              r11, 98
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 568], rax;          jmp   n271_var_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:             mov              r11, 99
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 584], rax;          jmp   n272_var_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             mov              r11, 100
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 600], rax;          jmp   n273_var_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:             mov              r11, 101
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 616], rax;          jmp   n274_var_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:             mov              r11, 102
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 632], rax;          jmp   n275_var_α
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:             mov              r11, 103
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 648], rax;          jmp   n276_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n276_call_proc_staged_α:
                        mov              r11, 104
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx303_200
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx303_201
.Lx303_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx303_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx303_202
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx303_203
.Lx303_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx303_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx303_204
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx303_205
.Lx303_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx303_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx303_206
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx303_207
.Lx303_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx303_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx303_208
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx303_209
.Lx303_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx303_209:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx303_210
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lx303_211
.Lx303_210:             mov              edi, 5
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx303_211:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx303_212
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 96], rax
                        mov              qword ptr [r8 + 104], rdx;           jmp   .Lx303_213
.Lx303_212:             mov              edi, 6
                        mov              rsi, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx303_213:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx303_214
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 112], rax
                        mov              qword ptr [r8 + 120], rdx;           jmp   .Lx303_215
.Lx303_214:             mov              edi, 7
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx303_215:             mov              edi, 8
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 9
                        mov              rsi, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 10
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 11
                        mov              rsi, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 12
                        mov              rsi, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 13
                        mov              esi, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx303_1
                        lea              rcx, [rip + .Lx303_4]
                        push             rcx
                        lea              rcx, [rip + .Lx303_3]
                        push             rcx;                                 jmp   rax
.Lx303_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx303_2
.Lx303_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx303_2
.Lx303_1:               call             rt_faildescr@PLT
.Lx303_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx303_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
.Lx303_29:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    p12_ω
                                                                              jmp   p12_γ
n276_call_proc_staged_β:
                        mov              r11, 104;                            jmp   p12_ω
.Lx303_0:               .quad            .Lx303_0_s
.Lx303_0_s:             .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
p12_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p12_β:
                                                                              jmp   p12_ω
#-----------------------------------------------------------------------------------------------------------------------
p12_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 896;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
p12_ω:
                        add              rsp, 896;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__note:
                        sub              rsp, 432
                        mov              rdi, rsp
                        add              rdi, 336
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
note_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:             mov              r11, 105
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax;          jmp   n305_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n305_iterate_α:         mov              r11, 106
                        mov              qword ptr [rsp + 96], 0
.Lx320_0:               mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              rax, 104;                            je    n315_call_builtin_icon_α
                                                                              jmp   n306_assign_α
n305_iterate_β:         mov              r11, 106
                        inc              qword ptr [rsp + 96];                jmp   .Lx320_0
#-----------------------------------------------------------------------------------------------------------------------
n306_assign_α:          mov              r11, 107
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n307_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n307_bound_α:           mov              r11, 108
                        mov              qword ptr [rsp + 128], rsp;          jmp   n308_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n308_disjunction_α:     mov              r11, 109
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              dword ptr [rsp + 256], 0;            jmp   n313_var_α
n308_disjunction_as:    mov              r11, 109
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 0;                              jne   .Lx325_0
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax;          jmp   n309_lit_string_α
.Lx325_0:               cmp              eax, 1;                              jne   .Lx325_1
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 248], rax;          jmp   n309_lit_string_α
.Lx325_1:                                                                     jmp   n309_lit_string_α
n308_disjunction_β:     mov              r11, 109
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 0;                              je    n308_disjunction_af
                                                                              jmp   n308_disjunction_af
n308_disjunction_af:    mov              r11, 109
                        add              dword ptr [rsp + 256], 1
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 1;                              je    n312_lit_string_α
                                                                              jmp   n311_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_string_α:      mov              r11, 110
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 1
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n310_call_builtin_icon_α
.Lx326_0:               .quad            .Lx326_0_s
.Lx326_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n310_call_builtin_icon_α:
                        mov              r11, 111
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn328:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn328]
                        lea              rsi, [rsp + 192]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n308_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n311_unmark_α
n310_call_builtin_icon_β:
                        mov              r11, 111;                            jmp   n308_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n311_unmark_α:          mov              r11, 112
                        mov              rsp, qword ptr [rsp + 128];          jmp   n305_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:      mov              r11, 113
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n308_disjunction_as
n312_lit_string_β:      mov              r11, 113;                            jmp   n308_disjunction_af
.Lx331_0:               .quad            .Lx331_0_s
.Lx331_0_s:             .string          "~"
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             mov              r11, 114
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax;          jmp   n314_unop_test_α
n313_var_β:             mov              r11, 114;                            jmp   n308_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n314_unop_test_α:       mov              r11, 115
                        mov              eax, dword ptr [rsp + 336]
                        cmp              al, 104;                             je    n308_disjunction_af
                        cmp              eax, 0;                              je    n308_disjunction_af
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 280], rax;          jmp   n308_disjunction_as
n314_unop_test_β:       mov              r11, 115;                            jmp   n308_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_icon_α:
                        mov              r11, 116
                        .section         .rodata
.Lrkfn336:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn336]
                        lea              rsi, [rsp + 48]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    n316_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n316_return_α
n315_call_builtin_icon_β:
                        mov              r11, 116;                            jmp   n316_return_α
#-----------------------------------------------------------------------------------------------------------------------
n316_return_α:          mov              r11, 117
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   note_γ
#-----------------------------------------------------------------------------------------------------------------------
note_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
note_β:
                                                                              jmp   note_ω
#-----------------------------------------------------------------------------------------------------------------------
note_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 432;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
note_ω:
                        add              rsp, 432;                            jmp   qword ptr [rsp + 8]
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
                        sub              rsp, 5808
                        mov              rdi, rsp
                        add              rdi, 5680
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_integer_α:     mov              r11, 118
                        mov              qword ptr [rsp + 5328], 3            # result
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rsp + 5336], rax;         jmp   n339_lit_integer_α
.Lx508_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_integer_α:     mov              r11, 119
                        mov              qword ptr [rsp + 5344], 3            # result
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rsp + 5352], rax;         jmp   n340_lit_string_α
.Lx509_0:               .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:      mov              r11, 120
                        mov              qword ptr [rsp + 5360], 2            # result
                        mov              dword ptr [rsp + 5364], 5
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 5368], rax;         jmp   n341_lit_string_α
.Lx510_0:               .quad            .Lx510_0_s
.Lx510_0_s:             .string          "image"
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:      mov              r11, 121
                        mov              qword ptr [rsp + 5440], 2            # result
                        mov              dword ptr [rsp + 5444], 4
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rsp + 5448], rax;         jmp   n342_lit_integer_α
.Lx511_0:               .quad            .Lx511_0_s
.Lx511_0_s:             .string          "~==="
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_integer_α:     mov              r11, 122
                        mov              qword ptr [rsp + 5456], 3            # result
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rsp + 5464], rax;         jmp   n343_call_builtin_icon_α
.Lx512_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_icon_α:
                        mov              r11, 123
                        mov              rax, qword ptr [rsp + 5456]
                        mov              qword ptr [rsp + 5408], rax
                        mov              rax, qword ptr [rsp + 5464]
                        mov              qword ptr [rsp + 5416], rax
                        mov              rax, qword ptr [rsp + 5440]
                        mov              qword ptr [rsp + 5392], rax
                        mov              rax, qword ptr [rsp + 5448]
                        mov              qword ptr [rsp + 5400], rax
                        .section         .rodata
.Lrkfn514:              .string          "proc"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn514]
                        lea              rsi, [rsp + 5392]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262291
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 5376], rax
                        mov              qword ptr [rsp + 5384], rdx
                        cmp              al, 104;                             je    n359_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n344_proc_value_α
n343_call_builtin_icon_β:
                        mov              r11, 123;                            jmp   n359_var_α
#-----------------------------------------------------------------------------------------------------------------------
n344_proc_value_α:      mov              r11, 124
                        mov              rdi, qword ptr [rip + .Lx516_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx;         jmp   n345_proc_value_α
.Lx516_0:               .quad            .Lx516_0_s
.Lx516_0_s:             .string          "p0"
#-----------------------------------------------------------------------------------------------------------------------
n345_proc_value_α:      mov              r11, 125
                        mov              rdi, qword ptr [rip + .Lx518_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5488], rax
                        mov              qword ptr [rsp + 5496], rdx;         jmp   n346_proc_value_α
.Lx518_0:               .quad            .Lx518_0_s
.Lx518_0_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n346_proc_value_α:      mov              r11, 126
                        mov              rdi, qword ptr [rip + .Lx520_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5504], rax
                        mov              qword ptr [rsp + 5512], rdx;         jmp   n347_proc_value_α
.Lx520_0:               .quad            .Lx520_0_s
.Lx520_0_s:             .string          "p2"
#-----------------------------------------------------------------------------------------------------------------------
n347_proc_value_α:      mov              r11, 127
                        mov              rdi, qword ptr [rip + .Lx522_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5520], rax
                        mov              qword ptr [rsp + 5528], rdx;         jmp   n348_proc_value_α
.Lx522_0:               .quad            .Lx522_0_s
.Lx522_0_s:             .string          "p3"
#-----------------------------------------------------------------------------------------------------------------------
n348_proc_value_α:      mov              r11, 128
                        mov              rdi, qword ptr [rip + .Lx524_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5536], rax
                        mov              qword ptr [rsp + 5544], rdx;         jmp   n349_proc_value_α
.Lx524_0:               .quad            .Lx524_0_s
.Lx524_0_s:             .string          "p4"
#-----------------------------------------------------------------------------------------------------------------------
n349_proc_value_α:      mov              r11, 129
                        mov              rdi, qword ptr [rip + .Lx526_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5552], rax
                        mov              qword ptr [rsp + 5560], rdx;         jmp   n350_proc_value_α
.Lx526_0:               .quad            .Lx526_0_s
.Lx526_0_s:             .string          "p5"
#-----------------------------------------------------------------------------------------------------------------------
n350_proc_value_α:      mov              r11, 130
                        mov              rdi, qword ptr [rip + .Lx528_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx;         jmp   n351_proc_value_α
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "p6"
#-----------------------------------------------------------------------------------------------------------------------
n351_proc_value_α:      mov              r11, 131
                        mov              rdi, qword ptr [rip + .Lx530_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5584], rax
                        mov              qword ptr [rsp + 5592], rdx;         jmp   n352_proc_value_α
.Lx530_0:               .quad            .Lx530_0_s
.Lx530_0_s:             .string          "p7"
#-----------------------------------------------------------------------------------------------------------------------
n352_proc_value_α:      mov              r11, 132
                        mov              rdi, qword ptr [rip + .Lx532_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5600], rax
                        mov              qword ptr [rsp + 5608], rdx;         jmp   n353_proc_value_α
.Lx532_0:               .quad            .Lx532_0_s
.Lx532_0_s:             .string          "p8"
#-----------------------------------------------------------------------------------------------------------------------
n353_proc_value_α:      mov              r11, 133
                        mov              rdi, qword ptr [rip + .Lx534_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5616], rax
                        mov              qword ptr [rsp + 5624], rdx;         jmp   n354_proc_value_α
.Lx534_0:               .quad            .Lx534_0_s
.Lx534_0_s:             .string          "p9"
#-----------------------------------------------------------------------------------------------------------------------
n354_proc_value_α:      mov              r11, 134
                        mov              rdi, qword ptr [rip + .Lx536_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5632], rax
                        mov              qword ptr [rsp + 5640], rdx;         jmp   n355_proc_value_α
.Lx536_0:               .quad            .Lx536_0_s
.Lx536_0_s:             .string          "p10"
#-----------------------------------------------------------------------------------------------------------------------
n355_proc_value_α:      mov              r11, 135
                        mov              rdi, qword ptr [rip + .Lx538_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5648], rax
                        mov              qword ptr [rsp + 5656], rdx;         jmp   n356_proc_value_α
.Lx538_0:               .quad            .Lx538_0_s
.Lx538_0_s:             .string          "p11"
#-----------------------------------------------------------------------------------------------------------------------
n356_proc_value_α:      mov              r11, 136
                        mov              rdi, qword ptr [rip + .Lx540_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx;         jmp   n357_make_list_α
.Lx540_0:               .quad            .Lx540_0_s
.Lx540_0_s:             .string          "p12"
#-----------------------------------------------------------------------------------------------------------------------
n357_make_list_α:       mov              r11, 137
                        mov              rax, qword ptr [rsp + 5328]
                        mov              qword ptr [rsp + 5056], rax
                        mov              rax, qword ptr [rsp + 5336]
                        mov              qword ptr [rsp + 5064], rax
                        mov              rax, qword ptr [rsp + 5344]
                        mov              qword ptr [rsp + 5072], rax
                        mov              rax, qword ptr [rsp + 5352]
                        mov              qword ptr [rsp + 5080], rax
                        mov              rax, qword ptr [rsp + 5360]
                        mov              qword ptr [rsp + 5088], rax
                        mov              rax, qword ptr [rsp + 5368]
                        mov              qword ptr [rsp + 5096], rax
                        mov              rax, qword ptr [rsp + 5376]
                        mov              qword ptr [rsp + 5104], rax
                        mov              rax, qword ptr [rsp + 5384]
                        mov              qword ptr [rsp + 5112], rax
                        mov              rax, qword ptr [rsp + 5472]
                        mov              qword ptr [rsp + 5120], rax
                        mov              rax, qword ptr [rsp + 5480]
                        mov              qword ptr [rsp + 5128], rax
                        mov              rax, qword ptr [rsp + 5488]
                        mov              qword ptr [rsp + 5136], rax
                        mov              rax, qword ptr [rsp + 5496]
                        mov              qword ptr [rsp + 5144], rax
                        mov              rax, qword ptr [rsp + 5504]
                        mov              qword ptr [rsp + 5152], rax
                        mov              rax, qword ptr [rsp + 5512]
                        mov              qword ptr [rsp + 5160], rax
                        mov              rax, qword ptr [rsp + 5520]
                        mov              qword ptr [rsp + 5168], rax
                        mov              rax, qword ptr [rsp + 5528]
                        mov              qword ptr [rsp + 5176], rax
                        mov              rax, qword ptr [rsp + 5536]
                        mov              qword ptr [rsp + 5184], rax
                        mov              rax, qword ptr [rsp + 5544]
                        mov              qword ptr [rsp + 5192], rax
                        mov              rax, qword ptr [rsp + 5552]
                        mov              qword ptr [rsp + 5200], rax
                        mov              rax, qword ptr [rsp + 5560]
                        mov              qword ptr [rsp + 5208], rax
                        mov              rax, qword ptr [rsp + 5568]
                        mov              qword ptr [rsp + 5216], rax
                        mov              rax, qword ptr [rsp + 5576]
                        mov              qword ptr [rsp + 5224], rax
                        mov              rax, qword ptr [rsp + 5584]
                        mov              qword ptr [rsp + 5232], rax
                        mov              rax, qword ptr [rsp + 5592]
                        mov              qword ptr [rsp + 5240], rax
                        mov              rax, qword ptr [rsp + 5600]
                        mov              qword ptr [rsp + 5248], rax
                        mov              rax, qword ptr [rsp + 5608]
                        mov              qword ptr [rsp + 5256], rax
                        mov              rax, qword ptr [rsp + 5616]
                        mov              qword ptr [rsp + 5264], rax
                        mov              rax, qword ptr [rsp + 5624]
                        mov              qword ptr [rsp + 5272], rax
                        mov              rax, qword ptr [rsp + 5632]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 5640]
                        mov              qword ptr [rsp + 5288], rax
                        mov              rax, qword ptr [rsp + 5648]
                        mov              qword ptr [rsp + 5296], rax
                        mov              rax, qword ptr [rsp + 5656]
                        mov              qword ptr [rsp + 5304], rax
                        mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 5312], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 5320], rax
                        lea              rdi, [rsp + 5056]
                        mov              esi, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5040], rax
                        mov              qword ptr [rsp + 5048], rdx;         jmp   n358_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n358_assign_α:          mov              r11, 138
                        mov              rax, qword ptr [rsp + 5040]
                        mov              rdx, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 5696], rax
                        mov              qword ptr [rsp + 5704], rdx;         jmp   n359_var_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:             mov              r11, 139
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 4960], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 4968], rax;         jmp   n360_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n360_iterate_α:         mov              r11, 140
                        mov              qword ptr [rsp + 4944], 0
.Lx547_0:               mov              rdi, qword ptr [rsp + 4960]
                        mov              rsi, qword ptr [rsp + 4968]
                        mov              rdx, qword ptr [rsp + 4944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx
                        cmp              rax, 104;                            je    n363_var_α
                                                                              jmp   n361_call_value_α
n360_iterate_β:         mov              r11, 140
                        inc              qword ptr [rsp + 4944];              jmp   .Lx547_0
#-----------------------------------------------------------------------------------------------------------------------
n361_call_value_α:      mov              r11, 141
                        mov              qword ptr [rsp + 4992], 0
                        mov              rdi, qword ptr [rsp + 4928]
                        mov              rsi, qword ptr [rsp + 4936]
                        lea              rdx, [rsp + 4992]
                        mov              ecx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx549_7
                        lea              rcx, [rip + .Lx549_4]
                        push             rcx
                        lea              rcx, [rip + .Lx549_3]
                        push             rcx;                                 jmp   rax
.Lx549_3:               mov              qword ptr [rsp + 5000], rsp
                        mov              rax, qword ptr [rsp + 4992]
                        test             rax, rax;                            jne   .Lx549_5
                        mov              qword ptr [rsp + 4992], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx549_2
.Lx549_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx549_2
.Lx549_4:               mov              qword ptr [rsp + 5000], rsp
                        mov              rax, qword ptr [rsp + 4992]
                        test             rax, rax;                            jne   .Lx549_6
                        mov              qword ptr [rsp + 4992], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx549_2
.Lx549_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx549_2
.Lx549_7:               mov              rdi, qword ptr [rsp + 4928]
                        mov              rsi, qword ptr [rsp + 4936]
                        lea              rdx, [rsp + 4992]
                        mov              ecx, 0
                        lea              r8, [rsp + 4992]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx549_2:               mov              qword ptr [rsp + 4976], rax
                        mov              qword ptr [rsp + 4984], rdx
                        cmp              al, 104;                             je    n360_iterate_β
                                                                              jmp   n362_call_builtin_icon_α
n361_call_value_β:      mov              r11, 141
                        mov              rax, qword ptr [rsp + 4992]
                        cmp              rax, 1;                              jne   .Lx549_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 5000];         jmp   qword ptr [rsp]
.Lx549_8:               lea              rdi, [rsp + 4992]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n360_iterate_β
                        mov              qword ptr [rsp + 4976], rax
                        mov              qword ptr [rsp + 4984], rdx;         jmp   n362_call_builtin_icon_α
                                                                              jmp   n360_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n362_call_builtin_icon_α:
                        mov              r11, 142
                        mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 4896], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 4904], rax
                        .section         .rodata
.Lrkfn551:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn551]
                        lea              rsi, [rsp + 4896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4880], rax
                        mov              qword ptr [rsp + 4888], rdx
                        cmp              al, 104;                             je    n361_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n361_call_value_β
n362_call_builtin_icon_β:
                        mov              r11, 142;                            jmp   n361_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n363_var_α:             mov              r11, 143
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 4768], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 4776], rax;         jmp   n364_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n364_iterate_α:         mov              r11, 144
                        mov              qword ptr [rsp + 4752], 0
.Lx555_0:               mov              rdi, qword ptr [rsp + 4768]
                        mov              rsi, qword ptr [rsp + 4776]
                        mov              rdx, qword ptr [rsp + 4752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4736], rax
                        mov              qword ptr [rsp + 4744], rdx
                        cmp              rax, 104;                            je    n368_var_α
                                                                              jmp   n365_lit_integer_α
n364_iterate_β:         mov              r11, 144
                        inc              qword ptr [rsp + 4752];              jmp   .Lx555_0
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_integer_α:     mov              r11, 145
                        mov              qword ptr [rsp + 4864], 3            # result
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rsp + 4872], rax;         jmp   n366_call_value_α
.Lx556_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n366_call_value_α:      mov              r11, 146
                        mov              rax, qword ptr [rsp + 4864]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 4872]
                        mov              qword ptr [rsp + 4808], rax
                        mov              qword ptr [rsp + 4816], 0
                        mov              rdi, qword ptr [rsp + 4736]
                        mov              rsi, qword ptr [rsp + 4744]
                        lea              rdx, [rsp + 4800]
                        mov              ecx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx558_7
                        lea              rcx, [rip + .Lx558_4]
                        push             rcx
                        lea              rcx, [rip + .Lx558_3]
                        push             rcx;                                 jmp   rax
.Lx558_3:               mov              qword ptr [rsp + 4824], rsp
                        mov              rax, qword ptr [rsp + 4816]
                        test             rax, rax;                            jne   .Lx558_5
                        mov              qword ptr [rsp + 4816], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx558_2
.Lx558_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx558_2
.Lx558_4:               mov              qword ptr [rsp + 4824], rsp
                        mov              rax, qword ptr [rsp + 4816]
                        test             rax, rax;                            jne   .Lx558_6
                        mov              qword ptr [rsp + 4816], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx558_2
.Lx558_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx558_2
.Lx558_7:               mov              rdi, qword ptr [rsp + 4736]
                        mov              rsi, qword ptr [rsp + 4744]
                        lea              rdx, [rsp + 4800]
                        mov              ecx, 1
                        lea              r8, [rsp + 4816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx558_2:               mov              qword ptr [rsp + 4784], rax
                        mov              qword ptr [rsp + 4792], rdx
                        cmp              al, 104;                             je    n364_iterate_β
                                                                              jmp   n367_call_builtin_icon_α
n366_call_value_β:      mov              r11, 146
                        mov              rax, qword ptr [rsp + 4816]
                        cmp              rax, 1;                              jne   .Lx558_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 4824];         jmp   qword ptr [rsp]
.Lx558_8:               lea              rdi, [rsp + 4816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n364_iterate_β
                        mov              qword ptr [rsp + 4784], rax
                        mov              qword ptr [rsp + 4792], rdx;         jmp   n367_call_builtin_icon_α
                                                                              jmp   n364_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n367_call_builtin_icon_α:
                        mov              r11, 147
                        mov              rax, qword ptr [rsp + 4784]
                        mov              qword ptr [rsp + 4704], rax
                        mov              rax, qword ptr [rsp + 4792]
                        mov              qword ptr [rsp + 4712], rax
                        .section         .rodata
.Lrkfn560:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn560]
                        lea              rsi, [rsp + 4704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4688], rax
                        mov              qword ptr [rsp + 4696], rdx
                        cmp              al, 104;                             je    n366_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n366_call_value_β
n367_call_builtin_icon_β:
                        mov              r11, 147;                            jmp   n366_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:             mov              r11, 148
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 4544], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 4552], rax;         jmp   n369_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n369_iterate_α:         mov              r11, 149
                        mov              qword ptr [rsp + 4528], 0
.Lx564_0:               mov              rdi, qword ptr [rsp + 4544]
                        mov              rsi, qword ptr [rsp + 4552]
                        mov              rdx, qword ptr [rsp + 4528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4512], rax
                        mov              qword ptr [rsp + 4520], rdx
                        cmp              rax, 104;                            je    n374_var_α
                                                                              jmp   n370_lit_integer_α
n369_iterate_β:         mov              r11, 149
                        inc              qword ptr [rsp + 4528];              jmp   .Lx564_0
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_integer_α:     mov              r11, 150
                        mov              qword ptr [rsp + 4656], 3            # result
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rsp + 4664], rax;         jmp   n371_lit_integer_α
.Lx565_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_integer_α:     mov              r11, 151
                        mov              qword ptr [rsp + 4672], 3            # result
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rsp + 4680], rax;         jmp   n372_call_value_α
.Lx566_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n372_call_value_α:      mov              r11, 152
                        mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 4576], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4584], rax
                        mov              rax, qword ptr [rsp + 4672]
                        mov              qword ptr [rsp + 4592], rax
                        mov              rax, qword ptr [rsp + 4680]
                        mov              qword ptr [rsp + 4600], rax
                        mov              qword ptr [rsp + 4608], 0
                        mov              rdi, qword ptr [rsp + 4512]
                        mov              rsi, qword ptr [rsp + 4520]
                        lea              rdx, [rsp + 4576]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx568_7
                        lea              rcx, [rip + .Lx568_4]
                        push             rcx
                        lea              rcx, [rip + .Lx568_3]
                        push             rcx;                                 jmp   rax
.Lx568_3:               mov              qword ptr [rsp + 4616], rsp
                        mov              rax, qword ptr [rsp + 4608]
                        test             rax, rax;                            jne   .Lx568_5
                        mov              qword ptr [rsp + 4608], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx568_2
.Lx568_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx568_2
.Lx568_4:               mov              qword ptr [rsp + 4616], rsp
                        mov              rax, qword ptr [rsp + 4608]
                        test             rax, rax;                            jne   .Lx568_6
                        mov              qword ptr [rsp + 4608], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx568_2
.Lx568_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx568_2
.Lx568_7:               mov              rdi, qword ptr [rsp + 4512]
                        mov              rsi, qword ptr [rsp + 4520]
                        lea              rdx, [rsp + 4576]
                        mov              ecx, 2
                        lea              r8, [rsp + 4608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx568_2:               mov              qword ptr [rsp + 4560], rax
                        mov              qword ptr [rsp + 4568], rdx
                        cmp              al, 104;                             je    n369_iterate_β
                                                                              jmp   n373_call_builtin_icon_α
n372_call_value_β:      mov              r11, 152
                        mov              rax, qword ptr [rsp + 4608]
                        cmp              rax, 1;                              jne   .Lx568_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 4616];         jmp   qword ptr [rsp]
.Lx568_8:               lea              rdi, [rsp + 4608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n369_iterate_β
                        mov              qword ptr [rsp + 4560], rax
                        mov              qword ptr [rsp + 4568], rdx;         jmp   n373_call_builtin_icon_α
                                                                              jmp   n369_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n373_call_builtin_icon_α:
                        mov              r11, 153
                        mov              rax, qword ptr [rsp + 4560]
                        mov              qword ptr [rsp + 4480], rax
                        mov              rax, qword ptr [rsp + 4568]
                        mov              qword ptr [rsp + 4488], rax
                        .section         .rodata
.Lrkfn570:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn570]
                        lea              rsi, [rsp + 4480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4464], rax
                        mov              qword ptr [rsp + 4472], rdx
                        cmp              al, 104;                             je    n372_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n372_call_value_β
n373_call_builtin_icon_β:
                        mov              r11, 153;                            jmp   n372_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n374_var_α:             mov              r11, 154
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 4296], rax;         jmp   n375_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n375_iterate_α:         mov              r11, 155
                        mov              qword ptr [rsp + 4272], 0
.Lx574_0:               mov              rdi, qword ptr [rsp + 4288]
                        mov              rsi, qword ptr [rsp + 4296]
                        mov              rdx, qword ptr [rsp + 4272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx
                        cmp              rax, 104;                            je    n381_var_α
                                                                              jmp   n376_lit_integer_α
n375_iterate_β:         mov              r11, 155
                        inc              qword ptr [rsp + 4272];              jmp   .Lx574_0
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_integer_α:     mov              r11, 156
                        mov              qword ptr [rsp + 4416], 3            # result
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rsp + 4424], rax;         jmp   n377_lit_integer_α
.Lx575_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_integer_α:     mov              r11, 157
                        mov              qword ptr [rsp + 4432], 3            # result
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n378_lit_integer_α
.Lx576_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_integer_α:     mov              r11, 158
                        mov              qword ptr [rsp + 4448], 3            # result
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 4456], rax;         jmp   n379_call_value_α
.Lx577_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n379_call_value_α:      mov              r11, 159
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 4328], rax
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 4336], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 4344], rax
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 4352], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 4360], rax
                        mov              qword ptr [rsp + 4368], 0
                        mov              rdi, qword ptr [rsp + 4256]
                        mov              rsi, qword ptr [rsp + 4264]
                        lea              rdx, [rsp + 4320]
                        mov              ecx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx579_7
                        lea              rcx, [rip + .Lx579_4]
                        push             rcx
                        lea              rcx, [rip + .Lx579_3]
                        push             rcx;                                 jmp   rax
.Lx579_3:               mov              qword ptr [rsp + 4376], rsp
                        mov              rax, qword ptr [rsp + 4368]
                        test             rax, rax;                            jne   .Lx579_5
                        mov              qword ptr [rsp + 4368], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx579_2
.Lx579_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx579_2
.Lx579_4:               mov              qword ptr [rsp + 4376], rsp
                        mov              rax, qword ptr [rsp + 4368]
                        test             rax, rax;                            jne   .Lx579_6
                        mov              qword ptr [rsp + 4368], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx579_2
.Lx579_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx579_2
.Lx579_7:               mov              rdi, qword ptr [rsp + 4256]
                        mov              rsi, qword ptr [rsp + 4264]
                        lea              rdx, [rsp + 4320]
                        mov              ecx, 3
                        lea              r8, [rsp + 4368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx579_2:               mov              qword ptr [rsp + 4304], rax
                        mov              qword ptr [rsp + 4312], rdx
                        cmp              al, 104;                             je    n375_iterate_β
                                                                              jmp   n380_call_builtin_icon_α
n379_call_value_β:      mov              r11, 159
                        mov              rax, qword ptr [rsp + 4368]
                        cmp              rax, 1;                              jne   .Lx579_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 4376];         jmp   qword ptr [rsp]
.Lx579_8:               lea              rdi, [rsp + 4368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n375_iterate_β
                        mov              qword ptr [rsp + 4304], rax
                        mov              qword ptr [rsp + 4312], rdx;         jmp   n380_call_builtin_icon_α
                                                                              jmp   n375_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n380_call_builtin_icon_α:
                        mov              r11, 160
                        mov              rax, qword ptr [rsp + 4304]
                        mov              qword ptr [rsp + 4224], rax
                        mov              rax, qword ptr [rsp + 4312]
                        mov              qword ptr [rsp + 4232], rax
                        .section         .rodata
.Lrkfn581:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn581]
                        lea              rsi, [rsp + 4224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4208], rax
                        mov              qword ptr [rsp + 4216], rdx
                        cmp              al, 104;                             je    n379_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n379_call_value_β
n380_call_builtin_icon_β:
                        mov              r11, 160;                            jmp   n379_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n381_var_α:             mov              r11, 161
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 4008], rax;         jmp   n382_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n382_iterate_α:         mov              r11, 162
                        mov              qword ptr [rsp + 3984], 0
.Lx585_0:               mov              rdi, qword ptr [rsp + 4000]
                        mov              rsi, qword ptr [rsp + 4008]
                        mov              rdx, qword ptr [rsp + 3984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx
                        cmp              rax, 104;                            je    n389_var_α
                                                                              jmp   n383_lit_integer_α
n382_iterate_β:         mov              r11, 162
                        inc              qword ptr [rsp + 3984];              jmp   .Lx585_0
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_integer_α:     mov              r11, 163
                        mov              qword ptr [rsp + 4144], 3            # result
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n384_lit_integer_α
.Lx586_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_integer_α:     mov              r11, 164
                        mov              qword ptr [rsp + 4160], 3            # result
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rsp + 4168], rax;         jmp   n385_lit_integer_α
.Lx587_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_integer_α:     mov              r11, 165
                        mov              qword ptr [rsp + 4176], 3            # result
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rsp + 4184], rax;         jmp   n386_lit_integer_α
.Lx588_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_integer_α:     mov              r11, 166
                        mov              qword ptr [rsp + 4192], 3            # result
                        mov              rax, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rsp + 4200], rax;         jmp   n387_call_value_α
.Lx589_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n387_call_value_α:      mov              r11, 167
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 4032], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 4040], rax
                        mov              rax, qword ptr [rsp + 4160]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 4168]
                        mov              qword ptr [rsp + 4056], rax
                        mov              rax, qword ptr [rsp + 4176]
                        mov              qword ptr [rsp + 4064], rax
                        mov              rax, qword ptr [rsp + 4184]
                        mov              qword ptr [rsp + 4072], rax
                        mov              rax, qword ptr [rsp + 4192]
                        mov              qword ptr [rsp + 4080], rax
                        mov              rax, qword ptr [rsp + 4200]
                        mov              qword ptr [rsp + 4088], rax
                        mov              qword ptr [rsp + 4096], 0
                        mov              rdi, qword ptr [rsp + 3968]
                        mov              rsi, qword ptr [rsp + 3976]
                        lea              rdx, [rsp + 4032]
                        mov              ecx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx591_7
                        lea              rcx, [rip + .Lx591_4]
                        push             rcx
                        lea              rcx, [rip + .Lx591_3]
                        push             rcx;                                 jmp   rax
.Lx591_3:               mov              qword ptr [rsp + 4104], rsp
                        mov              rax, qword ptr [rsp + 4096]
                        test             rax, rax;                            jne   .Lx591_5
                        mov              qword ptr [rsp + 4096], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx591_2
.Lx591_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx591_2
.Lx591_4:               mov              qword ptr [rsp + 4104], rsp
                        mov              rax, qword ptr [rsp + 4096]
                        test             rax, rax;                            jne   .Lx591_6
                        mov              qword ptr [rsp + 4096], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx591_2
.Lx591_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx591_2
.Lx591_7:               mov              rdi, qword ptr [rsp + 3968]
                        mov              rsi, qword ptr [rsp + 3976]
                        lea              rdx, [rsp + 4032]
                        mov              ecx, 4
                        lea              r8, [rsp + 4096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx591_2:               mov              qword ptr [rsp + 4016], rax
                        mov              qword ptr [rsp + 4024], rdx
                        cmp              al, 104;                             je    n382_iterate_β
                                                                              jmp   n388_call_builtin_icon_α
n387_call_value_β:      mov              r11, 167
                        mov              rax, qword ptr [rsp + 4096]
                        cmp              rax, 1;                              jne   .Lx591_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 4104];         jmp   qword ptr [rsp]
.Lx591_8:               lea              rdi, [rsp + 4096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n382_iterate_β
                        mov              qword ptr [rsp + 4016], rax
                        mov              qword ptr [rsp + 4024], rdx;         jmp   n388_call_builtin_icon_α
                                                                              jmp   n382_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n388_call_builtin_icon_α:
                        mov              r11, 168
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 3944], rax
                        .section         .rodata
.Lrkfn593:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn593]
                        lea              rsi, [rsp + 3936]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx
                        cmp              al, 104;                             je    n387_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n387_call_value_β
n388_call_builtin_icon_β:
                        mov              r11, 168;                            jmp   n387_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n389_var_α:             mov              r11, 169
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 3688], rax;         jmp   n390_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n390_iterate_α:         mov              r11, 170
                        mov              qword ptr [rsp + 3664], 0
.Lx597_0:               mov              rdi, qword ptr [rsp + 3680]
                        mov              rsi, qword ptr [rsp + 3688]
                        mov              rdx, qword ptr [rsp + 3664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx
                        cmp              rax, 104;                            je    n398_var_α
                                                                              jmp   n391_lit_integer_α
n390_iterate_β:         mov              r11, 170
                        inc              qword ptr [rsp + 3664];              jmp   .Lx597_0
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_integer_α:     mov              r11, 171
                        mov              qword ptr [rsp + 3840], 3            # result
                        mov              rax, qword ptr [rip + .Lx598_0]
                        mov              qword ptr [rsp + 3848], rax;         jmp   n392_lit_integer_α
.Lx598_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_integer_α:     mov              r11, 172
                        mov              qword ptr [rsp + 3856], 3            # result
                        mov              rax, qword ptr [rip + .Lx599_0]
                        mov              qword ptr [rsp + 3864], rax;         jmp   n393_lit_integer_α
.Lx599_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_integer_α:     mov              r11, 173
                        mov              qword ptr [rsp + 3872], 3            # result
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n394_lit_integer_α
.Lx600_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_integer_α:     mov              r11, 174
                        mov              qword ptr [rsp + 3888], 3            # result
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rsp + 3896], rax;         jmp   n395_lit_integer_α
.Lx601_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_integer_α:     mov              r11, 175
                        mov              qword ptr [rsp + 3904], 3            # result
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rsp + 3912], rax;         jmp   n396_call_value_α
.Lx602_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n396_call_value_α:      mov              r11, 176
                        mov              rax, qword ptr [rsp + 3840]
                        mov              qword ptr [rsp + 3712], rax
                        mov              rax, qword ptr [rsp + 3848]
                        mov              qword ptr [rsp + 3720], rax
                        mov              rax, qword ptr [rsp + 3856]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 3736], rax
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3744], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3752], rax
                        mov              rax, qword ptr [rsp + 3888]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 3896]
                        mov              qword ptr [rsp + 3768], rax
                        mov              rax, qword ptr [rsp + 3904]
                        mov              qword ptr [rsp + 3776], rax
                        mov              rax, qword ptr [rsp + 3912]
                        mov              qword ptr [rsp + 3784], rax
                        mov              qword ptr [rsp + 3792], 0
                        mov              rdi, qword ptr [rsp + 3648]
                        mov              rsi, qword ptr [rsp + 3656]
                        lea              rdx, [rsp + 3712]
                        mov              ecx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx604_7
                        lea              rcx, [rip + .Lx604_4]
                        push             rcx
                        lea              rcx, [rip + .Lx604_3]
                        push             rcx;                                 jmp   rax
.Lx604_3:               mov              qword ptr [rsp + 3800], rsp
                        mov              rax, qword ptr [rsp + 3792]
                        test             rax, rax;                            jne   .Lx604_5
                        mov              qword ptr [rsp + 3792], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx604_2
.Lx604_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx604_2
.Lx604_4:               mov              qword ptr [rsp + 3800], rsp
                        mov              rax, qword ptr [rsp + 3792]
                        test             rax, rax;                            jne   .Lx604_6
                        mov              qword ptr [rsp + 3792], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx604_2
.Lx604_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx604_2
.Lx604_7:               mov              rdi, qword ptr [rsp + 3648]
                        mov              rsi, qword ptr [rsp + 3656]
                        lea              rdx, [rsp + 3712]
                        mov              ecx, 5
                        lea              r8, [rsp + 3792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx604_2:               mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx
                        cmp              al, 104;                             je    n390_iterate_β
                                                                              jmp   n397_call_builtin_icon_α
n396_call_value_β:      mov              r11, 176
                        mov              rax, qword ptr [rsp + 3792]
                        cmp              rax, 1;                              jne   .Lx604_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 3800];         jmp   qword ptr [rsp]
.Lx604_8:               lea              rdi, [rsp + 3792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n390_iterate_β
                        mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx;         jmp   n397_call_builtin_icon_α
                                                                              jmp   n390_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n397_call_builtin_icon_α:
                        mov              r11, 177
                        mov              rax, qword ptr [rsp + 3696]
                        mov              qword ptr [rsp + 3616], rax
                        mov              rax, qword ptr [rsp + 3704]
                        mov              qword ptr [rsp + 3624], rax
                        .section         .rodata
.Lrkfn606:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn606]
                        lea              rsi, [rsp + 3616]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx
                        cmp              al, 104;                             je    n396_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n396_call_value_β
n397_call_builtin_icon_β:
                        mov              r11, 177;                            jmp   n396_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:             mov              r11, 178
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n399_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n399_iterate_α:         mov              r11, 179
                        mov              qword ptr [rsp + 3312], 0
.Lx610_0:               mov              rdi, qword ptr [rsp + 3328]
                        mov              rsi, qword ptr [rsp + 3336]
                        mov              rdx, qword ptr [rsp + 3312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              rax, 104;                            je    n408_var_α
                                                                              jmp   n400_lit_integer_α
n399_iterate_β:         mov              r11, 179
                        inc              qword ptr [rsp + 3312];              jmp   .Lx610_0
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_integer_α:     mov              r11, 180
                        mov              qword ptr [rsp + 3504], 3            # result
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n401_lit_integer_α
.Lx611_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_integer_α:     mov              r11, 181
                        mov              qword ptr [rsp + 3520], 3            # result
                        mov              rax, qword ptr [rip + .Lx612_0]
                        mov              qword ptr [rsp + 3528], rax;         jmp   n402_lit_integer_α
.Lx612_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_integer_α:     mov              r11, 182
                        mov              qword ptr [rsp + 3536], 3            # result
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n403_lit_integer_α
.Lx613_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_integer_α:     mov              r11, 183
                        mov              qword ptr [rsp + 3552], 3            # result
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n404_lit_integer_α
.Lx614_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_integer_α:     mov              r11, 184
                        mov              qword ptr [rsp + 3568], 3            # result
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n405_lit_integer_α
.Lx615_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_integer_α:     mov              r11, 185
                        mov              qword ptr [rsp + 3584], 3            # result
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rsp + 3592], rax;         jmp   n406_call_value_α
.Lx616_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n406_call_value_α:      mov              r11, 186
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3368], rax
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3384], rax
                        mov              rax, qword ptr [rsp + 3536]
                        mov              qword ptr [rsp + 3392], rax
                        mov              rax, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 3400], rax
                        mov              rax, qword ptr [rsp + 3552]
                        mov              qword ptr [rsp + 3408], rax
                        mov              rax, qword ptr [rsp + 3560]
                        mov              qword ptr [rsp + 3416], rax
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3432], rax
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 3448], rax
                        mov              qword ptr [rsp + 3456], 0
                        mov              rdi, qword ptr [rsp + 3296]
                        mov              rsi, qword ptr [rsp + 3304]
                        lea              rdx, [rsp + 3360]
                        mov              ecx, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx618_7
                        lea              rcx, [rip + .Lx618_4]
                        push             rcx
                        lea              rcx, [rip + .Lx618_3]
                        push             rcx;                                 jmp   rax
.Lx618_3:               mov              qword ptr [rsp + 3464], rsp
                        mov              rax, qword ptr [rsp + 3456]
                        test             rax, rax;                            jne   .Lx618_5
                        mov              qword ptr [rsp + 3456], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx618_2
.Lx618_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx618_2
.Lx618_4:               mov              qword ptr [rsp + 3464], rsp
                        mov              rax, qword ptr [rsp + 3456]
                        test             rax, rax;                            jne   .Lx618_6
                        mov              qword ptr [rsp + 3456], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx618_2
.Lx618_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx618_2
.Lx618_7:               mov              rdi, qword ptr [rsp + 3296]
                        mov              rsi, qword ptr [rsp + 3304]
                        lea              rdx, [rsp + 3360]
                        mov              ecx, 6
                        lea              r8, [rsp + 3456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx618_2:               mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                        cmp              al, 104;                             je    n399_iterate_β
                                                                              jmp   n407_call_builtin_icon_α
n406_call_value_β:      mov              r11, 186
                        mov              rax, qword ptr [rsp + 3456]
                        cmp              rax, 1;                              jne   .Lx618_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 3464];         jmp   qword ptr [rsp]
.Lx618_8:               lea              rdi, [rsp + 3456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n399_iterate_β
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx;         jmp   n407_call_builtin_icon_α
                                                                              jmp   n399_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n407_call_builtin_icon_α:
                        mov              r11, 187
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3272], rax
                        .section         .rodata
.Lrkfn620:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn620]
                        lea              rsi, [rsp + 3264]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx
                        cmp              al, 104;                             je    n406_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n406_call_value_β
n407_call_builtin_icon_β:
                        mov              r11, 187;                            jmp   n406_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n408_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n409_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n409_iterate_α:         mov              r11, 189
                        mov              qword ptr [rsp + 2928], 0
.Lx624_0:               mov              rdi, qword ptr [rsp + 2944]
                        mov              rsi, qword ptr [rsp + 2952]
                        mov              rdx, qword ptr [rsp + 2928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              rax, 104;                            je    n419_var_α
                                                                              jmp   n410_lit_integer_α
n409_iterate_β:         mov              r11, 189
                        inc              qword ptr [rsp + 2928];              jmp   .Lx624_0
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_integer_α:     mov              r11, 190
                        mov              qword ptr [rsp + 3136], 3            # result
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n411_lit_integer_α
.Lx625_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_integer_α:     mov              r11, 191
                        mov              qword ptr [rsp + 3152], 3            # result
                        mov              rax, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n412_lit_integer_α
.Lx626_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_integer_α:     mov              r11, 192
                        mov              qword ptr [rsp + 3168], 3            # result
                        mov              rax, qword ptr [rip + .Lx627_0]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n413_lit_integer_α
.Lx627_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_integer_α:     mov              r11, 193
                        mov              qword ptr [rsp + 3184], 3            # result
                        mov              rax, qword ptr [rip + .Lx628_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n414_lit_integer_α
.Lx628_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_integer_α:     mov              r11, 194
                        mov              qword ptr [rsp + 3200], 3            # result
                        mov              rax, qword ptr [rip + .Lx629_0]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n415_lit_integer_α
.Lx629_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_integer_α:     mov              r11, 195
                        mov              qword ptr [rsp + 3216], 3            # result
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rsp + 3224], rax;         jmp   n416_lit_integer_α
.Lx630_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_integer_α:     mov              r11, 196
                        mov              qword ptr [rsp + 3232], 3            # result
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rsp + 3240], rax;         jmp   n417_call_value_α
.Lx631_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n417_call_value_α:      mov              r11, 197
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 2984], rax
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3000], rax
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3016], rax
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3032], rax
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3048], rax
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3064], rax
                        mov              rax, qword ptr [rsp + 3232]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3240]
                        mov              qword ptr [rsp + 3080], rax
                        mov              qword ptr [rsp + 3088], 0
                        mov              rdi, qword ptr [rsp + 2912]
                        mov              rsi, qword ptr [rsp + 2920]
                        lea              rdx, [rsp + 2976]
                        mov              ecx, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx633_7
                        lea              rcx, [rip + .Lx633_4]
                        push             rcx
                        lea              rcx, [rip + .Lx633_3]
                        push             rcx;                                 jmp   rax
.Lx633_3:               mov              qword ptr [rsp + 3096], rsp
                        mov              rax, qword ptr [rsp + 3088]
                        test             rax, rax;                            jne   .Lx633_5
                        mov              qword ptr [rsp + 3088], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx633_2
.Lx633_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx633_2
.Lx633_4:               mov              qword ptr [rsp + 3096], rsp
                        mov              rax, qword ptr [rsp + 3088]
                        test             rax, rax;                            jne   .Lx633_6
                        mov              qword ptr [rsp + 3088], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx633_2
.Lx633_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx633_2
.Lx633_7:               mov              rdi, qword ptr [rsp + 2912]
                        mov              rsi, qword ptr [rsp + 2920]
                        lea              rdx, [rsp + 2976]
                        mov              ecx, 7
                        lea              r8, [rsp + 3088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx633_2:               mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx
                        cmp              al, 104;                             je    n409_iterate_β
                                                                              jmp   n418_call_builtin_icon_α
n417_call_value_β:      mov              r11, 197
                        mov              rax, qword ptr [rsp + 3088]
                        cmp              rax, 1;                              jne   .Lx633_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 3096];         jmp   qword ptr [rsp]
.Lx633_8:               lea              rdi, [rsp + 3088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n409_iterate_β
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n418_call_builtin_icon_α
                                                                              jmp   n409_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n418_call_builtin_icon_α:
                        mov              r11, 198
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2888], rax
                        .section         .rodata
.Lrkfn635:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn635]
                        lea              rsi, [rsp + 2880]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n417_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n417_call_value_β
n418_call_builtin_icon_β:
                        mov              r11, 198;                            jmp   n417_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:             mov              r11, 199
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n420_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n420_iterate_α:         mov              r11, 200
                        mov              qword ptr [rsp + 2512], 0
.Lx639_0:               mov              rdi, qword ptr [rsp + 2528]
                        mov              rsi, qword ptr [rsp + 2536]
                        mov              rdx, qword ptr [rsp + 2512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              rax, 104;                            je    n431_var_α
                                                                              jmp   n421_lit_integer_α
n420_iterate_β:         mov              r11, 200
                        inc              qword ptr [rsp + 2512];              jmp   .Lx639_0
#-----------------------------------------------------------------------------------------------------------------------
n421_lit_integer_α:     mov              r11, 201
                        mov              qword ptr [rsp + 2736], 3            # result
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n422_lit_integer_α
.Lx640_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_integer_α:     mov              r11, 202
                        mov              qword ptr [rsp + 2752], 3            # result
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n423_lit_integer_α
.Lx641_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_integer_α:     mov              r11, 203
                        mov              qword ptr [rsp + 2768], 3            # result
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n424_lit_integer_α
.Lx642_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_integer_α:     mov              r11, 204
                        mov              qword ptr [rsp + 2784], 3            # result
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n425_lit_integer_α
.Lx643_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_integer_α:     mov              r11, 205
                        mov              qword ptr [rsp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n426_lit_integer_α
.Lx644_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_integer_α:     mov              r11, 206
                        mov              qword ptr [rsp + 2816], 3            # result
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n427_lit_integer_α
.Lx645_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_integer_α:     mov              r11, 207
                        mov              qword ptr [rsp + 2832], 3            # result
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rsp + 2840], rax;         jmp   n428_lit_integer_α
.Lx646_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_integer_α:     mov              r11, 208
                        mov              qword ptr [rsp + 2848], 3            # result
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n429_call_value_α
.Lx647_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n429_call_value_α:      mov              r11, 209
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2568], rax
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2584], rax
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2600], rax
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2616], rax
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2632], rax
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2648], rax
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2664], rax
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2680], rax
                        mov              qword ptr [rsp + 2688], 0
                        mov              rdi, qword ptr [rsp + 2496]
                        mov              rsi, qword ptr [rsp + 2504]
                        lea              rdx, [rsp + 2560]
                        mov              ecx, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx649_7
                        lea              rcx, [rip + .Lx649_4]
                        push             rcx
                        lea              rcx, [rip + .Lx649_3]
                        push             rcx;                                 jmp   rax
.Lx649_3:               mov              qword ptr [rsp + 2696], rsp
                        mov              rax, qword ptr [rsp + 2688]
                        test             rax, rax;                            jne   .Lx649_5
                        mov              qword ptr [rsp + 2688], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx649_2
.Lx649_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx649_2
.Lx649_4:               mov              qword ptr [rsp + 2696], rsp
                        mov              rax, qword ptr [rsp + 2688]
                        test             rax, rax;                            jne   .Lx649_6
                        mov              qword ptr [rsp + 2688], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx649_2
.Lx649_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx649_2
.Lx649_7:               mov              rdi, qword ptr [rsp + 2496]
                        mov              rsi, qword ptr [rsp + 2504]
                        lea              rdx, [rsp + 2560]
                        mov              ecx, 8
                        lea              r8, [rsp + 2688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx649_2:               mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              al, 104;                             je    n420_iterate_β
                                                                              jmp   n430_call_builtin_icon_α
n429_call_value_β:      mov              r11, 209
                        mov              rax, qword ptr [rsp + 2688]
                        cmp              rax, 1;                              jne   .Lx649_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 2696];         jmp   qword ptr [rsp]
.Lx649_8:               lea              rdi, [rsp + 2688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n420_iterate_β
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n430_call_builtin_icon_α
                                                                              jmp   n420_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n430_call_builtin_icon_α:
                        mov              r11, 210
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2472], rax
                        .section         .rodata
.Lrkfn651:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn651]
                        lea              rsi, [rsp + 2464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        cmp              al, 104;                             je    n429_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n429_call_value_β
n430_call_builtin_icon_β:
                        mov              r11, 210;                            jmp   n429_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n431_var_α:             mov              r11, 211
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n432_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n432_iterate_α:         mov              r11, 212
                        mov              qword ptr [rsp + 2064], 0
.Lx655_0:               mov              rdi, qword ptr [rsp + 2080]
                        mov              rsi, qword ptr [rsp + 2088]
                        mov              rdx, qword ptr [rsp + 2064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              rax, 104;                            je    n444_var_α
                                                                              jmp   n433_lit_integer_α
n432_iterate_β:         mov              r11, 212
                        inc              qword ptr [rsp + 2064];              jmp   .Lx655_0
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_integer_α:     mov              r11, 213
                        mov              qword ptr [rsp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n434_lit_integer_α
.Lx656_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_integer_α:     mov              r11, 214
                        mov              qword ptr [rsp + 2320], 3            # result
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n435_lit_integer_α
.Lx657_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_integer_α:     mov              r11, 215
                        mov              qword ptr [rsp + 2336], 3            # result
                        mov              rax, qword ptr [rip + .Lx658_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n436_lit_integer_α
.Lx658_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_integer_α:     mov              r11, 216
                        mov              qword ptr [rsp + 2352], 3            # result
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n437_lit_integer_α
.Lx659_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_integer_α:     mov              r11, 217
                        mov              qword ptr [rsp + 2368], 3            # result
                        mov              rax, qword ptr [rip + .Lx660_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n438_lit_integer_α
.Lx660_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_integer_α:     mov              r11, 218
                        mov              qword ptr [rsp + 2384], 3            # result
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n439_lit_integer_α
.Lx661_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_integer_α:     mov              r11, 219
                        mov              qword ptr [rsp + 2400], 3            # result
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n440_lit_integer_α
.Lx662_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_integer_α:     mov              r11, 220
                        mov              qword ptr [rsp + 2416], 3            # result
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n441_lit_integer_α
.Lx663_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_integer_α:     mov              r11, 221
                        mov              qword ptr [rsp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n442_call_value_α
.Lx664_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n442_call_value_α:      mov              r11, 222
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2120], rax
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2136], rax
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2152], rax
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2184], rax
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2216], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2232], rax
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2248], rax
                        mov              qword ptr [rsp + 2256], 0
                        mov              rdi, qword ptr [rsp + 2048]
                        mov              rsi, qword ptr [rsp + 2056]
                        lea              rdx, [rsp + 2112]
                        mov              ecx, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx666_7
                        lea              rcx, [rip + .Lx666_4]
                        push             rcx
                        lea              rcx, [rip + .Lx666_3]
                        push             rcx;                                 jmp   rax
.Lx666_3:               mov              qword ptr [rsp + 2264], rsp
                        mov              rax, qword ptr [rsp + 2256]
                        test             rax, rax;                            jne   .Lx666_5
                        mov              qword ptr [rsp + 2256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx666_2
.Lx666_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx666_2
.Lx666_4:               mov              qword ptr [rsp + 2264], rsp
                        mov              rax, qword ptr [rsp + 2256]
                        test             rax, rax;                            jne   .Lx666_6
                        mov              qword ptr [rsp + 2256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx666_2
.Lx666_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx666_2
.Lx666_7:               mov              rdi, qword ptr [rsp + 2048]
                        mov              rsi, qword ptr [rsp + 2056]
                        lea              rdx, [rsp + 2112]
                        mov              ecx, 9
                        lea              r8, [rsp + 2256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx666_2:               mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              al, 104;                             je    n432_iterate_β
                                                                              jmp   n443_call_builtin_icon_α
n442_call_value_β:      mov              r11, 222
                        mov              rax, qword ptr [rsp + 2256]
                        cmp              rax, 1;                              jne   .Lx666_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 2264];         jmp   qword ptr [rsp]
.Lx666_8:               lea              rdi, [rsp + 2256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n432_iterate_β
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx;         jmp   n443_call_builtin_icon_α
                                                                              jmp   n432_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n443_call_builtin_icon_α:
                        mov              r11, 223
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2024], rax
                        .section         .rodata
.Lrkfn668:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn668]
                        lea              rsi, [rsp + 2016]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              al, 104;                             je    n442_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n442_call_value_β
n443_call_builtin_icon_β:
                        mov              r11, 223;                            jmp   n442_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n444_var_α:             mov              r11, 224
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n445_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n445_iterate_α:         mov              r11, 225
                        mov              qword ptr [rsp + 1584], 0
.Lx672_0:               mov              rdi, qword ptr [rsp + 1600]
                        mov              rsi, qword ptr [rsp + 1608]
                        mov              rdx, qword ptr [rsp + 1584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              rax, 104;                            je    n458_var_α
                                                                              jmp   n446_lit_integer_α
n445_iterate_β:         mov              r11, 225
                        inc              qword ptr [rsp + 1584];              jmp   .Lx672_0
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_integer_α:     mov              r11, 226
                        mov              qword ptr [rsp + 1840], 3            # result
                        mov              rax, qword ptr [rip + .Lx673_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n447_lit_integer_α
.Lx673_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_integer_α:     mov              r11, 227
                        mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Lx674_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n448_lit_integer_α
.Lx674_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:     mov              r11, 228
                        mov              qword ptr [rsp + 1872], 3            # result
                        mov              rax, qword ptr [rip + .Lx675_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n449_lit_integer_α
.Lx675_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_integer_α:     mov              r11, 229
                        mov              qword ptr [rsp + 1888], 3            # result
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n450_lit_integer_α
.Lx676_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n450_lit_integer_α:     mov              r11, 230
                        mov              qword ptr [rsp + 1904], 3            # result
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n451_lit_integer_α
.Lx677_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_integer_α:     mov              r11, 231
                        mov              qword ptr [rsp + 1920], 3            # result
                        mov              rax, qword ptr [rip + .Lx678_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n452_lit_integer_α
.Lx678_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_integer_α:     mov              r11, 232
                        mov              qword ptr [rsp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n453_lit_integer_α
.Lx679_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_integer_α:     mov              r11, 233
                        mov              qword ptr [rsp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Lx680_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n454_lit_integer_α
.Lx680_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_integer_α:     mov              r11, 234
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n455_lit_integer_α
.Lx681_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n455_lit_integer_α:     mov              r11, 235
                        mov              qword ptr [rsp + 1984], 3            # result
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n456_call_value_α
.Lx682_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n456_call_value_α:      mov              r11, 236
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1656], rax
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1736], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1752], rax
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1784], rax
                        mov              qword ptr [rsp + 1792], 0
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        lea              rdx, [rsp + 1632]
                        mov              ecx, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx684_7
                        lea              rcx, [rip + .Lx684_4]
                        push             rcx
                        lea              rcx, [rip + .Lx684_3]
                        push             rcx;                                 jmp   rax
.Lx684_3:               mov              qword ptr [rsp + 1800], rsp
                        mov              rax, qword ptr [rsp + 1792]
                        test             rax, rax;                            jne   .Lx684_5
                        mov              qword ptr [rsp + 1792], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx684_2
.Lx684_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx684_2
.Lx684_4:               mov              qword ptr [rsp + 1800], rsp
                        mov              rax, qword ptr [rsp + 1792]
                        test             rax, rax;                            jne   .Lx684_6
                        mov              qword ptr [rsp + 1792], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx684_2
.Lx684_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx684_2
.Lx684_7:               mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        lea              rdx, [rsp + 1632]
                        mov              ecx, 10
                        lea              r8, [rsp + 1792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx684_2:               mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    n445_iterate_β
                                                                              jmp   n457_call_builtin_icon_α
n456_call_value_β:      mov              r11, 236
                        mov              rax, qword ptr [rsp + 1792]
                        cmp              rax, 1;                              jne   .Lx684_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1800];         jmp   qword ptr [rsp]
.Lx684_8:               lea              rdi, [rsp + 1792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n445_iterate_β
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n457_call_builtin_icon_α
                                                                              jmp   n445_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n457_call_builtin_icon_α:
                        mov              r11, 237
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1544], rax
                        .section         .rodata
.Lrkfn686:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn686]
                        lea              rsi, [rsp + 1536]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              al, 104;                             je    n456_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n456_call_value_β
n457_call_builtin_icon_β:
                        mov              r11, 237;                            jmp   n456_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n458_var_α:             mov              r11, 238
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n459_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n459_iterate_α:         mov              r11, 239
                        mov              qword ptr [rsp + 1072], 0
.Lx690_0:               mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              rax, 104;                            je    n473_var_α
                                                                              jmp   n460_lit_integer_α
n459_iterate_β:         mov              r11, 239
                        inc              qword ptr [rsp + 1072];              jmp   .Lx690_0
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_integer_α:     mov              r11, 240
                        mov              qword ptr [rsp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Lx691_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n461_lit_integer_α
.Lx691_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_integer_α:     mov              r11, 241
                        mov              qword ptr [rsp + 1360], 3            # result
                        mov              rax, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n462_lit_integer_α
.Lx692_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_integer_α:     mov              r11, 242
                        mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n463_lit_integer_α
.Lx693_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_integer_α:     mov              r11, 243
                        mov              qword ptr [rsp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Lx694_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n464_lit_integer_α
.Lx694_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_integer_α:     mov              r11, 244
                        mov              qword ptr [rsp + 1408], 3            # result
                        mov              rax, qword ptr [rip + .Lx695_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n465_lit_integer_α
.Lx695_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_integer_α:     mov              r11, 245
                        mov              qword ptr [rsp + 1424], 3            # result
                        mov              rax, qword ptr [rip + .Lx696_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n466_lit_integer_α
.Lx696_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n466_lit_integer_α:     mov              r11, 246
                        mov              qword ptr [rsp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Lx697_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n467_lit_integer_α
.Lx697_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_integer_α:     mov              r11, 247
                        mov              qword ptr [rsp + 1456], 3            # result
                        mov              rax, qword ptr [rip + .Lx698_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n468_lit_integer_α
.Lx698_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_integer_α:     mov              r11, 248
                        mov              qword ptr [rsp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Lx699_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n469_lit_integer_α
.Lx699_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_integer_α:     mov              r11, 249
                        mov              qword ptr [rsp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Lx700_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n470_lit_integer_α
.Lx700_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n470_lit_integer_α:     mov              r11, 250
                        mov              qword ptr [rsp + 1504], 3            # result
                        mov              rax, qword ptr [rip + .Lx701_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n471_call_value_α
.Lx701_0:               .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n471_call_value_α:      mov              r11, 251
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1288], rax
                        mov              qword ptr [rsp + 1296], 0
                        mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        lea              rdx, [rsp + 1120]
                        mov              ecx, 11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx703_7
                        lea              rcx, [rip + .Lx703_4]
                        push             rcx
                        lea              rcx, [rip + .Lx703_3]
                        push             rcx;                                 jmp   rax
.Lx703_3:               mov              qword ptr [rsp + 1304], rsp
                        mov              rax, qword ptr [rsp + 1296]
                        test             rax, rax;                            jne   .Lx703_5
                        mov              qword ptr [rsp + 1296], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx703_2
.Lx703_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx703_2
.Lx703_4:               mov              qword ptr [rsp + 1304], rsp
                        mov              rax, qword ptr [rsp + 1296]
                        test             rax, rax;                            jne   .Lx703_6
                        mov              qword ptr [rsp + 1296], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx703_2
.Lx703_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx703_2
.Lx703_7:               mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        lea              rdx, [rsp + 1120]
                        mov              ecx, 11
                        lea              r8, [rsp + 1296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx703_2:               mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n459_iterate_β
                                                                              jmp   n472_call_builtin_icon_α
n471_call_value_β:      mov              r11, 251
                        mov              rax, qword ptr [rsp + 1296]
                        cmp              rax, 1;                              jne   .Lx703_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1304];         jmp   qword ptr [rsp]
.Lx703_8:               lea              rdi, [rsp + 1296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n459_iterate_β
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n472_call_builtin_icon_α
                                                                              jmp   n459_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n472_call_builtin_icon_α:
                        mov              r11, 252
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1032], rax
                        .section         .rodata
.Lrkfn705:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn705]
                        lea              rsi, [rsp + 1024]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n471_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n471_call_value_β
n472_call_builtin_icon_β:
                        mov              r11, 252;                            jmp   n471_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n473_var_α:             mov              r11, 253
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 552], rax;          jmp   n474_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n474_iterate_α:         mov              r11, 254
                        mov              qword ptr [rsp + 528], 0
.Lx709_0:               mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              rax, 104;                            je    n489_make_list_α
                                                                              jmp   n475_lit_integer_α
n474_iterate_β:         mov              r11, 254
                        inc              qword ptr [rsp + 528];               jmp   .Lx709_0
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_integer_α:     mov              r11, 255
                        mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Lx710_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n476_lit_integer_α
.Lx710_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_integer_α:     mov              r11, 256
                        mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Lx711_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n477_lit_integer_α
.Lx711_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_integer_α:     mov              r11, 257
                        mov              qword ptr [rsp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Lx712_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n478_lit_integer_α
.Lx712_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_integer_α:     mov              r11, 258
                        mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Lx713_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n479_lit_integer_α
.Lx713_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_integer_α:     mov              r11, 259
                        mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Lx714_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n480_lit_integer_α
.Lx714_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_integer_α:     mov              r11, 260
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Lx715_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n481_lit_integer_α
.Lx715_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_integer_α:     mov              r11, 261
                        mov              qword ptr [rsp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Lx716_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n482_lit_integer_α
.Lx716_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_integer_α:     mov              r11, 262
                        mov              qword ptr [rsp + 928], 3             # result
                        mov              rax, qword ptr [rip + .Lx717_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n483_lit_integer_α
.Lx717_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_integer_α:     mov              r11, 263
                        mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Lx718_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n484_lit_integer_α
.Lx718_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_integer_α:     mov              r11, 264
                        mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Lx719_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n485_lit_integer_α
.Lx719_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_integer_α:     mov              r11, 265
                        mov              qword ptr [rsp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Lx720_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n486_lit_integer_α
.Lx720_0:               .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_integer_α:     mov              r11, 266
                        mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx721_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n487_call_value_α
.Lx721_0:               .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n487_call_value_α:      mov              r11, 267
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 760], rax
                        mov              qword ptr [rsp + 768], 0
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        lea              rdx, [rsp + 576]
                        mov              ecx, 12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx723_7
                        lea              rcx, [rip + .Lx723_4]
                        push             rcx
                        lea              rcx, [rip + .Lx723_3]
                        push             rcx;                                 jmp   rax
.Lx723_3:               mov              qword ptr [rsp + 776], rsp
                        mov              rax, qword ptr [rsp + 768]
                        test             rax, rax;                            jne   .Lx723_5
                        mov              qword ptr [rsp + 768], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx723_2
.Lx723_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx723_2
.Lx723_4:               mov              qword ptr [rsp + 776], rsp
                        mov              rax, qword ptr [rsp + 768]
                        test             rax, rax;                            jne   .Lx723_6
                        mov              qword ptr [rsp + 768], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx723_2
.Lx723_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx723_2
.Lx723_7:               mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        lea              rdx, [rsp + 576]
                        mov              ecx, 12
                        lea              r8, [rsp + 768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx723_2:               mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n474_iterate_β
                                                                              jmp   n488_call_builtin_icon_α
n487_call_value_β:      mov              r11, 267
                        mov              rax, qword ptr [rsp + 768]
                        cmp              rax, 1;                              jne   .Lx723_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 776];          jmp   qword ptr [rsp]
.Lx723_8:               lea              rdi, [rsp + 768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n474_iterate_β
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n488_call_builtin_icon_α
                                                                              jmp   n474_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n488_call_builtin_icon_α:
                        mov              r11, 268
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn725:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn725]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n487_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n487_call_value_β
n488_call_builtin_icon_β:
                        mov              r11, 268;                            jmp   n487_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n489_make_list_α:       mov              r11, 269
                        lea              rdi, [rsp + 464]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n490_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n490_assign_α:          mov              r11, 270
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 5680], rax
                        mov              qword ptr [rsp + 5688], rdx;         jmp   n491_var_α
#-----------------------------------------------------------------------------------------------------------------------
n491_var_α:             mov              r11, 271
                        mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 40], rax;           jmp   n492_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n492_unop_α:            mov              r11, 272
                        mov              rdi, qword ptr [rsp + 5680]
                        mov              rsi, qword ptr [rsp + 5688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx;           jmp   n493_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_integer_α:     mov              r11, 273
                        mov              qword ptr [rsp + 48], 3              # result
                        mov              rax, qword ptr [rip + .Lx732_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n494_binop_test_α
.Lx732_0:               .quad            14
#-----------------------------------------------------------------------------------------------------------------------
n494_binop_test_α:      mov              r11, 274
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lx733_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 112;                             je    .Lx733_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx733_2
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx733_2
.Lx733_1:               mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 56]
                        cmp              rax, rcx;                            jge   main_ω
                        mov              rcx, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rcx;            jmp   n495_var_α
.Lx733_0:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 56]
                        mov              r8d, 5
                        lea              r9, [rsp + 0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx733_1
                        cmp              eax, 1;                              je    main_ω
                                                                              jmp   n495_var_α
.Lx733_2:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 56]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    main_ω
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   n495_var_α
#-----------------------------------------------------------------------------------------------------------------------
n495_var_α:             mov              r11, 275
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 328], rax;          jmp   n496_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n496_iterate_α:         mov              r11, 276
                        mov              qword ptr [rsp + 304], 0
.Lx737_0:               mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              rax, 104;                            je    n500_var_α
                                                                              jmp   n497_var_α
n496_iterate_β:         mov              r11, 276
                        inc              qword ptr [rsp + 304];               jmp   .Lx737_0
#-----------------------------------------------------------------------------------------------------------------------
n497_var_α:             mov              r11, 277
                        mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 424], rax;          jmp   n498_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n498_call_value_α:      mov              r11, 278
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 360], rax
                        mov              qword ptr [rsp + 368], 0
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              rcx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx741_7
                        lea              rcx, [rip + .Lx741_4]
                        push             rcx
                        lea              rcx, [rip + .Lx741_3]
                        push             rcx;                                 jmp   rax
.Lx741_3:               mov              qword ptr [rsp + 376], rsp
                        mov              rax, qword ptr [rsp + 368]
                        test             rax, rax;                            jne   .Lx741_5
                        mov              qword ptr [rsp + 368], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx741_2
.Lx741_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx741_2
.Lx741_4:               mov              qword ptr [rsp + 376], rsp
                        mov              rax, qword ptr [rsp + 368]
                        test             rax, rax;                            jne   .Lx741_6
                        mov              qword ptr [rsp + 368], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx741_2
.Lx741_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx741_2
.Lx741_7:               mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              rcx, qword ptr [rsp + 360]
                        lea              r8, [rsp + 368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx741_2:               mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n496_iterate_β
                                                                              jmp   n499_call_builtin_icon_α
n498_call_value_β:      mov              r11, 278
                        mov              rax, qword ptr [rsp + 368]
                        cmp              rax, 1;                              jne   .Lx741_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 376];          jmp   qword ptr [rsp]
.Lx741_8:               lea              rdi, [rsp + 368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n496_iterate_β
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n499_call_builtin_icon_α
                                                                              jmp   n496_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n499_call_builtin_icon_α:
                        mov              r11, 279
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn743:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn743]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n498_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n498_call_value_β
n499_call_builtin_icon_β:
                        mov              r11, 279;                            jmp   n498_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n500_var_α:             mov              r11, 280
                        mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 152], rax;          jmp   n501_var_α
#-----------------------------------------------------------------------------------------------------------------------
n501_var_α:             mov              r11, 281
                        mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 216], rax;          jmp   n502_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n502_unop_α:            mov              r11, 282
                        mov              rdi, qword ptr [rsp + 5680]
                        mov              rsi, qword ptr [rsp + 5688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n503_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_integer_α:     mov              r11, 283
                        mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx749_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n504_coerce_numeric_α
.Lx749_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n504_coerce_numeric_α:  mov              r11, 284
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 5;                               je    .Lx751_1
                        cmp              al, 3;                               jne   .Lx751_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 3;                               jne   .Lx751_0
.Lx751_1:               mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 184], rax;          jmp   n505_binop_α
.Lx751_0:               lea              rdi, [rsp + 192]
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 176]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n505_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n505_binop_α:           mov              r11, 285
                        mov              eax, dword ptr [rsp + 176]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx752_2
                        mov              rax, qword ptr [rsp + 184]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 160], 3
                        mov              qword ptr [rsp + 168], rax;          jmp   .Lx752_7
.Lx752_2:               and              edx, 1;                              jz    .Lx752_0
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx752_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx752_4
.Lx752_3:               movq             xmm0, rsi
.Lx752_4:               cmp              cl, 5;                               je    .Lx752_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx752_6
.Lx752_5:               movq             xmm1, rdi
.Lx752_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 160], 5
                        mov              qword ptr [rsp + 168], rax
.Lx752_7:                                                                     jmp   n506_call_builtin_icon_α
.Lx752_0:               mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n491_var_α
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n506_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n506_call_builtin_icon_α:
                        mov              r11, 286
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn754:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn754]
                        lea              rsi, [rsp + 96]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n491_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n507_conjunction_α
n506_call_builtin_icon_β:
                        mov              r11, 286;                            jmp   n491_var_α
#-----------------------------------------------------------------------------------------------------------------------
n507_conjunction_α:     mov              r11, 287
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 72], rax;           jmp   n491_var_α
n507_conjunction_β:     mov              r11, 287;                            jmp   n491_var_α
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
.Lstartup_pname0:       .string          "p0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__p0
                        .quad            p0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            64
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "p1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__p1
                        .quad            p1_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            128
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "p2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__p2
                        .quad            p2_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            176
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "p3"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__p3
                        .quad            p3_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            224
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "p4"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__p4
                        .quad            p4_dcα
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            272
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "p5"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__p5
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            5
                        .long            0
                        .long            320
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "p6"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__p6
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            6
                        .long            0
                        .long            368
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "p7"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__p7
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            7
                        .long            0
                        .long            416
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "p8"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__p8
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            8
                        .long            0
                        .long            464
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "p9"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__p9
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            9
                        .long            0
                        .long            512
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "p10"
                        .align           8
.Lstartup_prec10:
                        .quad            .Lstartup_pname10
                        .quad            FN__p10
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            10
                        .long            0
                        .long            560
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec10]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "p11"
                        .align           8
.Lstartup_prec11:
                        .quad            .Lstartup_pname11
                        .quad            FN__p11
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            11
                        .long            0
                        .long            608
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec11]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "p12"
                        .align           8
.Lstartup_prec12:
                        .quad            .Lstartup_pname12
                        .quad            FN__p12
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            12
                        .long            0
                        .long            656
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec12]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "note"
                        .align           8
.Lstartup_prec13:
                        .quad            .Lstartup_pname13
                        .quad            FN__note
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            352
                        .long            20
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec13]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
