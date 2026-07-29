                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p0_α
proc_p0_α:
                        .global          proc_p0_α
                        .global          proc_p0_β
                        .global          proc_p0_γ
                        .global          proc_p0_ω
                        sub              rsp, 96
                        mov              [rsp + 72], rcx
                        mov              [rsp + 80], rdx
                        mov              rdi, rsp
                        mov              esi, 64
                        mov              edx, 64
                        call             rt_jmp_frame_lexprep2@PLT
proc_p0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx2_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n1_call_proc_staged_α
.Lx2_0:
                        .quad            .Lx2_0_s
.Lx2_0_s:
                        .string          "p0"
#-----------------------------------------------------------------------------------------------------------------------
n1_call_proc_staged_α:
                        mov              edi, 13
                        lea              rsi, [rsp + 48]
                        call             rt_proc_call_open_det1@PLT
                        test             rax, rax
                                                                                        je    .Lx4_1
                        lea              rcx, [rip + .Lx4_3]
                        lea              rdx, [rip + .Lx4_4]
                                                                                        jmp   rax
.Lx4_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx4_2
.Lx4_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx4_2
.Lx4_1:
                        call             rt_faildescr@PLT
.Lx4_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    proc_p0_ω
                                                                                        jmp   proc_p0_ω
n1_call_proc_staged_β:
                                                                                        jmp   proc_p0_ω
.Lx4_0:
                        .quad            .Lx4_0_s
.Lx4_0_s:
                        .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
proc_p0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p0_β:
                                                                                        jmp   proc_p0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p0_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 72]
                        add              rsp, 96
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p0_ω:
                        mov              rax, [rsp + 80]
                        add              rsp, 96
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p0_dcα:
                        pop              r11
                        sub              rsp, 112
                        mov              qword ptr [rsp + 88], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 64], r11
                        lea              rax, [rip + .Lx5_2]
                        mov              qword ptr [rsp + 72], rax
                        lea              rax, [rip + .Lx5_3]
                        mov              qword ptr [rsp + 80], rax
                        mov              rdi, rbp
                        mov              esi, 64
                        mov              edx, 64
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p0_α_body
.Lx5_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -96
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx5_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -96
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p1_α
proc_p1_α:
                        .global          proc_p1_α
                        .global          proc_p1_β
                        .global          proc_p1_γ
                        .global          proc_p1_ω
                        sub              rsp, 160
                        mov              [rsp + 136], rcx
                        mov              [rsp + 144], rdx
                        mov              rdi, rsp
                        mov              esi, 128
                        mov              edx, 128
                        call             rt_jmp_frame_lexprep2@PLT
proc_p1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rsp + 96], 1
                        mov              rax, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n7_var_α
.Lx9_0:
                        .quad            .Lx9_0_s
.Lx9_0_s:
                        .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n8_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_proc_staged_α:
                        mov              edi, 13
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 112]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx13_1
                        lea              rcx, [rip + .Lx13_3]
                        lea              rdx, [rip + .Lx13_4]
                                                                                        jmp   rax
.Lx13_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx13_2
.Lx13_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx13_2
.Lx13_1:
                        call             rt_faildescr@PLT
.Lx13_2:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_p1_ω
                                                                                        jmp   proc_p1_ω
n8_call_proc_staged_β:
                                                                                        jmp   proc_p1_ω
.Lx13_0:
                        .quad            .Lx13_0_s
.Lx13_0_s:
                        .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_β:
                                                                                        jmp   proc_p1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 136]
                        add              rsp, 160
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_ω:
                        mov              rax, [rsp + 144]
                        add              rsp, 160
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_dcα:
                        pop              r11
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 128], r11
                        lea              rax, [rip + .Lx14_2]
                        mov              qword ptr [rsp + 136], rax
                        lea              rax, [rip + .Lx14_3]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 128
                        mov              edx, 128
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p1_α_body
.Lx14_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -160
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx14_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -160
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p2_α
proc_p2_α:
                        .global          proc_p2_α
                        .global          proc_p2_β
                        .global          proc_p2_γ
                        .global          proc_p2_ω
                        sub              rsp, 208
                        mov              [rsp + 184], rcx
                        mov              [rsp + 192], rdx
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 176
                        call             rt_jmp_frame_lexprep2@PLT
proc_p2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rsp + 128], 1
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n16_var_α
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "p2"
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n18_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_proc_staged_α:
                        mov              edi, 13
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 144]
                        lea              rcx, [rsp + 160]
                        call             rt_proc_call_open_det3@PLT
                        test             rax, rax
                                                                                        je    .Lx25_1
                        lea              rcx, [rip + .Lx25_3]
                        lea              rdx, [rip + .Lx25_4]
                                                                                        jmp   rax
.Lx25_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx25_2
.Lx25_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx25_2
.Lx25_1:
                        call             rt_faildescr@PLT
.Lx25_2:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_p2_ω
                                                                                        jmp   proc_p2_ω
n18_call_proc_staged_β:
                                                                                        jmp   proc_p2_ω
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_β:
                                                                                        jmp   proc_p2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 184]
                        add              rsp, 208
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_ω:
                        mov              rax, [rsp + 192]
                        add              rsp, 208
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_dcα:
                        pop              r11
                        sub              rsp, 224
                        mov              qword ptr [rsp + 200], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 176], r11
                        lea              rax, [rip + .Lx26_2]
                        mov              qword ptr [rsp + 184], rax
                        lea              rax, [rip + .Lx26_3]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              qword ptr [rsp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 176
                        mov              edx, 176
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p2_α_body
.Lx26_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -208
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx26_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -208
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p3_α
proc_p3_α:
                        .global          proc_p3_α
                        .global          proc_p3_β
                        .global          proc_p3_γ
                        .global          proc_p3_ω
                        sub              rsp, 256
                        mov              [rsp + 232], rcx
                        mov              [rsp + 240], rdx
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 224
                        call             rt_jmp_frame_lexprep2@PLT
proc_p3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rsp + 160], 1
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n28_var_α
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "p3"
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n31_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_proc_staged_α:
                        mov              edi, 13
                        lea              rsi, [rsp + 160]
                        lea              rdx, [rsp + 176]
                        lea              rcx, [rsp + 192]
                        lea              r8, [rsp + 208]
                        call             rt_proc_call_open_det4@PLT
                        test             rax, rax
                                                                                        je    .Lx40_1
                        lea              rcx, [rip + .Lx40_3]
                        lea              rdx, [rip + .Lx40_4]
                                                                                        jmp   rax
.Lx40_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx40_2
.Lx40_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx40_2
.Lx40_1:
                        call             rt_faildescr@PLT
.Lx40_2:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_p3_ω
                                                                                        jmp   proc_p3_ω
n31_call_proc_staged_β:
                                                                                        jmp   proc_p3_ω
.Lx40_0:
                        .quad            .Lx40_0_s
.Lx40_0_s:
                        .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_β:
                                                                                        jmp   proc_p3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 232]
                        add              rsp, 256
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_ω:
                        mov              rax, [rsp + 240]
                        add              rsp, 256
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_dcα:
                        pop              r11
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 224], r11
                        lea              rax, [rip + .Lx41_2]
                        mov              qword ptr [rsp + 232], rax
                        lea              rax, [rip + .Lx41_3]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 224
                        mov              edx, 224
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p3_α_body
.Lx41_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -256
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx41_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -256
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p4_α
proc_p4_α:
                        .global          proc_p4_α
                        .global          proc_p4_β
                        .global          proc_p4_γ
                        .global          proc_p4_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              rdi, rsp
                        mov              esi, 272
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_p4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rsp + 192], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n43_var_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "p4"
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n47_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx58_20
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx58_21
.Lx58_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        call             rt_arg_stage@PLT
.Lx58_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx58_22
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx58_23
.Lx58_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        call             rt_arg_stage@PLT
.Lx58_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx58_24
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx58_25
.Lx58_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        call             rt_arg_stage@PLT
.Lx58_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx58_26
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx58_27
.Lx58_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        call             rt_arg_stage@PLT
.Lx58_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx58_28
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx58_29
.Lx58_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        call             rt_arg_stage@PLT
.Lx58_29:
                        mov              edi, 13
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx58_1
                        lea              rcx, [rip + .Lx58_3]
                        lea              rdx, [rip + .Lx58_4]
                                                                                        jmp   rax
.Lx58_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx58_2
.Lx58_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx58_2
.Lx58_1:
                        call             rt_faildescr@PLT
.Lx58_2:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_p4_ω
                                                                                        jmp   proc_p4_ω
n47_call_proc_staged_β:
                                                                                        jmp   proc_p4_ω
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_β:
                                                                                        jmp   proc_p4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 280]
                        add              rsp, 304
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_ω:
                        mov              rax, [rsp + 288]
                        add              rsp, 304
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_dcα:
                        pop              r11
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 272], r11
                        lea              rax, [rip + .Lx59_2]
                        mov              qword ptr [rsp + 280], rax
                        lea              rax, [rip + .Lx59_3]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 32], rcx
                        mov              qword ptr [rsp + 40], r8
                        mov              rdi, rbp
                        mov              esi, 272
                        mov              edx, 272
                        mov              ecx, 4
                        mov              r8d, 4
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p4_α_body
.Lx59_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -304
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx59_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -304
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p5_α
proc_p5_α:
                        .global          proc_p5_α
                        .global          proc_p5_β
                        .global          proc_p5_γ
                        .global          proc_p5_ω
                        sub              rsp, 352
                        mov              [rsp + 328], rcx
                        mov              [rsp + 336], rdx
                        mov              rdi, rsp
                        mov              esi, 320
                        mov              edx, 320
                        call             rt_jmp_frame_lexprep2@PLT
proc_p5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rsp + 224], 1
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n61_var_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "p5"
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n63_var_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n64_var_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n65_var_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n66_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx79_20
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx79_21
.Lx79_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        call             rt_arg_stage@PLT
.Lx79_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx79_22
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx79_23
.Lx79_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        call             rt_arg_stage@PLT
.Lx79_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx79_24
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx79_25
.Lx79_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        call             rt_arg_stage@PLT
.Lx79_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx79_26
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx79_27
.Lx79_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        call             rt_arg_stage@PLT
.Lx79_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx79_28
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx79_29
.Lx79_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        call             rt_arg_stage@PLT
.Lx79_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx79_30
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx79_31
.Lx79_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        call             rt_arg_stage@PLT
.Lx79_31:
                        mov              edi, 13
                        mov              esi, 6
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx79_1
                        lea              rcx, [rip + .Lx79_3]
                        lea              rdx, [rip + .Lx79_4]
                                                                                        jmp   rax
.Lx79_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx79_2
.Lx79_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx79_2
.Lx79_1:
                        call             rt_faildescr@PLT
.Lx79_2:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_p5_ω
                                                                                        jmp   proc_p5_ω
n66_call_proc_staged_β:
                                                                                        jmp   proc_p5_ω
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
proc_p5_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p5_β:
                                                                                        jmp   proc_p5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p5_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 328]
                        add              rsp, 352
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p5_ω:
                        mov              rax, [rsp + 336]
                        add              rsp, 352
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p6_α
proc_p6_α:
                        .global          proc_p6_α
                        .global          proc_p6_β
                        .global          proc_p6_γ
                        .global          proc_p6_ω
                        sub              rsp, 400
                        mov              [rsp + 376], rcx
                        mov              [rsp + 384], rdx
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 368
                        call             rt_jmp_frame_lexprep2@PLT
proc_p6_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rsp + 256], 1
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n81_var_α
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "p6"
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n82_var_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n83_var_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n84_var_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n86_var_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n87_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx102_20
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx102_21
.Lx102_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        call             rt_arg_stage@PLT
.Lx102_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx102_22
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx102_23
.Lx102_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        call             rt_arg_stage@PLT
.Lx102_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx102_24
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx102_25
.Lx102_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        call             rt_arg_stage@PLT
.Lx102_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx102_26
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx102_27
.Lx102_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        call             rt_arg_stage@PLT
.Lx102_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx102_28
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx102_29
.Lx102_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        call             rt_arg_stage@PLT
.Lx102_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx102_30
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx102_31
.Lx102_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        call             rt_arg_stage@PLT
.Lx102_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx102_32
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx102_33
.Lx102_32:
                        mov              edi, 6
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        call             rt_arg_stage@PLT
.Lx102_33:
                        mov              edi, 13
                        mov              esi, 7
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx102_1
                        lea              rcx, [rip + .Lx102_3]
                        lea              rdx, [rip + .Lx102_4]
                                                                                        jmp   rax
.Lx102_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx102_2
.Lx102_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx102_2
.Lx102_1:
                        call             rt_faildescr@PLT
.Lx102_2:
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_p6_ω
                                                                                        jmp   proc_p6_ω
n87_call_proc_staged_β:
                                                                                        jmp   proc_p6_ω
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
proc_p6_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p6_β:
                                                                                        jmp   proc_p6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p6_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 376]
                        add              rsp, 400
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p6_ω:
                        mov              rax, [rsp + 384]
                        add              rsp, 400
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p7_α
proc_p7_α:
                        .global          proc_p7_α
                        .global          proc_p7_β
                        .global          proc_p7_γ
                        .global          proc_p7_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 416
                        call             rt_jmp_frame_lexprep2@PLT
proc_p7_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        mov              qword ptr [rsp + 288], 1
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n104_var_α
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "p7"
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n105_var_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n106_var_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n108_var_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n111_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx128_20
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx128_21
.Lx128_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        call             rt_arg_stage@PLT
.Lx128_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx128_22
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx128_23
.Lx128_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        call             rt_arg_stage@PLT
.Lx128_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx128_24
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx128_25
.Lx128_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        call             rt_arg_stage@PLT
.Lx128_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx128_26
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx128_27
.Lx128_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        call             rt_arg_stage@PLT
.Lx128_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx128_28
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx128_29
.Lx128_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        call             rt_arg_stage@PLT
.Lx128_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx128_30
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx128_31
.Lx128_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        call             rt_arg_stage@PLT
.Lx128_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx128_32
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx128_33
.Lx128_32:
                        mov              edi, 6
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        call             rt_arg_stage@PLT
.Lx128_33:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx128_34
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 112], rax
                        mov              qword ptr [r10 + 120], rdx
                                                                                        jmp   .Lx128_35
.Lx128_34:
                        mov              edi, 7
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        call             rt_arg_stage@PLT
.Lx128_35:
                        mov              edi, 13
                        mov              esi, 8
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx128_1
                        lea              rcx, [rip + .Lx128_3]
                        lea              rdx, [rip + .Lx128_4]
                                                                                        jmp   rax
.Lx128_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx128_2
.Lx128_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx128_2
.Lx128_1:
                        call             rt_faildescr@PLT
.Lx128_2:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 99
                                                                                        je    proc_p7_ω
                                                                                        jmp   proc_p7_ω
n111_call_proc_staged_β:
                                                                                        jmp   proc_p7_ω
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
proc_p7_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p7_β:
                                                                                        jmp   proc_p7_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p7_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 424]
                        add              rsp, 448
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p7_ω:
                        mov              rax, [rsp + 432]
                        add              rsp, 448
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p8_α
proc_p8_α:
                        .global          proc_p8_α
                        .global          proc_p8_β
                        .global          proc_p8_γ
                        .global          proc_p8_ω
                        sub              rsp, 496
                        mov              [rsp + 472], rcx
                        mov              [rsp + 480], rdx
                        mov              rdi, rsp
                        mov              esi, 464
                        mov              edx, 464
                        call             rt_jmp_frame_lexprep2@PLT
proc_p8_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rsp + 320], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n130_var_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "p8"
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n131_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n132_var_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n133_var_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n134_var_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n136_var_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n137_var_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n138_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx157_20
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx157_21
.Lx157_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        call             rt_arg_stage@PLT
.Lx157_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx157_22
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx157_23
.Lx157_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        call             rt_arg_stage@PLT
.Lx157_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx157_24
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx157_25
.Lx157_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        call             rt_arg_stage@PLT
.Lx157_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx157_26
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx157_27
.Lx157_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        call             rt_arg_stage@PLT
.Lx157_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx157_28
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx157_29
.Lx157_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        call             rt_arg_stage@PLT
.Lx157_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx157_30
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx157_31
.Lx157_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        call             rt_arg_stage@PLT
.Lx157_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx157_32
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx157_33
.Lx157_32:
                        mov              edi, 6
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        call             rt_arg_stage@PLT
.Lx157_33:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx157_34
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 112], rax
                        mov              qword ptr [r10 + 120], rdx
                                                                                        jmp   .Lx157_35
.Lx157_34:
                        mov              edi, 7
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        call             rt_arg_stage@PLT
.Lx157_35:
                        mov              edi, 8
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        call             rt_arg_stage@PLT
                        mov              edi, 13
                        mov              esi, 9
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx157_1
                        lea              rcx, [rip + .Lx157_3]
                        lea              rdx, [rip + .Lx157_4]
                                                                                        jmp   rax
.Lx157_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx157_2
.Lx157_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx157_2
.Lx157_1:
                        call             rt_faildescr@PLT
.Lx157_2:
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_p8_ω
                                                                                        jmp   proc_p8_ω
n138_call_proc_staged_β:
                                                                                        jmp   proc_p8_ω
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
proc_p8_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p8_β:
                                                                                        jmp   proc_p8_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p8_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 472]
                        add              rsp, 496
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p8_ω:
                        mov              rax, [rsp + 480]
                        add              rsp, 496
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p9_α
proc_p9_α:
                        .global          proc_p9_α
                        .global          proc_p9_β
                        .global          proc_p9_γ
                        .global          proc_p9_ω
                        sub              rsp, 544
                        mov              [rsp + 520], rcx
                        mov              [rsp + 528], rdx
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 512
                        call             rt_jmp_frame_lexprep2@PLT
proc_p9_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        mov              qword ptr [rsp + 352], 1
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n159_var_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "p9"
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n160_var_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n161_var_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n162_var_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n163_var_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n165_var_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n166_var_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n167_var_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n168_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n168_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx189_20
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx189_21
.Lx189_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        call             rt_arg_stage@PLT
.Lx189_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx189_22
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx189_23
.Lx189_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        call             rt_arg_stage@PLT
.Lx189_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx189_24
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx189_25
.Lx189_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        call             rt_arg_stage@PLT
.Lx189_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx189_26
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx189_27
.Lx189_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        call             rt_arg_stage@PLT
.Lx189_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx189_28
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx189_29
.Lx189_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        call             rt_arg_stage@PLT
.Lx189_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx189_30
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx189_31
.Lx189_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        call             rt_arg_stage@PLT
.Lx189_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx189_32
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx189_33
.Lx189_32:
                        mov              edi, 6
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        call             rt_arg_stage@PLT
.Lx189_33:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx189_34
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 112], rax
                        mov              qword ptr [r10 + 120], rdx
                                                                                        jmp   .Lx189_35
.Lx189_34:
                        mov              edi, 7
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        call             rt_arg_stage@PLT
.Lx189_35:
                        mov              edi, 8
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        call             rt_arg_stage@PLT
                        mov              edi, 9
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        call             rt_arg_stage@PLT
                        mov              edi, 13
                        mov              esi, 10
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx189_1
                        lea              rcx, [rip + .Lx189_3]
                        lea              rdx, [rip + .Lx189_4]
                                                                                        jmp   rax
.Lx189_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx189_2
.Lx189_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx189_2
.Lx189_1:
                        call             rt_faildescr@PLT
.Lx189_2:
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 99
                                                                                        je    proc_p9_ω
                                                                                        jmp   proc_p9_ω
n168_call_proc_staged_β:
                                                                                        jmp   proc_p9_ω
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
proc_p9_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p9_β:
                                                                                        jmp   proc_p9_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p9_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 520]
                        add              rsp, 544
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p9_ω:
                        mov              rax, [rsp + 528]
                        add              rsp, 544
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p10_α
proc_p10_α:
                        .global          proc_p10_α
                        .global          proc_p10_β
                        .global          proc_p10_γ
                        .global          proc_p10_ω
                        sub              rsp, 592
                        mov              [rsp + 568], rcx
                        mov              [rsp + 576], rdx
                        mov              rdi, rsp
                        mov              esi, 560
                        mov              edx, 560
                        call             rt_jmp_frame_lexprep2@PLT
proc_p10_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        mov              qword ptr [rsp + 384], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n191_var_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "p10"
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n192_var_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n193_var_α
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n194_var_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n195_var_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n196_var_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n197_var_α
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n198_var_α
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n199_var_α
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n200_var_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n201_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n201_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx224_20
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx224_21
.Lx224_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        call             rt_arg_stage@PLT
.Lx224_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx224_22
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx224_23
.Lx224_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        call             rt_arg_stage@PLT
.Lx224_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx224_24
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx224_25
.Lx224_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        call             rt_arg_stage@PLT
.Lx224_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx224_26
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx224_27
.Lx224_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        call             rt_arg_stage@PLT
.Lx224_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx224_28
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx224_29
.Lx224_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        call             rt_arg_stage@PLT
.Lx224_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx224_30
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx224_31
.Lx224_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        call             rt_arg_stage@PLT
.Lx224_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx224_32
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx224_33
.Lx224_32:
                        mov              edi, 6
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        call             rt_arg_stage@PLT
.Lx224_33:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx224_34
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 112], rax
                        mov              qword ptr [r10 + 120], rdx
                                                                                        jmp   .Lx224_35
.Lx224_34:
                        mov              edi, 7
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        call             rt_arg_stage@PLT
.Lx224_35:
                        mov              edi, 8
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        call             rt_arg_stage@PLT
                        mov              edi, 9
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        call             rt_arg_stage@PLT
                        mov              edi, 10
                        mov              rsi, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        call             rt_arg_stage@PLT
                        mov              edi, 13
                        mov              esi, 11
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx224_1
                        lea              rcx, [rip + .Lx224_3]
                        lea              rdx, [rip + .Lx224_4]
                                                                                        jmp   rax
.Lx224_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx224_2
.Lx224_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx224_2
.Lx224_1:
                        call             rt_faildescr@PLT
.Lx224_2:
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 99
                                                                                        je    proc_p10_ω
                                                                                        jmp   proc_p10_ω
n201_call_proc_staged_β:
                                                                                        jmp   proc_p10_ω
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
proc_p10_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p10_β:
                                                                                        jmp   proc_p10_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p10_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 568]
                        add              rsp, 592
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p10_ω:
                        mov              rax, [rsp + 576]
                        add              rsp, 592
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p11_α
proc_p11_α:
                        .global          proc_p11_α
                        .global          proc_p11_β
                        .global          proc_p11_γ
                        .global          proc_p11_ω
                        sub              rsp, 640
                        mov              [rsp + 616], rcx
                        mov              [rsp + 624], rdx
                        mov              rdi, rsp
                        mov              esi, 608
                        mov              edx, 608
                        call             rt_jmp_frame_lexprep2@PLT
proc_p11_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        mov              qword ptr [rsp + 416], 1
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n226_var_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "p11"
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n227_var_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n228_var_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n229_var_α
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n230_var_α
#-----------------------------------------------------------------------------------------------------------------------
n230_var_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n231_var_α
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n232_var_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n234_var_α
#-----------------------------------------------------------------------------------------------------------------------
n234_var_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n235_var_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n236_var_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n237_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n237_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_20
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx262_21
.Lx262_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        call             rt_arg_stage@PLT
.Lx262_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_22
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx262_23
.Lx262_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        call             rt_arg_stage@PLT
.Lx262_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_24
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx262_25
.Lx262_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        call             rt_arg_stage@PLT
.Lx262_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_26
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx262_27
.Lx262_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        call             rt_arg_stage@PLT
.Lx262_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_28
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx262_29
.Lx262_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        call             rt_arg_stage@PLT
.Lx262_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_30
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx262_31
.Lx262_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        call             rt_arg_stage@PLT
.Lx262_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_32
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx262_33
.Lx262_32:
                        mov              edi, 6
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        call             rt_arg_stage@PLT
.Lx262_33:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_34
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 112], rax
                        mov              qword ptr [r10 + 120], rdx
                                                                                        jmp   .Lx262_35
.Lx262_34:
                        mov              edi, 7
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        call             rt_arg_stage@PLT
.Lx262_35:
                        mov              edi, 8
                        mov              rsi, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        call             rt_arg_stage@PLT
                        mov              edi, 9
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        call             rt_arg_stage@PLT
                        mov              edi, 10
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        call             rt_arg_stage@PLT
                        mov              edi, 11
                        mov              rsi, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        call             rt_arg_stage@PLT
                        mov              edi, 13
                        mov              esi, 12
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx262_1
                        lea              rcx, [rip + .Lx262_3]
                        lea              rdx, [rip + .Lx262_4]
                                                                                        jmp   rax
.Lx262_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx262_2
.Lx262_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx262_2
.Lx262_1:
                        call             rt_faildescr@PLT
.Lx262_2:
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 99
                                                                                        je    proc_p11_ω
                                                                                        jmp   proc_p11_ω
n237_call_proc_staged_β:
                                                                                        jmp   proc_p11_ω
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
proc_p11_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p11_β:
                                                                                        jmp   proc_p11_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p11_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 616]
                        add              rsp, 640
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p11_ω:
                        mov              rax, [rsp + 624]
                        add              rsp, 640
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p12_α
proc_p12_α:
                        .global          proc_p12_α
                        .global          proc_p12_β
                        .global          proc_p12_γ
                        .global          proc_p12_ω
                        sub              rsp, 688
                        mov              [rsp + 664], rcx
                        mov              [rsp + 672], rdx
                        mov              rdi, rsp
                        mov              esi, 656
                        mov              edx, 656
                        call             rt_jmp_frame_lexprep2@PLT
proc_p12_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:
                        mov              qword ptr [rsp + 448], 1
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n264_var_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "p12"
#-----------------------------------------------------------------------------------------------------------------------
n264_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n265_var_α
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n266_var_α
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n267_var_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n268_var_α
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n269_var_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n270_var_α
#-----------------------------------------------------------------------------------------------------------------------
n270_var_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n271_var_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n272_var_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n273_var_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n274_var_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 632], rax
                                                                                        jmp   n275_var_α
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 648], rax
                                                                                        jmp   n276_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n276_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx303_20
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx303_21
.Lx303_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        call             rt_arg_stage@PLT
.Lx303_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx303_22
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx303_23
.Lx303_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        call             rt_arg_stage@PLT
.Lx303_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx303_24
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx303_25
.Lx303_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        call             rt_arg_stage@PLT
.Lx303_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx303_26
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx303_27
.Lx303_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        call             rt_arg_stage@PLT
.Lx303_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx303_28
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx303_29
.Lx303_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        call             rt_arg_stage@PLT
.Lx303_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx303_30
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx303_31
.Lx303_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        call             rt_arg_stage@PLT
.Lx303_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx303_32
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx303_33
.Lx303_32:
                        mov              edi, 6
                        mov              rsi, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        call             rt_arg_stage@PLT
.Lx303_33:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx303_34
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 112], rax
                        mov              qword ptr [r10 + 120], rdx
                                                                                        jmp   .Lx303_35
.Lx303_34:
                        mov              edi, 7
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        call             rt_arg_stage@PLT
.Lx303_35:
                        mov              edi, 8
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        call             rt_arg_stage@PLT
                        mov              edi, 9
                        mov              rsi, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        call             rt_arg_stage@PLT
                        mov              edi, 10
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        call             rt_arg_stage@PLT
                        mov              edi, 11
                        mov              rsi, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        call             rt_arg_stage@PLT
                        mov              edi, 12
                        mov              rsi, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        call             rt_arg_stage@PLT
                        mov              edi, 13
                        mov              esi, 13
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx303_1
                        lea              rcx, [rip + .Lx303_3]
                        lea              rdx, [rip + .Lx303_4]
                                                                                        jmp   rax
.Lx303_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx303_2
.Lx303_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx303_2
.Lx303_1:
                        call             rt_faildescr@PLT
.Lx303_2:
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 99
                                                                                        je    proc_p12_ω
                                                                                        jmp   proc_p12_ω
n276_call_proc_staged_β:
                                                                                        jmp   proc_p12_ω
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "note"
#-----------------------------------------------------------------------------------------------------------------------
proc_p12_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p12_β:
                                                                                        jmp   proc_p12_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p12_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 664]
                        add              rsp, 688
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p12_ω:
                        mov              rax, [rsp + 672]
                        add              rsp, 688
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_note_α
proc_note_α:
                        .global          proc_note_α
                        .global          proc_note_β
                        .global          proc_note_γ
                        .global          proc_note_ω
                        sub              rsp, 384
                        mov              [rsp + 360], rcx
                        mov              [rsp + 368], rdx
                        mov              [rsp + 376], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 336
                        mov              edx, 352
                        call             rt_jmp_frame_lexprep2@PLT
proc_note_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n305_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n305_iterate_α:
                        mov              qword ptr [rbp + 96], 0
.Lx320_0:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 96]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              rax, 99
                                                                                        je    n306_call_builtin_icon_α
                                                                                        jmp   n307_assign_α
n305_iterate_β:
                        inc              qword ptr [rbp + 96]
                                                                                        jmp   .Lx320_0
#-----------------------------------------------------------------------------------------------------------------------
n306_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn322:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn322]
                        lea              rsi, [rbp + 48]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n308_return_α
                                                                                        jmp   n308_return_α
n306_call_builtin_icon_β:
                                                                                        jmp   n308_return_α
#-----------------------------------------------------------------------------------------------------------------------
n307_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n309_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n308_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_note_γ
#-----------------------------------------------------------------------------------------------------------------------
n309_bound_α:
                        mov              qword ptr [rbp + 128], rsp
                                                                                        jmp   n310_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n310_disjunction_α:
                        mov              qword ptr [rbp + 240], 0
                        mov              qword ptr [rbp + 248], 0
                        mov              dword ptr [rbp + 256], 0
                                                                                        jmp   n312_var_α
n310_disjunction_as:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        jne   .Lx328_0
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n311_lit_string_α
.Lx328_0:
                        cmp              eax, 1
                                                                                        jne   .Lx328_1
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n311_lit_string_α
.Lx328_1:
                                                                                        jmp   n311_lit_string_α
n310_disjunction_β:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        je    n310_disjunction_af
                                                                                        jmp   n310_disjunction_af
n310_disjunction_af:
                        add              dword ptr [rbp + 256], 1
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 1
                                                                                        je    n313_lit_string_α
                                                                                        jmp   n316_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n315_call_builtin_icon_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n314_unop_test_α
n312_var_β:
                                                                                        jmp   n310_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n310_disjunction_as
n313_lit_string_β:
                                                                                        jmp   n310_disjunction_af
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "~"
#-----------------------------------------------------------------------------------------------------------------------
n314_unop_test_α:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 99
                                                                                        je    n310_disjunction_af
                        cmp              eax, 0
                                                                                        je    n310_disjunction_af
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n310_disjunction_as
n314_unop_test_β:
                                                                                        jmp   n310_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn335:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn335]
                        lea              rsi, [rbp + 192]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n310_disjunction_β
                                                                                        jmp   n316_unmark_α
n315_call_builtin_icon_β:
                                                                                        jmp   n310_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n316_unmark_α:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n305_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
proc_note_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_note_β:
                                                                                        jmp   proc_note_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_note_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 360]
                        lea              rsp, [rbp + 384]
                        mov              rbp, [rbp + 376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_note_ω:
                        mov              rax, [rbp + 368]
                        lea              rsp, [rbp + 384]
                        mov              rbp, [rbp + 376]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "p0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_p0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 64
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_p0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "p1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_p1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 128
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_p1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "p2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_p2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 176
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_p2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "p3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_p3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_p3_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "p4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_p4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_p4_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "p5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_p5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 5
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "p6"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_p6_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 6
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 368
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "p7"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_p7_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 7
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "p8"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_p8_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 8
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 464
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "p9"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_p9_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 9
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 512
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "p10"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_p10_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 10
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 560
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "p11"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_p11_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 11
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 608
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "p12"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_p12_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 12
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 656
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "note"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_note_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 352
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_variadic@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
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
                        sub              rsp, 5720
                        mov              rdi, rsp
                        mov              ecx, 5720
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 5712], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_integer_α:
                        mov              qword ptr [rbp + 5328], 6
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rbp + 5336], rax
                                                                                        jmp   n339_lit_integer_α
.Lx508_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_integer_α:
                        mov              qword ptr [rbp + 5344], 6
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rbp + 5352], rax
                                                                                        jmp   n340_lit_string_α
.Lx509_0:
                        .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:
                        mov              qword ptr [rbp + 5360], 1
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rbp + 5368], rax
                                                                                        jmp   n341_lit_string_α
.Lx510_0:
                        .quad            .Lx510_0_s
.Lx510_0_s:
                        .string          "image"
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:
                        mov              qword ptr [rbp + 5440], 1
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rbp + 5448], rax
                                                                                        jmp   n342_lit_integer_α
.Lx511_0:
                        .quad            .Lx511_0_s
.Lx511_0_s:
                        .string          "~==="
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_integer_α:
                        mov              qword ptr [rbp + 5456], 6
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rbp + 5464], rax
                                                                                        jmp   n343_call_builtin_icon_α
.Lx512_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5440]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5448]
                        mov              qword ptr [rbp + 5400], rax
                        mov              rax, qword ptr [rbp + 5456]
                        mov              qword ptr [rbp + 5408], rax
                        mov              rax, qword ptr [rbp + 5464]
                        mov              qword ptr [rbp + 5416], rax
                        .section         .rodata
.Lrkfn514:              .string          "proc"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn514]
                        lea              rsi, [rbp + 5392]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx
                        cmp              eax, 99
                                                                                        je    n345_var_α
                                                                                        jmp   n344_proc_value_α
n343_call_builtin_icon_β:
                                                                                        jmp   n345_var_α
#-----------------------------------------------------------------------------------------------------------------------
n344_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx516_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                                                                                        jmp   n346_proc_value_α
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "p0"
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 4968], rax
                                                                                        jmp   n347_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n346_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx520_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx
                                                                                        jmp   n349_proc_value_α
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n347_iterate_α:
                        mov              qword ptr [rbp + 4944], 0
.Lx522_0:
                        mov              rdi, qword ptr [rbp + 4960]
                        mov              rsi, qword ptr [rbp + 4968]
                        mov              rdx, qword ptr [rbp + 4944]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                        cmp              rax, 99
                                                                                        je    n348_var_α
                                                                                        jmp   n350_call_value_α
n347_iterate_β:
                        inc              qword ptr [rbp + 4944]
                                                                                        jmp   .Lx522_0
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n351_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n349_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx526_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5504], rax
                        mov              qword ptr [rbp + 5512], rdx
                                                                                        jmp   n353_proc_value_α
.Lx526_0:
                        .quad            .Lx526_0_s
.Lx526_0_s:
                        .string          "p2"
#-----------------------------------------------------------------------------------------------------------------------
n350_call_value_α:
                        mov              qword ptr [rbp + 4992], 0
                        mov              rdi, qword ptr [rbp + 4928]
                        mov              rsi, qword ptr [rbp + 4936]
                        lea              rdx, [rbp + 4992]
                        mov              ecx, 0
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx528_7
                        lea              rcx, [rip + .Lx528_3]
                        lea              rdx, [rip + .Lx528_4]
                                                                                        jmp   rax
.Lx528_3:
                        mov              qword ptr [rbp + 5000], rsp
                        mov              rax, qword ptr [rbp + 4992]
                        test             rax, rax
                                                                                        jne   .Lx528_5
                        mov              qword ptr [rbp + 4992], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx528_2
.Lx528_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx528_2
.Lx528_4:
                        mov              qword ptr [rbp + 5000], rsp
                        mov              rax, qword ptr [rbp + 4992]
                        test             rax, rax
                                                                                        jne   .Lx528_6
                        mov              qword ptr [rbp + 4992], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx528_2
.Lx528_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx528_2
.Lx528_7:
                        mov              rdi, qword ptr [rbp + 4928]
                        mov              rsi, qword ptr [rbp + 4936]
                        lea              rdx, [rbp + 4992]
                        mov              ecx, 0
                        lea              r8, [rbp + 4992]
                        call             rt_call_value_gen_h@PLT
.Lx528_2:
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                        cmp              eax, 99
                                                                                        je    n347_iterate_β
                                                                                        jmp   n354_call_builtin_icon_α
n350_call_value_β:
                        mov              rax, qword ptr [rbp + 4992]
                        cmp              rax, 1
                                                                                        jne   .Lx528_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 5000]
                                                                                        jmp   qword ptr [rsp]
.Lx528_8:
                        lea              rdi, [rbp + 4992]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n347_iterate_β
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                                                                                        jmp   n354_call_builtin_icon_α
                                                                                        jmp   n347_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n351_iterate_α:
                        mov              qword ptr [rbp + 4752], 0
.Lx530_0:
                        mov              rdi, qword ptr [rbp + 4768]
                        mov              rsi, qword ptr [rbp + 4776]
                        mov              rdx, qword ptr [rbp + 4752]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 4736], rax
                        mov              qword ptr [rbp + 4744], rdx
                        cmp              rax, 99
                                                                                        je    n352_var_α
                                                                                        jmp   n355_lit_integer_α
n351_iterate_β:
                        inc              qword ptr [rbp + 4752]
                                                                                        jmp   .Lx530_0
#-----------------------------------------------------------------------------------------------------------------------
n352_var_α:
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 4552], rax
                                                                                        jmp   n356_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n353_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx534_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5520], rax
                        mov              qword ptr [rbp + 5528], rdx
                                                                                        jmp   n358_proc_value_α
.Lx534_0:
                        .quad            .Lx534_0_s
.Lx534_0_s:
                        .string          "p3"
#-----------------------------------------------------------------------------------------------------------------------
n354_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 4896], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 4904], rax
                        .section         .rodata
.Lrkfn536:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn536]
                        lea              rsi, [rbp + 4896]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4880], rax
                        mov              qword ptr [rbp + 4888], rdx
                        cmp              eax, 99
                                                                                        je    n350_call_value_β
                                                                                        jmp   n350_call_value_β
n354_call_builtin_icon_β:
                                                                                        jmp   n350_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:
                        mov              qword ptr [rbp + 4864], 6
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rbp + 4872], rax
                                                                                        jmp   n359_call_value_α
.Lx537_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n356_iterate_α:
                        mov              qword ptr [rbp + 4528], 0
.Lx539_0:
                        mov              rdi, qword ptr [rbp + 4544]
                        mov              rsi, qword ptr [rbp + 4552]
                        mov              rdx, qword ptr [rbp + 4528]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx
                        cmp              rax, 99
                                                                                        je    n357_var_α
                                                                                        jmp   n360_lit_integer_α
n356_iterate_β:
                        inc              qword ptr [rbp + 4528]
                                                                                        jmp   .Lx539_0
#-----------------------------------------------------------------------------------------------------------------------
n357_var_α:
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n361_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n358_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx543_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5536], rax
                        mov              qword ptr [rbp + 5544], rdx
                                                                                        jmp   n363_proc_value_α
.Lx543_0:
                        .quad            .Lx543_0_s
.Lx543_0_s:
                        .string          "p4"
#-----------------------------------------------------------------------------------------------------------------------
n359_call_value_α:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 4808], rax
                        mov              qword ptr [rbp + 4816], 0
                        mov              rdi, qword ptr [rbp + 4736]
                        mov              rsi, qword ptr [rbp + 4744]
                        lea              rdx, [rbp + 4800]
                        mov              ecx, 1
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx545_7
                        lea              rcx, [rip + .Lx545_3]
                        lea              rdx, [rip + .Lx545_4]
                                                                                        jmp   rax
.Lx545_3:
                        mov              qword ptr [rbp + 4824], rsp
                        mov              rax, qword ptr [rbp + 4816]
                        test             rax, rax
                                                                                        jne   .Lx545_5
                        mov              qword ptr [rbp + 4816], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx545_2
.Lx545_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx545_2
.Lx545_4:
                        mov              qword ptr [rbp + 4824], rsp
                        mov              rax, qword ptr [rbp + 4816]
                        test             rax, rax
                                                                                        jne   .Lx545_6
                        mov              qword ptr [rbp + 4816], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx545_2
.Lx545_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx545_2
.Lx545_7:
                        mov              rdi, qword ptr [rbp + 4736]
                        mov              rsi, qword ptr [rbp + 4744]
                        lea              rdx, [rbp + 4800]
                        mov              ecx, 1
                        lea              r8, [rbp + 4816]
                        call             rt_call_value_gen_h@PLT
.Lx545_2:
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              eax, 99
                                                                                        je    n351_iterate_β
                                                                                        jmp   n364_call_builtin_icon_α
n359_call_value_β:
                        mov              rax, qword ptr [rbp + 4816]
                        cmp              rax, 1
                                                                                        jne   .Lx545_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 4824]
                                                                                        jmp   qword ptr [rsp]
.Lx545_8:
                        lea              rdi, [rbp + 4816]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n351_iterate_β
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                                                                                        jmp   n364_call_builtin_icon_α
                                                                                        jmp   n351_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_integer_α:
                        mov              qword ptr [rbp + 4656], 6
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n365_lit_integer_α
.Lx546_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n361_iterate_α:
                        mov              qword ptr [rbp + 4272], 0
.Lx548_0:
                        mov              rdi, qword ptr [rbp + 4288]
                        mov              rsi, qword ptr [rbp + 4296]
                        mov              rdx, qword ptr [rbp + 4272]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        cmp              rax, 99
                                                                                        je    n362_var_α
                                                                                        jmp   n366_lit_integer_α
n361_iterate_β:
                        inc              qword ptr [rbp + 4272]
                                                                                        jmp   .Lx548_0
#-----------------------------------------------------------------------------------------------------------------------
n362_var_α:
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   n367_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n363_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx552_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx
                                                                                        jmp   n369_proc_value_α
.Lx552_0:
                        .quad            .Lx552_0_s
.Lx552_0_s:
                        .string          "p5"
#-----------------------------------------------------------------------------------------------------------------------
n364_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 4712], rax
                        .section         .rodata
.Lrkfn554:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn554]
                        lea              rsi, [rbp + 4704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx
                        cmp              eax, 99
                                                                                        je    n359_call_value_β
                                                                                        jmp   n359_call_value_β
n364_call_builtin_icon_β:
                                                                                        jmp   n359_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_integer_α:
                        mov              qword ptr [rbp + 4672], 6
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rbp + 4680], rax
                                                                                        jmp   n370_call_value_α
.Lx555_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_integer_α:
                        mov              qword ptr [rbp + 4416], 6
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rbp + 4424], rax
                                                                                        jmp   n371_lit_integer_α
.Lx556_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n367_iterate_α:
                        mov              qword ptr [rbp + 3984], 0
.Lx558_0:
                        mov              rdi, qword ptr [rbp + 4000]
                        mov              rsi, qword ptr [rbp + 4008]
                        mov              rdx, qword ptr [rbp + 3984]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                        cmp              rax, 99
                                                                                        je    n368_var_α
                                                                                        jmp   n372_lit_integer_α
n367_iterate_β:
                        inc              qword ptr [rbp + 3984]
                                                                                        jmp   .Lx558_0
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n373_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n369_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx562_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                                                                                        jmp   n375_proc_value_α
.Lx562_0:
                        .quad            .Lx562_0_s
.Lx562_0_s:
                        .string          "p6"
#-----------------------------------------------------------------------------------------------------------------------
n370_call_value_α:
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4584], rax
                        mov              rax, qword ptr [rbp + 4672]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 4680]
                        mov              qword ptr [rbp + 4600], rax
                        mov              qword ptr [rbp + 4608], 0
                        mov              rdi, qword ptr [rbp + 4512]
                        mov              rsi, qword ptr [rbp + 4520]
                        lea              rdx, [rbp + 4576]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx564_7
                        lea              rcx, [rip + .Lx564_3]
                        lea              rdx, [rip + .Lx564_4]
                                                                                        jmp   rax
.Lx564_3:
                        mov              qword ptr [rbp + 4616], rsp
                        mov              rax, qword ptr [rbp + 4608]
                        test             rax, rax
                                                                                        jne   .Lx564_5
                        mov              qword ptr [rbp + 4608], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx564_2
.Lx564_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx564_2
.Lx564_4:
                        mov              qword ptr [rbp + 4616], rsp
                        mov              rax, qword ptr [rbp + 4608]
                        test             rax, rax
                                                                                        jne   .Lx564_6
                        mov              qword ptr [rbp + 4608], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx564_2
.Lx564_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx564_2
.Lx564_7:
                        mov              rdi, qword ptr [rbp + 4512]
                        mov              rsi, qword ptr [rbp + 4520]
                        lea              rdx, [rbp + 4576]
                        mov              ecx, 2
                        lea              r8, [rbp + 4608]
                        call             rt_call_value_gen_h@PLT
.Lx564_2:
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                        cmp              eax, 99
                                                                                        je    n356_iterate_β
                                                                                        jmp   n376_call_builtin_icon_α
n370_call_value_β:
                        mov              rax, qword ptr [rbp + 4608]
                        cmp              rax, 1
                                                                                        jne   .Lx564_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 4616]
                                                                                        jmp   qword ptr [rsp]
.Lx564_8:
                        lea              rdi, [rbp + 4608]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n356_iterate_β
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                                                                                        jmp   n376_call_builtin_icon_α
                                                                                        jmp   n356_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_integer_α:
                        mov              qword ptr [rbp + 4432], 6
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n377_lit_integer_α
.Lx565_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_integer_α:
                        mov              qword ptr [rbp + 4144], 6
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n378_lit_integer_α
.Lx566_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n373_iterate_α:
                        mov              qword ptr [rbp + 3664], 0
.Lx568_0:
                        mov              rdi, qword ptr [rbp + 3680]
                        mov              rsi, qword ptr [rbp + 3688]
                        mov              rdx, qword ptr [rbp + 3664]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                        cmp              rax, 99
                                                                                        je    n374_var_α
                                                                                        jmp   n379_lit_integer_α
n373_iterate_β:
                        inc              qword ptr [rbp + 3664]
                                                                                        jmp   .Lx568_0
#-----------------------------------------------------------------------------------------------------------------------
n374_var_α:
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n380_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n375_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx572_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx
                                                                                        jmp   n382_proc_value_α
.Lx572_0:
                        .quad            .Lx572_0_s
.Lx572_0_s:
                        .string          "p7"
#-----------------------------------------------------------------------------------------------------------------------
n376_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4488], rax
                        .section         .rodata
.Lrkfn574:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn574]
                        lea              rsi, [rbp + 4480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                        cmp              eax, 99
                                                                                        je    n370_call_value_β
                                                                                        jmp   n370_call_value_β
n376_call_builtin_icon_β:
                                                                                        jmp   n370_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_integer_α:
                        mov              qword ptr [rbp + 4448], 6
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n383_call_value_α
.Lx575_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_integer_α:
                        mov              qword ptr [rbp + 4160], 6
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rbp + 4168], rax
                                                                                        jmp   n384_lit_integer_α
.Lx576_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_integer_α:
                        mov              qword ptr [rbp + 3840], 6
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n385_lit_integer_α
.Lx577_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n380_iterate_α:
                        mov              qword ptr [rbp + 3312], 0
.Lx579_0:
                        mov              rdi, qword ptr [rbp + 3328]
                        mov              rsi, qword ptr [rbp + 3336]
                        mov              rdx, qword ptr [rbp + 3312]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              rax, 99
                                                                                        je    n381_var_α
                                                                                        jmp   n386_lit_integer_α
n380_iterate_β:
                        inc              qword ptr [rbp + 3312]
                                                                                        jmp   .Lx579_0
#-----------------------------------------------------------------------------------------------------------------------
n381_var_α:
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n387_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n382_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx583_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                                                                                        jmp   n389_proc_value_α
.Lx583_0:
                        .quad            .Lx583_0_s
.Lx583_0_s:
                        .string          "p8"
#-----------------------------------------------------------------------------------------------------------------------
n383_call_value_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4328], rax
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4344], rax
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 4360], rax
                        mov              qword ptr [rbp + 4368], 0
                        mov              rdi, qword ptr [rbp + 4256]
                        mov              rsi, qword ptr [rbp + 4264]
                        lea              rdx, [rbp + 4320]
                        mov              ecx, 3
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx585_7
                        lea              rcx, [rip + .Lx585_3]
                        lea              rdx, [rip + .Lx585_4]
                                                                                        jmp   rax
.Lx585_3:
                        mov              qword ptr [rbp + 4376], rsp
                        mov              rax, qword ptr [rbp + 4368]
                        test             rax, rax
                                                                                        jne   .Lx585_5
                        mov              qword ptr [rbp + 4368], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx585_2
.Lx585_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx585_2
.Lx585_4:
                        mov              qword ptr [rbp + 4376], rsp
                        mov              rax, qword ptr [rbp + 4368]
                        test             rax, rax
                                                                                        jne   .Lx585_6
                        mov              qword ptr [rbp + 4368], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx585_2
.Lx585_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx585_2
.Lx585_7:
                        mov              rdi, qword ptr [rbp + 4256]
                        mov              rsi, qword ptr [rbp + 4264]
                        lea              rdx, [rbp + 4320]
                        mov              ecx, 3
                        lea              r8, [rbp + 4368]
                        call             rt_call_value_gen_h@PLT
.Lx585_2:
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                        cmp              eax, 99
                                                                                        je    n361_iterate_β
                                                                                        jmp   n390_call_builtin_icon_α
n383_call_value_β:
                        mov              rax, qword ptr [rbp + 4368]
                        cmp              rax, 1
                                                                                        jne   .Lx585_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 4376]
                                                                                        jmp   qword ptr [rsp]
.Lx585_8:
                        lea              rdi, [rbp + 4368]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n361_iterate_β
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                                                                                        jmp   n390_call_builtin_icon_α
                                                                                        jmp   n361_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_integer_α:
                        mov              qword ptr [rbp + 4176], 6
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rbp + 4184], rax
                                                                                        jmp   n391_lit_integer_α
.Lx586_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_integer_α:
                        mov              qword ptr [rbp + 3856], 6
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rbp + 3864], rax
                                                                                        jmp   n392_lit_integer_α
.Lx587_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_integer_α:
                        mov              qword ptr [rbp + 3504], 6
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n393_lit_integer_α
.Lx588_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n387_iterate_α:
                        mov              qword ptr [rbp + 2928], 0
.Lx590_0:
                        mov              rdi, qword ptr [rbp + 2944]
                        mov              rsi, qword ptr [rbp + 2952]
                        mov              rdx, qword ptr [rbp + 2928]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              rax, 99
                                                                                        je    n388_var_α
                                                                                        jmp   n394_lit_integer_α
n387_iterate_β:
                        inc              qword ptr [rbp + 2928]
                                                                                        jmp   .Lx590_0
#-----------------------------------------------------------------------------------------------------------------------
n388_var_α:
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n395_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n389_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx594_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5616], rax
                        mov              qword ptr [rbp + 5624], rdx
                                                                                        jmp   n397_proc_value_α
.Lx594_0:
                        .quad            .Lx594_0_s
.Lx594_0_s:
                        .string          "p9"
#-----------------------------------------------------------------------------------------------------------------------
n390_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 4232], rax
                        .section         .rodata
.Lrkfn596:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn596]
                        lea              rsi, [rbp + 4224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                        cmp              eax, 99
                                                                                        je    n383_call_value_β
                                                                                        jmp   n383_call_value_β
n390_call_builtin_icon_β:
                                                                                        jmp   n383_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_integer_α:
                        mov              qword ptr [rbp + 4192], 6
                        mov              rax, qword ptr [rip + .Lx597_0]
                        mov              qword ptr [rbp + 4200], rax
                                                                                        jmp   n398_call_value_α
.Lx597_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_integer_α:
                        mov              qword ptr [rbp + 3872], 6
                        mov              rax, qword ptr [rip + .Lx598_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n399_lit_integer_α
.Lx598_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_integer_α:
                        mov              qword ptr [rbp + 3520], 6
                        mov              rax, qword ptr [rip + .Lx599_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n400_lit_integer_α
.Lx599_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_integer_α:
                        mov              qword ptr [rbp + 3136], 6
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n401_lit_integer_α
.Lx600_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n395_iterate_α:
                        mov              qword ptr [rbp + 2512], 0
.Lx602_0:
                        mov              rdi, qword ptr [rbp + 2528]
                        mov              rsi, qword ptr [rbp + 2536]
                        mov              rdx, qword ptr [rbp + 2512]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              rax, 99
                                                                                        je    n396_var_α
                                                                                        jmp   n402_lit_integer_α
n395_iterate_β:
                        inc              qword ptr [rbp + 2512]
                                                                                        jmp   .Lx602_0
#-----------------------------------------------------------------------------------------------------------------------
n396_var_α:
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n403_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n397_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx606_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5632], rax
                        mov              qword ptr [rbp + 5640], rdx
                                                                                        jmp   n405_proc_value_α
.Lx606_0:
                        .quad            .Lx606_0_s
.Lx606_0_s:
                        .string          "p10"
#-----------------------------------------------------------------------------------------------------------------------
n398_call_value_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4040], rax
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 4056], rax
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4072], rax
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4080], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4088], rax
                        mov              qword ptr [rbp + 4096], 0
                        mov              rdi, qword ptr [rbp + 3968]
                        mov              rsi, qword ptr [rbp + 3976]
                        lea              rdx, [rbp + 4032]
                        mov              ecx, 4
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx608_7
                        lea              rcx, [rip + .Lx608_3]
                        lea              rdx, [rip + .Lx608_4]
                                                                                        jmp   rax
.Lx608_3:
                        mov              qword ptr [rbp + 4104], rsp
                        mov              rax, qword ptr [rbp + 4096]
                        test             rax, rax
                                                                                        jne   .Lx608_5
                        mov              qword ptr [rbp + 4096], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx608_2
.Lx608_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx608_2
.Lx608_4:
                        mov              qword ptr [rbp + 4104], rsp
                        mov              rax, qword ptr [rbp + 4096]
                        test             rax, rax
                                                                                        jne   .Lx608_6
                        mov              qword ptr [rbp + 4096], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx608_2
.Lx608_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx608_2
.Lx608_7:
                        mov              rdi, qword ptr [rbp + 3968]
                        mov              rsi, qword ptr [rbp + 3976]
                        lea              rdx, [rbp + 4032]
                        mov              ecx, 4
                        lea              r8, [rbp + 4096]
                        call             rt_call_value_gen_h@PLT
.Lx608_2:
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                        cmp              eax, 99
                                                                                        je    n367_iterate_β
                                                                                        jmp   n406_call_builtin_icon_α
n398_call_value_β:
                        mov              rax, qword ptr [rbp + 4096]
                        cmp              rax, 1
                                                                                        jne   .Lx608_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 4104]
                                                                                        jmp   qword ptr [rsp]
.Lx608_8:
                        lea              rdi, [rbp + 4096]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n367_iterate_β
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                                                                                        jmp   n406_call_builtin_icon_α
                                                                                        jmp   n367_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_integer_α:
                        mov              qword ptr [rbp + 3888], 6
                        mov              rax, qword ptr [rip + .Lx609_0]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n407_lit_integer_α
.Lx609_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_integer_α:
                        mov              qword ptr [rbp + 3536], 6
                        mov              rax, qword ptr [rip + .Lx610_0]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n408_lit_integer_α
.Lx610_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_integer_α:
                        mov              qword ptr [rbp + 3152], 6
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n409_lit_integer_α
.Lx611_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_integer_α:
                        mov              qword ptr [rbp + 2736], 6
                        mov              rax, qword ptr [rip + .Lx612_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n410_lit_integer_α
.Lx612_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n403_iterate_α:
                        mov              qword ptr [rbp + 2064], 0
.Lx614_0:
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 2064]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              rax, 99
                                                                                        je    n404_var_α
                                                                                        jmp   n411_lit_integer_α
n403_iterate_β:
                        inc              qword ptr [rbp + 2064]
                                                                                        jmp   .Lx614_0
#-----------------------------------------------------------------------------------------------------------------------
n404_var_α:
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n412_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n405_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx618_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                                                                                        jmp   n414_proc_value_α
.Lx618_0:
                        .quad            .Lx618_0_s
.Lx618_0_s:
                        .string          "p11"
#-----------------------------------------------------------------------------------------------------------------------
n406_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4016]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 4024]
                        mov              qword ptr [rbp + 3944], rax
                        .section         .rodata
.Lrkfn620:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn620]
                        lea              rsi, [rbp + 3936]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                        cmp              eax, 99
                                                                                        je    n398_call_value_β
                                                                                        jmp   n398_call_value_β
n406_call_builtin_icon_β:
                                                                                        jmp   n398_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_integer_α:
                        mov              qword ptr [rbp + 3904], 6
                        mov              rax, qword ptr [rip + .Lx621_0]
                        mov              qword ptr [rbp + 3912], rax
                                                                                        jmp   n415_call_value_α
.Lx621_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_integer_α:
                        mov              qword ptr [rbp + 3552], 6
                        mov              rax, qword ptr [rip + .Lx622_0]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n416_lit_integer_α
.Lx622_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_integer_α:
                        mov              qword ptr [rbp + 3168], 6
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n417_lit_integer_α
.Lx623_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_integer_α:
                        mov              qword ptr [rbp + 2752], 6
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n418_lit_integer_α
.Lx624_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_integer_α:
                        mov              qword ptr [rbp + 2304], 6
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n419_lit_integer_α
.Lx625_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n412_iterate_α:
                        mov              qword ptr [rbp + 1584], 0
.Lx627_0:
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              rdx, qword ptr [rbp + 1584]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              rax, 99
                                                                                        je    n413_var_α
                                                                                        jmp   n420_lit_integer_α
n412_iterate_β:
                        inc              qword ptr [rbp + 1584]
                                                                                        jmp   .Lx627_0
#-----------------------------------------------------------------------------------------------------------------------
n413_var_α:
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n421_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n414_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx631_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                                                                                        jmp   n423_make_list_α
.Lx631_0:
                        .quad            .Lx631_0_s
.Lx631_0_s:
                        .string          "p12"
#-----------------------------------------------------------------------------------------------------------------------
n415_call_value_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3720], rax
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3736], rax
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3752], rax
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3768], rax
                        mov              rax, qword ptr [rbp + 3904]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 3784], rax
                        mov              qword ptr [rbp + 3792], 0
                        mov              rdi, qword ptr [rbp + 3648]
                        mov              rsi, qword ptr [rbp + 3656]
                        lea              rdx, [rbp + 3712]
                        mov              ecx, 5
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx633_7
                        lea              rcx, [rip + .Lx633_3]
                        lea              rdx, [rip + .Lx633_4]
                                                                                        jmp   rax
.Lx633_3:
                        mov              qword ptr [rbp + 3800], rsp
                        mov              rax, qword ptr [rbp + 3792]
                        test             rax, rax
                                                                                        jne   .Lx633_5
                        mov              qword ptr [rbp + 3792], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx633_2
.Lx633_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx633_2
.Lx633_4:
                        mov              qword ptr [rbp + 3800], rsp
                        mov              rax, qword ptr [rbp + 3792]
                        test             rax, rax
                                                                                        jne   .Lx633_6
                        mov              qword ptr [rbp + 3792], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx633_2
.Lx633_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx633_2
.Lx633_7:
                        mov              rdi, qword ptr [rbp + 3648]
                        mov              rsi, qword ptr [rbp + 3656]
                        lea              rdx, [rbp + 3712]
                        mov              ecx, 5
                        lea              r8, [rbp + 3792]
                        call             rt_call_value_gen_h@PLT
.Lx633_2:
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              eax, 99
                                                                                        je    n373_iterate_β
                                                                                        jmp   n424_call_builtin_icon_α
n415_call_value_β:
                        mov              rax, qword ptr [rbp + 3792]
                        cmp              rax, 1
                                                                                        jne   .Lx633_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3800]
                                                                                        jmp   qword ptr [rsp]
.Lx633_8:
                        lea              rdi, [rbp + 3792]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n373_iterate_β
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                                                                                        jmp   n424_call_builtin_icon_α
                                                                                        jmp   n373_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_integer_α:
                        mov              qword ptr [rbp + 3568], 6
                        mov              rax, qword ptr [rip + .Lx634_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n425_lit_integer_α
.Lx634_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_integer_α:
                        mov              qword ptr [rbp + 3184], 6
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n426_lit_integer_α
.Lx635_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_integer_α:
                        mov              qword ptr [rbp + 2768], 6
                        mov              rax, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n427_lit_integer_α
.Lx636_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_integer_α:
                        mov              qword ptr [rbp + 2320], 6
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n428_lit_integer_α
.Lx637_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_integer_α:
                        mov              qword ptr [rbp + 1840], 6
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n429_lit_integer_α
.Lx638_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n421_iterate_α:
                        mov              qword ptr [rbp + 1072], 0
.Lx640_0:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1072]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              rax, 99
                                                                                        je    n422_var_α
                                                                                        jmp   n430_lit_integer_α
n421_iterate_β:
                        inc              qword ptr [rbp + 1072]
                                                                                        jmp   .Lx640_0
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n431_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n423_make_list_α:
                        mov              rax, qword ptr [rbp + 5328]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 5336]
                        mov              qword ptr [rbp + 5064], rax
                        mov              rax, qword ptr [rbp + 5344]
                        mov              qword ptr [rbp + 5072], rax
                        mov              rax, qword ptr [rbp + 5352]
                        mov              qword ptr [rbp + 5080], rax
                        mov              rax, qword ptr [rbp + 5360]
                        mov              qword ptr [rbp + 5088], rax
                        mov              rax, qword ptr [rbp + 5368]
                        mov              qword ptr [rbp + 5096], rax
                        mov              rax, qword ptr [rbp + 5376]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 5384]
                        mov              qword ptr [rbp + 5112], rax
                        mov              rax, qword ptr [rbp + 5472]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5480]
                        mov              qword ptr [rbp + 5128], rax
                        mov              rax, qword ptr [rbp + 5488]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 5496]
                        mov              qword ptr [rbp + 5144], rax
                        mov              rax, qword ptr [rbp + 5504]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5512]
                        mov              qword ptr [rbp + 5160], rax
                        mov              rax, qword ptr [rbp + 5520]
                        mov              qword ptr [rbp + 5168], rax
                        mov              rax, qword ptr [rbp + 5528]
                        mov              qword ptr [rbp + 5176], rax
                        mov              rax, qword ptr [rbp + 5536]
                        mov              qword ptr [rbp + 5184], rax
                        mov              rax, qword ptr [rbp + 5544]
                        mov              qword ptr [rbp + 5192], rax
                        mov              rax, qword ptr [rbp + 5552]
                        mov              qword ptr [rbp + 5200], rax
                        mov              rax, qword ptr [rbp + 5560]
                        mov              qword ptr [rbp + 5208], rax
                        mov              rax, qword ptr [rbp + 5568]
                        mov              qword ptr [rbp + 5216], rax
                        mov              rax, qword ptr [rbp + 5576]
                        mov              qword ptr [rbp + 5224], rax
                        mov              rax, qword ptr [rbp + 5584]
                        mov              qword ptr [rbp + 5232], rax
                        mov              rax, qword ptr [rbp + 5592]
                        mov              qword ptr [rbp + 5240], rax
                        mov              rax, qword ptr [rbp + 5600]
                        mov              qword ptr [rbp + 5248], rax
                        mov              rax, qword ptr [rbp + 5608]
                        mov              qword ptr [rbp + 5256], rax
                        mov              rax, qword ptr [rbp + 5616]
                        mov              qword ptr [rbp + 5264], rax
                        mov              rax, qword ptr [rbp + 5624]
                        mov              qword ptr [rbp + 5272], rax
                        mov              rax, qword ptr [rbp + 5632]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 5640]
                        mov              qword ptr [rbp + 5288], rax
                        mov              rax, qword ptr [rbp + 5648]
                        mov              qword ptr [rbp + 5296], rax
                        mov              rax, qword ptr [rbp + 5656]
                        mov              qword ptr [rbp + 5304], rax
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5312], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5320], rax
                        lea              rdi, [rbp + 5056]
                        mov              esi, 17
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                                                                                        jmp   n433_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n424_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3624], rax
                        .section         .rodata
.Lrkfn646:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn646]
                        lea              rsi, [rbp + 3616]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              eax, 99
                                                                                        je    n415_call_value_β
                                                                                        jmp   n415_call_value_β
n424_call_builtin_icon_β:
                                                                                        jmp   n415_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_integer_α:
                        mov              qword ptr [rbp + 3584], 6
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rbp + 3592], rax
                                                                                        jmp   n434_call_value_α
.Lx647_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_integer_α:
                        mov              qword ptr [rbp + 3200], 6
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n435_lit_integer_α
.Lx648_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_integer_α:
                        mov              qword ptr [rbp + 2784], 6
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n436_lit_integer_α
.Lx649_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_integer_α:
                        mov              qword ptr [rbp + 2336], 6
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n437_lit_integer_α
.Lx650_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_integer_α:
                        mov              qword ptr [rbp + 1856], 6
                        mov              rax, qword ptr [rip + .Lx651_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n438_lit_integer_α
.Lx651_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 6
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n439_lit_integer_α
.Lx652_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n431_iterate_α:
                        mov              qword ptr [rbp + 528], 0
.Lx654_0:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 528]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              rax, 99
                                                                                        je    n432_make_list_α
                                                                                        jmp   n440_lit_integer_α
n431_iterate_β:
                        inc              qword ptr [rbp + 528]
                                                                                        jmp   .Lx654_0
#-----------------------------------------------------------------------------------------------------------------------
n432_make_list_α:
                        lea              rdi, [rbp + 464]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n441_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n433_assign_α:
                        mov              rax, qword ptr [rbp + 5040]
                        mov              rdx, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 5696], rax
                        mov              qword ptr [rbp + 5704], rdx
                                                                                        jmp   n345_var_α
#-----------------------------------------------------------------------------------------------------------------------
n434_call_value_α:
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3384], rax
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3400], rax
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3416], rax
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3432], rax
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3448], rax
                        mov              qword ptr [rbp + 3456], 0
                        mov              rdi, qword ptr [rbp + 3296]
                        mov              rsi, qword ptr [rbp + 3304]
                        lea              rdx, [rbp + 3360]
                        mov              ecx, 6
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx659_7
                        lea              rcx, [rip + .Lx659_3]
                        lea              rdx, [rip + .Lx659_4]
                                                                                        jmp   rax
.Lx659_3:
                        mov              qword ptr [rbp + 3464], rsp
                        mov              rax, qword ptr [rbp + 3456]
                        test             rax, rax
                                                                                        jne   .Lx659_5
                        mov              qword ptr [rbp + 3456], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx659_2
.Lx659_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx659_2
.Lx659_4:
                        mov              qword ptr [rbp + 3464], rsp
                        mov              rax, qword ptr [rbp + 3456]
                        test             rax, rax
                                                                                        jne   .Lx659_6
                        mov              qword ptr [rbp + 3456], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx659_2
.Lx659_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx659_2
.Lx659_7:
                        mov              rdi, qword ptr [rbp + 3296]
                        mov              rsi, qword ptr [rbp + 3304]
                        lea              rdx, [rbp + 3360]
                        mov              ecx, 6
                        lea              r8, [rbp + 3456]
                        call             rt_call_value_gen_h@PLT
.Lx659_2:
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        cmp              eax, 99
                                                                                        je    n380_iterate_β
                                                                                        jmp   n442_call_builtin_icon_α
n434_call_value_β:
                        mov              rax, qword ptr [rbp + 3456]
                        cmp              rax, 1
                                                                                        jne   .Lx659_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3464]
                                                                                        jmp   qword ptr [rsp]
.Lx659_8:
                        lea              rdi, [rbp + 3456]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n380_iterate_β
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n442_call_builtin_icon_α
                                                                                        jmp   n380_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_integer_α:
                        mov              qword ptr [rbp + 3216], 6
                        mov              rax, qword ptr [rip + .Lx660_0]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n443_lit_integer_α
.Lx660_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_integer_α:
                        mov              qword ptr [rbp + 2800], 6
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n444_lit_integer_α
.Lx661_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_integer_α:
                        mov              qword ptr [rbp + 2352], 6
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n445_lit_integer_α
.Lx662_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_integer_α:
                        mov              qword ptr [rbp + 1872], 6
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n446_lit_integer_α
.Lx663_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_integer_α:
                        mov              qword ptr [rbp + 1360], 6
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n447_lit_integer_α
.Lx664_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n448_lit_integer_α
.Lx665_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n441_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx
                                                                                        jmp   n449_var_α
#-----------------------------------------------------------------------------------------------------------------------
n442_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3272], rax
                        .section         .rodata
.Lrkfn668:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn668]
                        lea              rsi, [rbp + 3264]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 99
                                                                                        je    n434_call_value_β
                                                                                        jmp   n434_call_value_β
n442_call_builtin_icon_β:
                                                                                        jmp   n434_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_integer_α:
                        mov              qword ptr [rbp + 3232], 6
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n450_call_value_α
.Lx669_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_integer_α:
                        mov              qword ptr [rbp + 2816], 6
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n451_lit_integer_α
.Lx670_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_integer_α:
                        mov              qword ptr [rbp + 2368], 6
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n452_lit_integer_α
.Lx671_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_integer_α:
                        mov              qword ptr [rbp + 1888], 6
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n453_lit_integer_α
.Lx672_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_integer_α:
                        mov              qword ptr [rbp + 1376], 6
                        mov              rax, qword ptr [rip + .Lx673_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n454_lit_integer_α
.Lx673_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx674_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n455_lit_integer_α
.Lx674_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n449_var_α:
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n456_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n450_call_value_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 2984], rax
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3000], rax
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3032], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3064], rax
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3080], rax
                        mov              qword ptr [rbp + 3088], 0
                        mov              rdi, qword ptr [rbp + 2912]
                        mov              rsi, qword ptr [rbp + 2920]
                        lea              rdx, [rbp + 2976]
                        mov              ecx, 7
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx678_7
                        lea              rcx, [rip + .Lx678_3]
                        lea              rdx, [rip + .Lx678_4]
                                                                                        jmp   rax
.Lx678_3:
                        mov              qword ptr [rbp + 3096], rsp
                        mov              rax, qword ptr [rbp + 3088]
                        test             rax, rax
                                                                                        jne   .Lx678_5
                        mov              qword ptr [rbp + 3088], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx678_2
.Lx678_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx678_2
.Lx678_4:
                        mov              qword ptr [rbp + 3096], rsp
                        mov              rax, qword ptr [rbp + 3088]
                        test             rax, rax
                                                                                        jne   .Lx678_6
                        mov              qword ptr [rbp + 3088], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx678_2
.Lx678_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx678_2
.Lx678_7:
                        mov              rdi, qword ptr [rbp + 2912]
                        mov              rsi, qword ptr [rbp + 2920]
                        lea              rdx, [rbp + 2976]
                        mov              ecx, 7
                        lea              r8, [rbp + 3088]
                        call             rt_call_value_gen_h@PLT
.Lx678_2:
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              eax, 99
                                                                                        je    n387_iterate_β
                                                                                        jmp   n457_call_builtin_icon_α
n450_call_value_β:
                        mov              rax, qword ptr [rbp + 3088]
                        cmp              rax, 1
                                                                                        jne   .Lx678_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3096]
                                                                                        jmp   qword ptr [rsp]
.Lx678_8:
                        lea              rdi, [rbp + 3088]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n387_iterate_β
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n457_call_builtin_icon_α
                                                                                        jmp   n387_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_integer_α:
                        mov              qword ptr [rbp + 2832], 6
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n458_lit_integer_α
.Lx679_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_integer_α:
                        mov              qword ptr [rbp + 2384], 6
                        mov              rax, qword ptr [rip + .Lx680_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n459_lit_integer_α
.Lx680_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_integer_α:
                        mov              qword ptr [rbp + 1904], 6
                        mov              rax, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n460_lit_integer_α
.Lx681_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_integer_α:
                        mov              qword ptr [rbp + 1392], 6
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n461_lit_integer_α
.Lx682_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n455_lit_integer_α:
                        mov              qword ptr [rbp + 848], 6
                        mov              rax, qword ptr [rip + .Lx683_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n462_lit_integer_α
.Lx683_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n456_unop_α:
                        mov              rdi, qword ptr [rbp + 5680]
                        mov              rsi, qword ptr [rbp + 5688]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n463_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n457_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2888], rax
                        .section         .rodata
.Lrkfn686:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn686]
                        lea              rsi, [rbp + 2880]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n450_call_value_β
                                                                                        jmp   n450_call_value_β
n457_call_builtin_icon_β:
                                                                                        jmp   n450_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_integer_α:
                        mov              qword ptr [rbp + 2848], 6
                        mov              rax, qword ptr [rip + .Lx687_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n464_call_value_α
.Lx687_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_integer_α:
                        mov              qword ptr [rbp + 2400], 6
                        mov              rax, qword ptr [rip + .Lx688_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n465_lit_integer_α
.Lx688_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_integer_α:
                        mov              qword ptr [rbp + 1920], 6
                        mov              rax, qword ptr [rip + .Lx689_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n466_lit_integer_α
.Lx689_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_integer_α:
                        mov              qword ptr [rbp + 1408], 6
                        mov              rax, qword ptr [rip + .Lx690_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n467_lit_integer_α
.Lx690_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx691_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n468_lit_integer_α
.Lx691_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n469_binop_test_α
.Lx692_0:
                        .quad            14
#-----------------------------------------------------------------------------------------------------------------------
n464_call_value_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2616], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2648], rax
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2664], rax
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2680], rax
                        mov              qword ptr [rbp + 2688], 0
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        lea              rdx, [rbp + 2560]
                        mov              ecx, 8
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx694_7
                        lea              rcx, [rip + .Lx694_3]
                        lea              rdx, [rip + .Lx694_4]
                                                                                        jmp   rax
.Lx694_3:
                        mov              qword ptr [rbp + 2696], rsp
                        mov              rax, qword ptr [rbp + 2688]
                        test             rax, rax
                                                                                        jne   .Lx694_5
                        mov              qword ptr [rbp + 2688], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx694_2
.Lx694_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx694_2
.Lx694_4:
                        mov              qword ptr [rbp + 2696], rsp
                        mov              rax, qword ptr [rbp + 2688]
                        test             rax, rax
                                                                                        jne   .Lx694_6
                        mov              qword ptr [rbp + 2688], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx694_2
.Lx694_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx694_2
.Lx694_7:
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        lea              rdx, [rbp + 2560]
                        mov              ecx, 8
                        lea              r8, [rbp + 2688]
                        call             rt_call_value_gen_h@PLT
.Lx694_2:
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n395_iterate_β
                                                                                        jmp   n470_call_builtin_icon_α
n464_call_value_β:
                        mov              rax, qword ptr [rbp + 2688]
                        cmp              rax, 1
                                                                                        jne   .Lx694_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2696]
                                                                                        jmp   qword ptr [rsp]
.Lx694_8:
                        lea              rdi, [rbp + 2688]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n395_iterate_β
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n470_call_builtin_icon_α
                                                                                        jmp   n395_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_integer_α:
                        mov              qword ptr [rbp + 2416], 6
                        mov              rax, qword ptr [rip + .Lx695_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n471_lit_integer_α
.Lx695_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n466_lit_integer_α:
                        mov              qword ptr [rbp + 1936], 6
                        mov              rax, qword ptr [rip + .Lx696_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n472_lit_integer_α
.Lx696_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_integer_α:
                        mov              qword ptr [rbp + 1424], 6
                        mov              rax, qword ptr [rip + .Lx697_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n473_lit_integer_α
.Lx697_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_integer_α:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, qword ptr [rip + .Lx698_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n474_lit_integer_α
.Lx698_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n469_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx699_0
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 100
                                                                                        je    .Lx699_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx699_2
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx699_2
.Lx699_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 56]
                        cmp              rax, rcx
                                                                                        jge   main_ω
                        mov              rcx, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rcx
                        mov              rcx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rcx
                                                                                        jmp   n475_var_α
.Lx699_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 56]
                        mov              r8d, 5
                        lea              r9, [rbp + 0]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx699_1
                        cmp              eax, 1
                                                                                        je    main_ω
                                                                                        jmp   n475_var_α
.Lx699_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 56]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    main_ω
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   n475_var_α
#-----------------------------------------------------------------------------------------------------------------------
n470_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2472], rax
                        .section         .rodata
.Lrkfn701:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn701]
                        lea              rsi, [rbp + 2464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    n464_call_value_β
                                                                                        jmp   n464_call_value_β
n470_call_builtin_icon_β:
                                                                                        jmp   n464_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_integer_α:
                        mov              qword ptr [rbp + 2432], 6
                        mov              rax, qword ptr [rip + .Lx702_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n476_call_value_α
.Lx702_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_integer_α:
                        mov              qword ptr [rbp + 1952], 6
                        mov              rax, qword ptr [rip + .Lx703_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n477_lit_integer_α
.Lx703_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n473_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx704_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n478_lit_integer_α
.Lx704_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_integer_α:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, qword ptr [rip + .Lx705_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n479_lit_integer_α
.Lx705_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n475_var_α:
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n480_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n476_call_value_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2200], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2248], rax
                        mov              qword ptr [rbp + 2256], 0
                        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        lea              rdx, [rbp + 2112]
                        mov              ecx, 9
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx709_7
                        lea              rcx, [rip + .Lx709_3]
                        lea              rdx, [rip + .Lx709_4]
                                                                                        jmp   rax
.Lx709_3:
                        mov              qword ptr [rbp + 2264], rsp
                        mov              rax, qword ptr [rbp + 2256]
                        test             rax, rax
                                                                                        jne   .Lx709_5
                        mov              qword ptr [rbp + 2256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx709_2
.Lx709_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx709_2
.Lx709_4:
                        mov              qword ptr [rbp + 2264], rsp
                        mov              rax, qword ptr [rbp + 2256]
                        test             rax, rax
                                                                                        jne   .Lx709_6
                        mov              qword ptr [rbp + 2256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx709_2
.Lx709_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx709_2
.Lx709_7:
                        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        lea              rdx, [rbp + 2112]
                        mov              ecx, 9
                        lea              r8, [rbp + 2256]
                        call             rt_call_value_gen_h@PLT
.Lx709_2:
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n403_iterate_β
                                                                                        jmp   n482_call_builtin_icon_α
n476_call_value_β:
                        mov              rax, qword ptr [rbp + 2256]
                        cmp              rax, 1
                                                                                        jne   .Lx709_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2264]
                                                                                        jmp   qword ptr [rsp]
.Lx709_8:
                        lea              rdi, [rbp + 2256]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n403_iterate_β
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n482_call_builtin_icon_α
                                                                                        jmp   n403_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 6
                        mov              rax, qword ptr [rip + .Lx710_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n483_lit_integer_α
.Lx710_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_integer_α:
                        mov              qword ptr [rbp + 1456], 6
                        mov              rax, qword ptr [rip + .Lx711_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n484_lit_integer_α
.Lx711_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_integer_α:
                        mov              qword ptr [rbp + 912], 6
                        mov              rax, qword ptr [rip + .Lx712_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n485_lit_integer_α
.Lx712_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n480_iterate_α:
                        mov              qword ptr [rbp + 304], 0
.Lx714_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 304]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              rax, 99
                                                                                        je    n481_var_α
                                                                                        jmp   n486_var_α
n480_iterate_β:
                        inc              qword ptr [rbp + 304]
                                                                                        jmp   .Lx714_0
#-----------------------------------------------------------------------------------------------------------------------
n481_var_α:
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n487_var_α
#-----------------------------------------------------------------------------------------------------------------------
n482_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lrkfn718:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn718]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n476_call_value_β
                                                                                        jmp   n476_call_value_β
n482_call_builtin_icon_β:
                                                                                        jmp   n476_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_integer_α:
                        mov              qword ptr [rbp + 1984], 6
                        mov              rax, qword ptr [rip + .Lx719_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n488_call_value_α
.Lx719_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_integer_α:
                        mov              qword ptr [rbp + 1472], 6
                        mov              rax, qword ptr [rip + .Lx720_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n489_lit_integer_α
.Lx720_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_integer_α:
                        mov              qword ptr [rbp + 928], 6
                        mov              rax, qword ptr [rip + .Lx721_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n490_lit_integer_α
.Lx721_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n486_var_α:
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n491_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n487_var_α:
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n492_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n488_call_value_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1784], rax
                        mov              qword ptr [rbp + 1792], 0
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        lea              rdx, [rbp + 1632]
                        mov              ecx, 10
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx727_7
                        lea              rcx, [rip + .Lx727_3]
                        lea              rdx, [rip + .Lx727_4]
                                                                                        jmp   rax
.Lx727_3:
                        mov              qword ptr [rbp + 1800], rsp
                        mov              rax, qword ptr [rbp + 1792]
                        test             rax, rax
                                                                                        jne   .Lx727_5
                        mov              qword ptr [rbp + 1792], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx727_2
.Lx727_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx727_2
.Lx727_4:
                        mov              qword ptr [rbp + 1800], rsp
                        mov              rax, qword ptr [rbp + 1792]
                        test             rax, rax
                                                                                        jne   .Lx727_6
                        mov              qword ptr [rbp + 1792], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx727_2
.Lx727_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx727_2
.Lx727_7:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        lea              rdx, [rbp + 1632]
                        mov              ecx, 10
                        lea              r8, [rbp + 1792]
                        call             rt_call_value_gen_h@PLT
.Lx727_2:
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n412_iterate_β
                                                                                        jmp   n493_call_builtin_icon_α
n488_call_value_β:
                        mov              rax, qword ptr [rbp + 1792]
                        cmp              rax, 1
                                                                                        jne   .Lx727_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1800]
                                                                                        jmp   qword ptr [rsp]
.Lx727_8:
                        lea              rdi, [rbp + 1792]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n412_iterate_β
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n493_call_builtin_icon_α
                                                                                        jmp   n412_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_integer_α:
                        mov              qword ptr [rbp + 1488], 6
                        mov              rax, qword ptr [rip + .Lx728_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n494_lit_integer_α
.Lx728_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_integer_α:
                        mov              qword ptr [rbp + 944], 6
                        mov              rax, qword ptr [rip + .Lx729_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n495_lit_integer_α
.Lx729_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n491_call_value_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        mov              qword ptr [rbp + 368], 0
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx731_7
                        lea              rcx, [rip + .Lx731_3]
                        lea              rdx, [rip + .Lx731_4]
                                                                                        jmp   rax
.Lx731_3:
                        mov              qword ptr [rbp + 376], rsp
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx731_5
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx731_2
.Lx731_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx731_2
.Lx731_4:
                        mov              qword ptr [rbp + 376], rsp
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx731_6
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx731_2
.Lx731_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx731_2
.Lx731_7:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        lea              r8, [rbp + 368]
                        call             rt_call_apply_gen_h@PLT
.Lx731_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n480_iterate_β
                                                                                        jmp   n496_call_builtin_icon_α
n491_call_value_β:
                        mov              rax, qword ptr [rbp + 368]
                        cmp              rax, 1
                                                                                        jne   .Lx731_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 376]
                                                                                        jmp   qword ptr [rsp]
.Lx731_8:
                        lea              rdi, [rbp + 368]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n480_iterate_β
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n496_call_builtin_icon_α
                                                                                        jmp   n480_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n492_unop_α:
                        mov              rdi, qword ptr [rbp + 5680]
                        mov              rsi, qword ptr [rbp + 5688]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n497_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n493_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn734:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn734]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n488_call_value_β
                                                                                        jmp   n488_call_value_β
n493_call_builtin_icon_β:
                                                                                        jmp   n488_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_integer_α:
                        mov              qword ptr [rbp + 1504], 6
                        mov              rax, qword ptr [rip + .Lx735_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n498_call_value_α
.Lx735_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx736_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n499_lit_integer_α
.Lx736_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n496_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn738:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn738]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n491_call_value_β
                                                                                        jmp   n491_call_value_β
n496_call_builtin_icon_β:
                                                                                        jmp   n491_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx739_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n500_op75_α
.Lx739_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n498_call_value_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1288], rax
                        mov              qword ptr [rbp + 1296], 0
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        lea              rdx, [rbp + 1120]
                        mov              ecx, 11
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx741_7
                        lea              rcx, [rip + .Lx741_3]
                        lea              rdx, [rip + .Lx741_4]
                                                                                        jmp   rax
.Lx741_3:
                        mov              qword ptr [rbp + 1304], rsp
                        mov              rax, qword ptr [rbp + 1296]
                        test             rax, rax
                                                                                        jne   .Lx741_5
                        mov              qword ptr [rbp + 1296], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx741_2
.Lx741_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx741_2
.Lx741_4:
                        mov              qword ptr [rbp + 1304], rsp
                        mov              rax, qword ptr [rbp + 1296]
                        test             rax, rax
                                                                                        jne   .Lx741_6
                        mov              qword ptr [rbp + 1296], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx741_2
.Lx741_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx741_2
.Lx741_7:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        lea              rdx, [rbp + 1120]
                        mov              ecx, 11
                        lea              r8, [rbp + 1296]
                        call             rt_call_value_gen_h@PLT
.Lx741_2:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n421_iterate_β
                                                                                        jmp   n501_call_builtin_icon_α
n498_call_value_β:
                        mov              rax, qword ptr [rbp + 1296]
                        cmp              rax, 1
                                                                                        jne   .Lx741_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1304]
                                                                                        jmp   qword ptr [rsp]
.Lx741_8:
                        lea              rdi, [rbp + 1296]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n421_iterate_β
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n501_call_builtin_icon_α
                                                                                        jmp   n421_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n502_lit_integer_α
.Lx742_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n500_op75_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 7
                                                                                        je    .Lx744_1
                        cmp              eax, 6
                                                                                        jne   .Lx744_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx744_0
.Lx744_1:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n503_binop_α
.Lx744_0:
                        lea              rdi, [rbp + 192]
                        lea              rsi, [rbp + 224]
                        lea              rdx, [rbp + 176]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n503_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n501_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn746:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn746]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n498_call_value_β
                                                                                        jmp   n498_call_value_β
n501_call_builtin_icon_β:
                                                                                        jmp   n498_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx747_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n504_call_value_α
.Lx747_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n503_binop_α:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 6
                                                                                        jne   .Lx748_0
                        mov              rax, qword ptr [rbp + 184]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 160], 6
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n505_call_builtin_icon_α
.Lx748_0:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n449_var_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n505_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n504_call_value_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 760], rax
                        mov              qword ptr [rbp + 768], 0
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        lea              rdx, [rbp + 576]
                        mov              ecx, 12
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx750_7
                        lea              rcx, [rip + .Lx750_3]
                        lea              rdx, [rip + .Lx750_4]
                                                                                        jmp   rax
.Lx750_3:
                        mov              qword ptr [rbp + 776], rsp
                        mov              rax, qword ptr [rbp + 768]
                        test             rax, rax
                                                                                        jne   .Lx750_5
                        mov              qword ptr [rbp + 768], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx750_2
.Lx750_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx750_2
.Lx750_4:
                        mov              qword ptr [rbp + 776], rsp
                        mov              rax, qword ptr [rbp + 768]
                        test             rax, rax
                                                                                        jne   .Lx750_6
                        mov              qword ptr [rbp + 768], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx750_2
.Lx750_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx750_2
.Lx750_7:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        lea              rdx, [rbp + 576]
                        mov              ecx, 12
                        lea              r8, [rbp + 768]
                        call             rt_call_value_gen_h@PLT
.Lx750_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n431_iterate_β
                                                                                        jmp   n506_call_builtin_icon_α
n504_call_value_β:
                        mov              rax, qword ptr [rbp + 768]
                        cmp              rax, 1
                                                                                        jne   .Lx750_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 776]
                                                                                        jmp   qword ptr [rsp]
.Lx750_8:
                        lea              rdi, [rbp + 768]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n431_iterate_β
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n506_call_builtin_icon_α
                                                                                        jmp   n431_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n505_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn752:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn752]
                        lea              rsi, [rbp + 96]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n449_var_α
                                                                                        jmp   n507_conjunction_α
n505_call_builtin_icon_β:
                                                                                        jmp   n449_var_α
#-----------------------------------------------------------------------------------------------------------------------
n506_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn754:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn754]
                        lea              rsi, [rbp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n504_call_value_β
                                                                                        jmp   n504_call_value_β
n506_call_builtin_icon_β:
                                                                                        jmp   n504_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n507_conjunction_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n449_var_α
n507_conjunction_β:
                                                                                        jmp   n449_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 5712]
                        add              rsp, 5720
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 5712]
                        add              rsp, 5720
                        ret
                        .section         .note.GNU-stack,"",@progbits
