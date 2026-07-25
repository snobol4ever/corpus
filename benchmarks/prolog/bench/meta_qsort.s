  .intel_syntax noprefix
  .text
  .globl proc_interpret$2F1_α
proc_interpret$2F1_α:
#=======================================================================================================================
    .global proc_interpret$2F1_α
    .global proc_interpret$2F1_β
    .global proc_interpret$2F1_γ
    .global proc_interpret$2F1_ω
  sub rsp, 640
  mov [rsp + 616], rcx
  mov [rsp + 624], rdx
  mov [rsp + 632], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 568], rsp
  mov rdi, rsp
  mov esi, 544
  mov edx, 608
  call rt_jmp_frame_lexprep2@PLT
proc_interpret$2F1_α_body:
lea rax, [rip + xchain0_n11_β]
mov qword ptr [rbp + 544], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_interpret$2F1_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_interpret$2F1_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 592]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain0_n3_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+464]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 472], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 448]
 lea r8, [rbp + 448]
.Lx6_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx6_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx6_41
 cmp esi, 1
 jne .Lx6_55
 mov r8, rax
 jmp .Lx6_40
.Lx6_55:
 cmp esi, 2
 jne .Lx6_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx6_41
 mov r8, rax
 jmp .Lx6_40
.Lx6_56:
 cmp eax, 13
 jne .Lx6_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx6_41
 cmp rax, r8
 je .Lx6_41
 mov r8, rax
 jmp .Lx6_40
.Lx6_41:
 lea r9, [rbp + 464]
.Lx6_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx6_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx6_43
 cmp esi, 1
 jne .Lx6_57
 mov r9, rax
 jmp .Lx6_42
.Lx6_57:
 cmp esi, 2
 jne .Lx6_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx6_43
 mov r9, rax
 jmp .Lx6_42
.Lx6_58:
 cmp eax, 13
 jne .Lx6_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx6_43
 cmp rax, r9
 je .Lx6_43
 mov r9, rax
 jmp .Lx6_42
.Lx6_43:
 cmp r8, r9
 je .Lx6_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx6_44
 cmp eax, 99
 je .Lx6_44
 cmp eax, 13
 jne .Lx6_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx6_44
 jmp .Lx6_45
.Lx6_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx6_53
 cmp eax, 99
 je .Lx6_53
 cmp eax, 13
 jne .Lx6_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx6_53
 jmp .Lx6_46
.Lx6_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx6_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx6_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx6_51
.Lx6_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx6_47
 cmp eax, 99
 je .Lx6_47
 cmp eax, 13
 jne .Lx6_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx6_47
 jmp .Lx6_48
.Lx6_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx6_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx6_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx6_51
.Lx6_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx6_49
 cmp edx, 14
 je .Lx6_53
 jmp .Lx6_52
.Lx6_49:
 cmp edx, 14
 je .Lx6_52
 cmp ecx, 7
 je .Lx6_53
 cmp edx, 7
 je .Lx6_53
 cmp ecx, 6
 jne .Lx6_50
 cmp edx, 6
 jne .Lx6_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx6_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx6_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx6_51
 jmp .Lx6_52
.Lx6_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx6_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx6_53
.Lx6_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx6_54
.Lx6_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx6_54
.Lx6_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx6_54:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 592]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_interpret$2F1_ω
 jmp proc_interpret$2F1_ω
 xchain0_n5_β:
 jmp proc_interpret$2F1_ω
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 576]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain0_n7_α
 xchain0_n7_α:
 mov qword ptr [rbp + 336], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx13_20
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx13_21
.Lx13_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
.Lx13_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx13_22
 mov rax, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx13_23
.Lx13_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
.Lx13_23:
 mov rdi, qword ptr [rip + .Lx13_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx13_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx13_3]
 lea rdx, [rip + .Lx13_4]
 jmp rax
.Lx13_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx13_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx13_2
.Lx13_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx13_2
.Lx13_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx13_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx13_2
.Lx13_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx13_2
.Lx13_1:
 call rt_faildescr@PLT
.Lx13_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 576]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain0_n9_α
 xchain0_n9_α:
# BOX IR_CALL $tt_nonvar(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+240]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 248], rax
  .section .rodata
  .Lrkfn17: .string "$tt_nonvar"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn17]
 lea rsi, [rbp + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain0_n11_α
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n11_α
 xchain0_n10_α:
# IR_CUT
 jmp xchain0_n12_α
# IR_SUSPEND yield+resume
 xchain0_n11_α:
 lea rax, [rip + xchain0_n11_β]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2F1_γ
 xchain0_n11_β:
 jmp xchain0_n7_β
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 576]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain0_n13_α
 xchain0_n13_α:
 mov qword ptr [rbp + 160], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx24_20
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx24_21
.Lx24_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call rt_arg_stage@PLT
.Lx24_21:
 mov rdi, qword ptr [rip + .Lx24_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx24_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx24_3]
 lea rdx, [rip + .Lx24_4]
 jmp rax
.Lx24_3:
 mov qword ptr [rbp + 168], rsp
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx24_5
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx24_2
.Lx24_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx24_2
.Lx24_4:
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx24_6
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx24_2
.Lx24_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx24_2
.Lx24_1:
 call rt_faildescr@PLT
.Lx24_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n11_α
 xchain0_n13_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 168]
 jmp qword ptr [rsp]
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "interpret/1"
proc_interpret$2F1_res:
add rsp, 8
pop rbp
proc_interpret$2F1_β:
jmp qword ptr [rbp + 544]
proc_interpret$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_interpret$2F1_res]
push rax
mov rax, [rbp + 616]
mov rbp, [rbp + 632]
jmp rax
proc_interpret$2F1_ω:
mov rax, [rbp + 624]
lea rsp, [rbp + 640]
mov rbp, [rbp + 632]
jmp rax
  .globl proc_interpret$2F2_α
proc_interpret$2F2_α:
#=======================================================================================================================
    .global proc_interpret$2F2_α
    .global proc_interpret$2F2_β
    .global proc_interpret$2F2_γ
    .global proc_interpret$2F2_ω
  sub rsp, 5808
  mov [rsp + 5784], rcx
  mov [rsp + 5792], rdx
  mov [rsp + 5800], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 5688], rsp
  mov rdi, rsp
  mov esi, 5664
  mov edx, 5776
  call rt_jmp_frame_lexprep2@PLT
proc_interpret$2F2_α_body:
lea rax, [rip + xchain25_n93_β]
mov qword ptr [rbp + 5664], rax
 xchain25_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n1_α
 xchain25_n0_β:
 jmp proc_interpret$2F2_ω
# IR_VAR_REF
 xchain25_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 jmp xchain25_n2_α
# IR_VAR_REF
 xchain25_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5712]
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 jmp xchain25_n3_α
 xchain25_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5600] -> [zr+5568]
 mov rax, qword ptr [rbp + 5600]
 mov qword ptr [rbp + 5568], rax
 mov rax, qword ptr [rbp + 5608]
 mov qword ptr [rbp + 5576], rax
# marshal arg1 = producer-box slot [zr+5632] -> [zr+5584]
 mov rax, qword ptr [rbp + 5632]
 mov qword ptr [rbp + 5584], rax
 mov rax, qword ptr [rbp + 5640]
 mov qword ptr [rbp + 5592], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 5568]
 lea r8, [rbp + 5568]
.Lx31_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx31_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx31_41
 cmp esi, 1
 jne .Lx31_55
 mov r8, rax
 jmp .Lx31_40
.Lx31_55:
 cmp esi, 2
 jne .Lx31_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx31_41
 mov r8, rax
 jmp .Lx31_40
.Lx31_56:
 cmp eax, 13
 jne .Lx31_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx31_41
 cmp rax, r8
 je .Lx31_41
 mov r8, rax
 jmp .Lx31_40
.Lx31_41:
 lea r9, [rbp + 5584]
.Lx31_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx31_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx31_43
 cmp esi, 1
 jne .Lx31_57
 mov r9, rax
 jmp .Lx31_42
.Lx31_57:
 cmp esi, 2
 jne .Lx31_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx31_43
 mov r9, rax
 jmp .Lx31_42
.Lx31_58:
 cmp eax, 13
 jne .Lx31_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx31_43
 cmp rax, r9
 je .Lx31_43
 mov r9, rax
 jmp .Lx31_42
.Lx31_43:
 cmp r8, r9
 je .Lx31_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx31_44
 cmp eax, 99
 je .Lx31_44
 cmp eax, 13
 jne .Lx31_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx31_44
 jmp .Lx31_45
.Lx31_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx31_53
 cmp eax, 99
 je .Lx31_53
 cmp eax, 13
 jne .Lx31_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx31_53
 jmp .Lx31_46
.Lx31_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx31_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx31_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx31_51
.Lx31_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx31_47
 cmp eax, 99
 je .Lx31_47
 cmp eax, 13
 jne .Lx31_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx31_47
 jmp .Lx31_48
.Lx31_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx31_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx31_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx31_51
.Lx31_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx31_49
 cmp edx, 14
 je .Lx31_53
 jmp .Lx31_52
.Lx31_49:
 cmp edx, 14
 je .Lx31_52
 cmp ecx, 7
 je .Lx31_53
 cmp edx, 7
 je .Lx31_53
 cmp ecx, 6
 jne .Lx31_50
 cmp edx, 6
 jne .Lx31_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx31_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx31_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx31_51
 jmp .Lx31_52
.Lx31_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx31_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx31_53
.Lx31_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx31_54
.Lx31_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx31_54
.Lx31_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx31_54:
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 cmp eax, 99
 je xchain25_n5_α
 jmp xchain25_n4_α
 xchain25_n3_β:
 jmp xchain25_n5_α
# IR_VAR_REF
 xchain25_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5488], rax
 mov qword ptr [rbp + 5496], rdx
 jmp xchain25_n6_α
 xchain25_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5344]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5344]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n7_α
 xchain25_n5_β:
 jmp proc_interpret$2F2_ω
# IR_VAR_REF
 xchain25_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5728]
 mov qword ptr [rbp + 5520], rax
 mov qword ptr [rbp + 5528], rdx
 jmp xchain25_n8_α
# IR_VAR_REF
 xchain25_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 jmp xchain25_n9_α
 xchain25_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5488] -> [zr+5456]
 mov rax, qword ptr [rbp + 5488]
 mov qword ptr [rbp + 5456], rax
 mov rax, qword ptr [rbp + 5496]
 mov qword ptr [rbp + 5464], rax
# marshal arg1 = producer-box slot [zr+5520] -> [zr+5472]
 mov rax, qword ptr [rbp + 5520]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 5528]
 mov qword ptr [rbp + 5480], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 5456]
 lea r8, [rbp + 5456]
.Lx39_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx39_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx39_41
 cmp esi, 1
 jne .Lx39_55
 mov r8, rax
 jmp .Lx39_40
.Lx39_55:
 cmp esi, 2
 jne .Lx39_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx39_41
 mov r8, rax
 jmp .Lx39_40
.Lx39_56:
 cmp eax, 13
 jne .Lx39_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx39_41
 cmp rax, r8
 je .Lx39_41
 mov r8, rax
 jmp .Lx39_40
.Lx39_41:
 lea r9, [rbp + 5472]
.Lx39_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx39_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx39_43
 cmp esi, 1
 jne .Lx39_57
 mov r9, rax
 jmp .Lx39_42
.Lx39_57:
 cmp esi, 2
 jne .Lx39_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx39_43
 mov r9, rax
 jmp .Lx39_42
.Lx39_58:
 cmp eax, 13
 jne .Lx39_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx39_43
 cmp rax, r9
 je .Lx39_43
 mov r9, rax
 jmp .Lx39_42
.Lx39_43:
 cmp r8, r9
 je .Lx39_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx39_44
 cmp eax, 99
 je .Lx39_44
 cmp eax, 13
 jne .Lx39_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx39_44
 jmp .Lx39_45
.Lx39_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx39_53
 cmp eax, 99
 je .Lx39_53
 cmp eax, 13
 jne .Lx39_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx39_53
 jmp .Lx39_46
.Lx39_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx39_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx39_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx39_51
.Lx39_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx39_47
 cmp eax, 99
 je .Lx39_47
 cmp eax, 13
 jne .Lx39_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx39_47
 jmp .Lx39_48
.Lx39_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx39_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx39_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx39_51
.Lx39_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx39_49
 cmp edx, 14
 je .Lx39_53
 jmp .Lx39_52
.Lx39_49:
 cmp edx, 14
 je .Lx39_52
 cmp ecx, 7
 je .Lx39_53
 cmp edx, 7
 je .Lx39_53
 cmp ecx, 6
 jne .Lx39_50
 cmp edx, 6
 jne .Lx39_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx39_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx39_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx39_51
 jmp .Lx39_52
.Lx39_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx39_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx39_53
.Lx39_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx39_54
.Lx39_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx39_54
.Lx39_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx39_54:
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 cmp eax, 99
 je xchain25_n5_α
 jmp xchain25_n10_α
 xchain25_n8_β:
 jmp xchain25_n5_α
# IR_LIT_INTEGER
 xchain25_n9_α:
 mov qword ptr [rbp + 5264], 6
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [rbp + 5272], rax
 jmp xchain25_n11_α
.Lx40_0:
 .quad 516
# IR_VAR_REF
 xchain25_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5712]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 jmp xchain25_n12_α
# IR_LIT_STRING
 xchain25_n11_α:
 mov qword ptr [rbp + 5296], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [rbp + 5304], rax
 jmp xchain25_n13_α
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string ","
 xchain25_n12_α:
# BOX IR_CALL $tt_var(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5408] -> [zr+5392]
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 5392], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 5400], rax
  .section .rodata
  .Lrkfn45: .string "$tt_var"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn45]
 lea rsi, [rbp + 5392]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 cmp eax, 99
 je xchain25_n5_α
 jmp xchain25_n14_α
 xchain25_n12_β:
 jmp xchain25_n5_α
 xchain25_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5232] -> [zr+5184]
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 5184], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 5192], rax
# marshal arg1 = producer-box slot [zr+5264] -> [zr+5200]
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 5200], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 5208], rax
# marshal arg2 = producer-box slot [zr+5296] -> [zr+5216]
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 5216], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 5224], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 5184]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 5168], rax
 mov qword ptr [rbp + 5176], rdx
 cmp eax, 99
 je xchain25_n16_α
 jmp xchain25_n15_α
 xchain25_n13_β:
 jmp xchain25_n16_α
 xchain25_n14_α:
# IR_CUT
 jmp xchain25_n17_α
# IR_VAR_REF
 xchain25_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 jmp xchain25_n18_α
# IR_VAR_REF
 xchain25_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4064], rax
 mov qword ptr [rbp + 4072], rdx
 jmp xchain25_n19_α
 xchain25_n17_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp proc_interpret$2F2_ω
 xchain25_n17_β:
 jmp proc_interpret$2F2_ω
# IR_LIT_STRING
 xchain25_n18_α:
 mov qword ptr [rbp + 5136], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [rbp + 5144], rax
 jmp xchain25_n20_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string ","
# IR_LIT_INTEGER
 xchain25_n19_α:
 mov qword ptr [rbp + 4096], 6
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [rbp + 4104], rax
 jmp xchain25_n21_α
.Lx54_0:
 .quad 516
# IR_VAR_REF
 xchain25_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5728]
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 jmp xchain25_n22_α
# IR_LIT_STRING
 xchain25_n21_α:
 mov qword ptr [rbp + 4128], 1
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [rbp + 4136], rax
 jmp xchain25_n23_α
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string ";"
# IR_VAR_REF
 xchain25_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5696]
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 jmp xchain25_n24_α
 xchain25_n23_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4064] -> [zr+4016]
 mov rax, qword ptr [rbp + 4064]
 mov qword ptr [rbp + 4016], rax
 mov rax, qword ptr [rbp + 4072]
 mov qword ptr [rbp + 4024], rax
# marshal arg1 = producer-box slot [zr+4096] -> [zr+4032]
 mov rax, qword ptr [rbp + 4096]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 4104]
 mov qword ptr [rbp + 4040], rax
# marshal arg2 = producer-box slot [zr+4128] -> [zr+4048]
 mov rax, qword ptr [rbp + 4128]
 mov qword ptr [rbp + 4048], rax
 mov rax, qword ptr [rbp + 4136]
 mov qword ptr [rbp + 4056], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 4016]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 cmp eax, 99
 je xchain25_n26_α
 jmp xchain25_n25_α
 xchain25_n23_β:
 jmp xchain25_n26_α
 xchain25_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5136] -> [zr+5072]
 mov rax, qword ptr [rbp + 5136]
 mov qword ptr [rbp + 5072], rax
 mov rax, qword ptr [rbp + 5144]
 mov qword ptr [rbp + 5080], rax
# marshal arg1 = producer-box slot [zr+4992] -> [zr+5088]
 mov rax, qword ptr [rbp + 4992]
 mov qword ptr [rbp + 5088], rax
 mov rax, qword ptr [rbp + 5000]
 mov qword ptr [rbp + 5096], rax
# marshal arg2 = producer-box slot [zr+5024] -> [zr+5104]
 mov rax, qword ptr [rbp + 5024]
 mov qword ptr [rbp + 5104], rax
 mov rax, qword ptr [rbp + 5032]
 mov qword ptr [rbp + 5112], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5072]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 cmp eax, 99
 je xchain25_n28_α
 jmp xchain25_n27_α
 xchain25_n24_β:
 jmp xchain25_n28_α
# IR_VAR_REF
 xchain25_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain25_n29_α
# IR_VAR_REF
 xchain25_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain25_n30_α
 xchain25_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4960] -> [zr+4928]
 mov rax, qword ptr [rbp + 4960]
 mov qword ptr [rbp + 4928], rax
 mov rax, qword ptr [rbp + 4968]
 mov qword ptr [rbp + 4936], rax
# marshal arg1 = producer-box slot [zr+5056] -> [zr+4944]
 mov rax, qword ptr [rbp + 5056]
 mov qword ptr [rbp + 4944], rax
 mov rax, qword ptr [rbp + 5064]
 mov qword ptr [rbp + 4952], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 4928]
 lea r8, [rbp + 4928]
.Lx66_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx66_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx66_41
 cmp esi, 1
 jne .Lx66_55
 mov r8, rax
 jmp .Lx66_40
.Lx66_55:
 cmp esi, 2
 jne .Lx66_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx66_41
 mov r8, rax
 jmp .Lx66_40
.Lx66_56:
 cmp eax, 13
 jne .Lx66_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx66_41
 cmp rax, r8
 je .Lx66_41
 mov r8, rax
 jmp .Lx66_40
.Lx66_41:
 lea r9, [rbp + 4944]
.Lx66_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx66_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx66_43
 cmp esi, 1
 jne .Lx66_57
 mov r9, rax
 jmp .Lx66_42
.Lx66_57:
 cmp esi, 2
 jne .Lx66_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx66_43
 mov r9, rax
 jmp .Lx66_42
.Lx66_58:
 cmp eax, 13
 jne .Lx66_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx66_43
 cmp rax, r9
 je .Lx66_43
 mov r9, rax
 jmp .Lx66_42
.Lx66_43:
 cmp r8, r9
 je .Lx66_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx66_44
 cmp eax, 99
 je .Lx66_44
 cmp eax, 13
 jne .Lx66_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx66_44
 jmp .Lx66_45
.Lx66_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx66_53
 cmp eax, 99
 je .Lx66_53
 cmp eax, 13
 jne .Lx66_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx66_53
 jmp .Lx66_46
.Lx66_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx66_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx66_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx66_51
.Lx66_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx66_47
 cmp eax, 99
 je .Lx66_47
 cmp eax, 13
 jne .Lx66_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx66_47
 jmp .Lx66_48
.Lx66_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx66_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx66_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx66_51
.Lx66_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx66_49
 cmp edx, 14
 je .Lx66_53
 jmp .Lx66_52
.Lx66_49:
 cmp edx, 14
 je .Lx66_52
 cmp ecx, 7
 je .Lx66_53
 cmp edx, 7
 je .Lx66_53
 cmp ecx, 6
 jne .Lx66_50
 cmp edx, 6
 jne .Lx66_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx66_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx66_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx66_51
 jmp .Lx66_52
.Lx66_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx66_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx66_53
.Lx66_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx66_54
.Lx66_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx66_54
.Lx66_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx66_54:
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 cmp eax, 99
 je xchain25_n28_α
 jmp xchain25_n31_α
 xchain25_n27_β:
 jmp xchain25_n28_α
 xchain25_n28_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4176]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4176], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4176]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n16_α
 xchain25_n28_β:
 jmp proc_interpret$2F2_ω
# IR_LIT_STRING
 xchain25_n29_α:
 mov qword ptr [rbp + 3968], 1
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [rbp + 3976], rax
 jmp xchain25_n32_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string ";"
# IR_LIT_INTEGER
 xchain25_n30_α:
 mov qword ptr [rbp + 3344], 6
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [rbp + 3352], rax
 jmp xchain25_n33_α
.Lx69_0:
 .quad 516
# IR_VAR_REF
 xchain25_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4848], rax
 mov qword ptr [rbp + 4856], rdx
 jmp xchain25_n34_α
# IR_VAR_REF
 xchain25_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5728]
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 jmp xchain25_n35_α
# IR_LIT_STRING
 xchain25_n33_α:
 mov qword ptr [rbp + 3376], 1
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [rbp + 3384], rax
 jmp xchain25_n36_α
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "->"
# IR_VAR_REF
 xchain25_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5744]
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 jmp xchain25_n37_α
# IR_VAR_REF
 xchain25_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5696]
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain25_n38_α
 xchain25_n36_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3312] -> [zr+3264]
 mov rax, qword ptr [rbp + 3312]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 3320]
 mov qword ptr [rbp + 3272], rax
# marshal arg1 = producer-box slot [zr+3344] -> [zr+3280]
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 3288], rax
# marshal arg2 = producer-box slot [zr+3376] -> [zr+3296]
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 3304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 3264]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 cmp eax, 99
 je xchain25_n40_α
 jmp xchain25_n39_α
 xchain25_n36_β:
 jmp xchain25_n40_α
 xchain25_n37_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4848] -> [zr+4816]
 mov rax, qword ptr [rbp + 4848]
 mov qword ptr [rbp + 4816], rax
 mov rax, qword ptr [rbp + 4856]
 mov qword ptr [rbp + 4824], rax
# marshal arg1 = producer-box slot [zr+4880] -> [zr+4832]
 mov rax, qword ptr [rbp + 4880]
 mov qword ptr [rbp + 4832], rax
 mov rax, qword ptr [rbp + 4888]
 mov qword ptr [rbp + 4840], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 4816]
 lea r8, [rbp + 4816]
.Lx80_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx80_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx80_41
 cmp esi, 1
 jne .Lx80_55
 mov r8, rax
 jmp .Lx80_40
.Lx80_55:
 cmp esi, 2
 jne .Lx80_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx80_41
 mov r8, rax
 jmp .Lx80_40
.Lx80_56:
 cmp eax, 13
 jne .Lx80_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx80_41
 cmp rax, r8
 je .Lx80_41
 mov r8, rax
 jmp .Lx80_40
.Lx80_41:
 lea r9, [rbp + 4832]
.Lx80_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx80_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx80_43
 cmp esi, 1
 jne .Lx80_57
 mov r9, rax
 jmp .Lx80_42
.Lx80_57:
 cmp esi, 2
 jne .Lx80_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx80_43
 mov r9, rax
 jmp .Lx80_42
.Lx80_58:
 cmp eax, 13
 jne .Lx80_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx80_43
 cmp rax, r9
 je .Lx80_43
 mov r9, rax
 jmp .Lx80_42
.Lx80_43:
 cmp r8, r9
 je .Lx80_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx80_44
 cmp eax, 99
 je .Lx80_44
 cmp eax, 13
 jne .Lx80_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx80_44
 jmp .Lx80_45
.Lx80_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx80_53
 cmp eax, 99
 je .Lx80_53
 cmp eax, 13
 jne .Lx80_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx80_53
 jmp .Lx80_46
.Lx80_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx80_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx80_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx80_51
.Lx80_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx80_47
 cmp eax, 99
 je .Lx80_47
 cmp eax, 13
 jne .Lx80_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx80_47
 jmp .Lx80_48
.Lx80_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx80_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx80_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx80_51
.Lx80_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx80_49
 cmp edx, 14
 je .Lx80_53
 jmp .Lx80_52
.Lx80_49:
 cmp edx, 14
 je .Lx80_52
 cmp ecx, 7
 je .Lx80_53
 cmp edx, 7
 je .Lx80_53
 cmp ecx, 6
 jne .Lx80_50
 cmp edx, 6
 jne .Lx80_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx80_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx80_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx80_51
 jmp .Lx80_52
.Lx80_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx80_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx80_53
.Lx80_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx80_54
.Lx80_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx80_54
.Lx80_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx80_54:
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 cmp eax, 99
 je xchain25_n28_α
 jmp xchain25_n41_α
 xchain25_n37_β:
 jmp xchain25_n28_α
 xchain25_n38_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3968] -> [zr+3904]
 mov rax, qword ptr [rbp + 3968]
 mov qword ptr [rbp + 3904], rax
 mov rax, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 3912], rax
# marshal arg1 = producer-box slot [zr+3824] -> [zr+3920]
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 3920], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 3928], rax
# marshal arg2 = producer-box slot [zr+3856] -> [zr+3936]
 mov rax, qword ptr [rbp + 3856]
 mov qword ptr [rbp + 3936], rax
 mov rax, qword ptr [rbp + 3864]
 mov qword ptr [rbp + 3944], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3904]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 cmp eax, 99
 je xchain25_n43_α
 jmp xchain25_n42_α
 xchain25_n38_β:
 jmp xchain25_n43_α
# IR_VAR_REF
 xchain25_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain25_n44_α
# IR_VAR_REF
 xchain25_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain25_n45_α
 xchain25_n41_α:
# IR_CUT
 jmp xchain25_n46_α
 xchain25_n42_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3792] -> [zr+3760]
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 3760], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 3768], rax
# marshal arg1 = producer-box slot [zr+3888] -> [zr+3776]
 mov rax, qword ptr [rbp + 3888]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 3784], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 3760]
 lea r8, [rbp + 3760]
.Lx87_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx87_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx87_41
 cmp esi, 1
 jne .Lx87_55
 mov r8, rax
 jmp .Lx87_40
.Lx87_55:
 cmp esi, 2
 jne .Lx87_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx87_41
 mov r8, rax
 jmp .Lx87_40
.Lx87_56:
 cmp eax, 13
 jne .Lx87_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx87_41
 cmp rax, r8
 je .Lx87_41
 mov r8, rax
 jmp .Lx87_40
.Lx87_41:
 lea r9, [rbp + 3776]
.Lx87_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx87_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx87_43
 cmp esi, 1
 jne .Lx87_57
 mov r9, rax
 jmp .Lx87_42
.Lx87_57:
 cmp esi, 2
 jne .Lx87_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx87_43
 mov r9, rax
 jmp .Lx87_42
.Lx87_58:
 cmp eax, 13
 jne .Lx87_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx87_43
 cmp rax, r9
 je .Lx87_43
 mov r9, rax
 jmp .Lx87_42
.Lx87_43:
 cmp r8, r9
 je .Lx87_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx87_44
 cmp eax, 99
 je .Lx87_44
 cmp eax, 13
 jne .Lx87_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx87_44
 jmp .Lx87_45
.Lx87_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx87_53
 cmp eax, 99
 je .Lx87_53
 cmp eax, 13
 jne .Lx87_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx87_53
 jmp .Lx87_46
.Lx87_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx87_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx87_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx87_51
.Lx87_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx87_47
 cmp eax, 99
 je .Lx87_47
 cmp eax, 13
 jne .Lx87_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx87_47
 jmp .Lx87_48
.Lx87_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx87_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx87_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx87_51
.Lx87_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx87_49
 cmp edx, 14
 je .Lx87_53
 jmp .Lx87_52
.Lx87_49:
 cmp edx, 14
 je .Lx87_52
 cmp ecx, 7
 je .Lx87_53
 cmp edx, 7
 je .Lx87_53
 cmp ecx, 6
 jne .Lx87_50
 cmp edx, 6
 jne .Lx87_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx87_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx87_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx87_51
 jmp .Lx87_52
.Lx87_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx87_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx87_53
.Lx87_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx87_54
.Lx87_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx87_54
.Lx87_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx87_54:
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 cmp eax, 99
 je xchain25_n43_α
 jmp xchain25_n47_α
 xchain25_n42_β:
 jmp xchain25_n43_α
 xchain25_n43_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3424]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3424], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3432], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3424]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n26_α
 xchain25_n43_β:
 jmp proc_interpret$2F2_ω
# IR_LIT_STRING
 xchain25_n44_α:
 mov qword ptr [rbp + 3216], 1
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [rbp + 3224], rax
 jmp xchain25_n48_α
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "->"
# IR_LIT_INTEGER
 xchain25_n45_α:
 mov qword ptr [rbp + 2448], 6
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [rbp + 2456], rax
 jmp xchain25_n49_α
.Lx90_0:
 .quad 260
# IR_VAR_REF
 xchain25_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5728]
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 jmp xchain25_n50_α
# IR_VAR_REF
 xchain25_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 jmp xchain25_n51_α
# IR_VAR_REF
 xchain25_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5728]
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain25_n52_α
# IR_LIT_STRING
 xchain25_n49_α:
 mov qword ptr [rbp + 2480], 1
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [rbp + 2488], rax
 jmp xchain25_n53_α
.Lx97_0:
 .quad .Lx97_0_s
.Lx97_0_s:
 .string "\\+"
# IR_VAR_REF
 xchain25_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5760]
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 jmp xchain25_n54_α
# IR_VAR_REF
 xchain25_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5744]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 jmp xchain25_n55_α
# IR_VAR_REF
 xchain25_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5696]
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain25_n56_α
 xchain25_n53_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2416] -> [zr+2368]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2376], rax
# marshal arg1 = producer-box slot [zr+2448] -> [zr+2384]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2392], rax
# marshal arg2 = producer-box slot [zr+2480] -> [zr+2400]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2368]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je xchain25_n58_α
 jmp xchain25_n57_α
 xchain25_n53_β:
 jmp xchain25_n58_α
 xchain25_n54_α:
 mov qword ptr [rbp + 4704], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx106_20
 mov rax, qword ptr [rbp + 4736]
 mov rdx, qword ptr [rbp + 4744]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx106_21
.Lx106_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4736]
 mov rdx, qword ptr [rbp + 4744]
 call rt_arg_stage@PLT
.Lx106_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx106_22
 mov rax, qword ptr [rbp + 4768]
 mov rdx, qword ptr [rbp + 4776]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx106_23
.Lx106_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 4768]
 mov rdx, qword ptr [rbp + 4776]
 call rt_arg_stage@PLT
.Lx106_23:
 mov rdi, qword ptr [rip + .Lx106_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx106_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx106_3]
 lea rdx, [rip + .Lx106_4]
 jmp rax
.Lx106_3:
 mov qword ptr [rbp + 4712], rsp
 mov rax, qword ptr [rbp + 4704]
 test rax, rax
 jne .Lx106_5
 mov qword ptr [rbp + 4704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx106_2
.Lx106_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx106_2
.Lx106_4:
 mov rax, qword ptr [rbp + 4704]
 test rax, rax
 jne .Lx106_6
 mov qword ptr [rbp + 4704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx106_2
.Lx106_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx106_2
.Lx106_1:
 call rt_faildescr@PLT
.Lx106_2:
 mov qword ptr [rbp + 4656], rax
 mov qword ptr [rbp + 4664], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n59_α
 xchain25_n54_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4712]
 jmp qword ptr [rsp]
.Lx106_0:
 .quad .Lx106_0_s
.Lx106_0_s:
 .string "interpret/2"
 xchain25_n55_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3680] -> [zr+3648]
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 3656], rax
# marshal arg1 = producer-box slot [zr+3712] -> [zr+3664]
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 3664], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 3672], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 3648]
 lea r8, [rbp + 3648]
.Lx107_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx107_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx107_41
 cmp esi, 1
 jne .Lx107_55
 mov r8, rax
 jmp .Lx107_40
.Lx107_55:
 cmp esi, 2
 jne .Lx107_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx107_41
 mov r8, rax
 jmp .Lx107_40
.Lx107_56:
 cmp eax, 13
 jne .Lx107_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx107_41
 cmp rax, r8
 je .Lx107_41
 mov r8, rax
 jmp .Lx107_40
.Lx107_41:
 lea r9, [rbp + 3664]
.Lx107_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx107_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx107_43
 cmp esi, 1
 jne .Lx107_57
 mov r9, rax
 jmp .Lx107_42
.Lx107_57:
 cmp esi, 2
 jne .Lx107_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx107_43
 mov r9, rax
 jmp .Lx107_42
.Lx107_58:
 cmp eax, 13
 jne .Lx107_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx107_43
 cmp rax, r9
 je .Lx107_43
 mov r9, rax
 jmp .Lx107_42
.Lx107_43:
 cmp r8, r9
 je .Lx107_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx107_44
 cmp eax, 99
 je .Lx107_44
 cmp eax, 13
 jne .Lx107_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx107_44
 jmp .Lx107_45
.Lx107_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx107_53
 cmp eax, 99
 je .Lx107_53
 cmp eax, 13
 jne .Lx107_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx107_53
 jmp .Lx107_46
.Lx107_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx107_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx107_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx107_51
.Lx107_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx107_47
 cmp eax, 99
 je .Lx107_47
 cmp eax, 13
 jne .Lx107_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx107_47
 jmp .Lx107_48
.Lx107_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx107_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx107_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx107_51
.Lx107_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx107_49
 cmp edx, 14
 je .Lx107_53
 jmp .Lx107_52
.Lx107_49:
 cmp edx, 14
 je .Lx107_52
 cmp ecx, 7
 je .Lx107_53
 cmp edx, 7
 je .Lx107_53
 cmp ecx, 6
 jne .Lx107_50
 cmp edx, 6
 jne .Lx107_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx107_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx107_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx107_51
 jmp .Lx107_52
.Lx107_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx107_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx107_53
.Lx107_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx107_54
.Lx107_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx107_54
.Lx107_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx107_54:
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je xchain25_n43_α
 jmp xchain25_n60_α
 xchain25_n55_β:
 jmp xchain25_n43_α
 xchain25_n56_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3216] -> [zr+3152]
 mov rax, qword ptr [rbp + 3216]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3224]
 mov qword ptr [rbp + 3160], rax
# marshal arg1 = producer-box slot [zr+3072] -> [zr+3168]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3176], rax
# marshal arg2 = producer-box slot [zr+3104] -> [zr+3184]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3152]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 cmp eax, 99
 je xchain25_n62_α
 jmp xchain25_n61_α
 xchain25_n56_β:
 jmp xchain25_n62_α
# IR_VAR_REF
 xchain25_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain25_n63_α
# IR_VAR_REF
 xchain25_n58_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain25_n64_α
# IR_VAR_REF
 xchain25_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5760]
 mov qword ptr [rbp + 4624], rax
 mov qword ptr [rbp + 4632], rdx
 jmp xchain25_n65_α
 xchain25_n60_α:
# IR_CUT
 jmp xchain25_n66_α
 xchain25_n61_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3040] -> [zr+3008]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 3016], rax
# marshal arg1 = producer-box slot [zr+3136] -> [zr+3024]
 mov rax, qword ptr [rbp + 3136]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 3032], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 3008]
 lea r8, [rbp + 3008]
.Lx116_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx116_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx116_41
 cmp esi, 1
 jne .Lx116_55
 mov r8, rax
 jmp .Lx116_40
.Lx116_55:
 cmp esi, 2
 jne .Lx116_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx116_41
 mov r8, rax
 jmp .Lx116_40
.Lx116_56:
 cmp eax, 13
 jne .Lx116_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx116_41
 cmp rax, r8
 je .Lx116_41
 mov r8, rax
 jmp .Lx116_40
.Lx116_41:
 lea r9, [rbp + 3024]
.Lx116_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx116_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx116_43
 cmp esi, 1
 jne .Lx116_57
 mov r9, rax
 jmp .Lx116_42
.Lx116_57:
 cmp esi, 2
 jne .Lx116_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx116_43
 mov r9, rax
 jmp .Lx116_42
.Lx116_58:
 cmp eax, 13
 jne .Lx116_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx116_43
 cmp rax, r9
 je .Lx116_43
 mov r9, rax
 jmp .Lx116_42
.Lx116_43:
 cmp r8, r9
 je .Lx116_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx116_44
 cmp eax, 99
 je .Lx116_44
 cmp eax, 13
 jne .Lx116_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx116_44
 jmp .Lx116_45
.Lx116_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx116_53
 cmp eax, 99
 je .Lx116_53
 cmp eax, 13
 jne .Lx116_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx116_53
 jmp .Lx116_46
.Lx116_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx116_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx116_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx116_51
.Lx116_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx116_47
 cmp eax, 99
 je .Lx116_47
 cmp eax, 13
 jne .Lx116_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx116_47
 jmp .Lx116_48
.Lx116_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx116_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx116_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx116_51
.Lx116_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx116_49
 cmp edx, 14
 je .Lx116_53
 jmp .Lx116_52
.Lx116_49:
 cmp edx, 14
 je .Lx116_52
 cmp ecx, 7
 je .Lx116_53
 cmp edx, 7
 je .Lx116_53
 cmp ecx, 6
 jne .Lx116_50
 cmp edx, 6
 jne .Lx116_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx116_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx116_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx116_51
 jmp .Lx116_52
.Lx116_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx116_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx116_53
.Lx116_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx116_54
.Lx116_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx116_54
.Lx116_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx116_54:
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 cmp eax, 99
 je xchain25_n62_α
 jmp xchain25_n67_α
 xchain25_n61_β:
 jmp xchain25_n62_α
 xchain25_n62_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2528]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2528]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n40_α
 xchain25_n62_β:
 jmp proc_interpret$2F2_ω
# IR_LIT_STRING
 xchain25_n63_α:
 mov qword ptr [rbp + 2320], 1
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [rbp + 2328], rax
 jmp xchain25_n68_α
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "\\+"
# IR_LIT_STRING
 xchain25_n64_α:
 mov qword ptr [rbp + 1632], 1
 mov rax, qword ptr [rip + .Lx119_0]
 mov qword ptr [rbp + 1640], rax
 jmp xchain25_n69_α
.Lx119_0:
 .quad .Lx119_0_s
.Lx119_0_s:
 .string "?"
 xchain25_n65_α:
# BOX IR_CALL $tt_nonvar(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4624] -> [zr+4608]
 mov rax, qword ptr [rbp + 4624]
 mov qword ptr [rbp + 4608], rax
 mov rax, qword ptr [rbp + 4632]
 mov qword ptr [rbp + 4616], rax
  .section .rodata
  .Lrkfn121: .string "$tt_nonvar"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn121]
 lea rsi, [rbp + 4608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4592], rax
 mov qword ptr [rbp + 4600], rdx
 cmp eax, 99
 je xchain25_n71_α
 jmp xchain25_n70_α
 xchain25_n65_β:
 jmp xchain25_n71_α
# IR_VAR_REF
 xchain25_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5728]
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 jmp xchain25_n72_α
# IR_VAR_REF
 xchain25_n67_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain25_n73_α
# IR_VAR_REF
 xchain25_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5728]
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain25_n74_α
 xchain25_n69_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1568]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1576], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1568]
 mov rsi, qword ptr [rip + .Lx128_2]
 jmp .Lx128_3
.Lx128_2:
 .quad .Lx128_2_s
.Lx128_2_s:
 .string "?"
.Lx128_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain25_n76_α
 jmp xchain25_n75_α
 xchain25_n69_β:
 jmp xchain25_n76_α
# IR_VAR_REF
 xchain25_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5744]
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain25_n77_α
# IR_VAR_REF
 xchain25_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5696]
 mov qword ptr [rbp + 4528], rax
 mov qword ptr [rbp + 4536], rdx
 jmp xchain25_n78_α
# IR_VAR_REF
 xchain25_n72_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5696]
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain25_n79_α
# IR_VAR_REF
 xchain25_n73_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5744]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain25_n80_α
 xchain25_n74_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2320] -> [zr+2272]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2280], rax
# marshal arg1 = producer-box slot [zr+2224] -> [zr+2288]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2272]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 cmp eax, 99
 je xchain25_n82_α
 jmp xchain25_n81_α
 xchain25_n74_β:
 jmp xchain25_n82_α
# IR_VAR_REF
 xchain25_n75_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain25_n83_α
 xchain25_n76_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1408]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1416], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1408]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n84_α
 xchain25_n76_β:
 jmp proc_interpret$2F2_ω
# IR_LIT_STRING
 xchain25_n77_α:
 mov qword ptr [rbp + 4416], 1
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [rbp + 4424], rax
 jmp xchain25_n85_α
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string ","
# IR_VAR_REF
 xchain25_n78_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5744]
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain25_n86_α
# IR_VAR_REF
 xchain25_n79_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5744]
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 jmp xchain25_n87_α
 xchain25_n80_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2928] -> [zr+2896]
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2904], rax
# marshal arg1 = producer-box slot [zr+2960] -> [zr+2912]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2920], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2896]
 lea r8, [rbp + 2896]
.Lx146_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx146_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx146_41
 cmp esi, 1
 jne .Lx146_55
 mov r8, rax
 jmp .Lx146_40
.Lx146_55:
 cmp esi, 2
 jne .Lx146_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx146_41
 mov r8, rax
 jmp .Lx146_40
.Lx146_56:
 cmp eax, 13
 jne .Lx146_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx146_41
 cmp rax, r8
 je .Lx146_41
 mov r8, rax
 jmp .Lx146_40
.Lx146_41:
 lea r9, [rbp + 2912]
.Lx146_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx146_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx146_43
 cmp esi, 1
 jne .Lx146_57
 mov r9, rax
 jmp .Lx146_42
.Lx146_57:
 cmp esi, 2
 jne .Lx146_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx146_43
 mov r9, rax
 jmp .Lx146_42
.Lx146_58:
 cmp eax, 13
 jne .Lx146_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx146_43
 cmp rax, r9
 je .Lx146_43
 mov r9, rax
 jmp .Lx146_42
.Lx146_43:
 cmp r8, r9
 je .Lx146_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx146_44
 cmp eax, 99
 je .Lx146_44
 cmp eax, 13
 jne .Lx146_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx146_44
 jmp .Lx146_45
.Lx146_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx146_53
 cmp eax, 99
 je .Lx146_53
 cmp eax, 13
 jne .Lx146_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx146_53
 jmp .Lx146_46
.Lx146_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx146_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx146_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx146_51
.Lx146_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx146_47
 cmp eax, 99
 je .Lx146_47
 cmp eax, 13
 jne .Lx146_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx146_47
 jmp .Lx146_48
.Lx146_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx146_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx146_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx146_51
.Lx146_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx146_49
 cmp edx, 14
 je .Lx146_53
 jmp .Lx146_52
.Lx146_49:
 cmp edx, 14
 je .Lx146_52
 cmp ecx, 7
 je .Lx146_53
 cmp edx, 7
 je .Lx146_53
 cmp ecx, 6
 jne .Lx146_50
 cmp edx, 6
 jne .Lx146_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx146_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx146_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx146_51
 jmp .Lx146_52
.Lx146_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx146_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx146_53
.Lx146_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx146_54
.Lx146_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx146_54
.Lx146_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx146_54:
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 cmp eax, 99
 je xchain25_n62_α
 jmp xchain25_n88_α
 xchain25_n80_β:
 jmp xchain25_n62_α
 xchain25_n81_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2160]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2168], rax
# marshal arg1 = producer-box slot [zr+2256] -> [zr+2176]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2184], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2160]
 lea r8, [rbp + 2160]
.Lx147_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx147_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx147_41
 cmp esi, 1
 jne .Lx147_55
 mov r8, rax
 jmp .Lx147_40
.Lx147_55:
 cmp esi, 2
 jne .Lx147_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx147_41
 mov r8, rax
 jmp .Lx147_40
.Lx147_56:
 cmp eax, 13
 jne .Lx147_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx147_41
 cmp rax, r8
 je .Lx147_41
 mov r8, rax
 jmp .Lx147_40
.Lx147_41:
 lea r9, [rbp + 2176]
.Lx147_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx147_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx147_43
 cmp esi, 1
 jne .Lx147_57
 mov r9, rax
 jmp .Lx147_42
.Lx147_57:
 cmp esi, 2
 jne .Lx147_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx147_43
 mov r9, rax
 jmp .Lx147_42
.Lx147_58:
 cmp eax, 13
 jne .Lx147_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx147_43
 cmp rax, r9
 je .Lx147_43
 mov r9, rax
 jmp .Lx147_42
.Lx147_43:
 cmp r8, r9
 je .Lx147_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx147_44
 cmp eax, 99
 je .Lx147_44
 cmp eax, 13
 jne .Lx147_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx147_44
 jmp .Lx147_45
.Lx147_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx147_53
 cmp eax, 99
 je .Lx147_53
 cmp eax, 13
 jne .Lx147_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx147_53
 jmp .Lx147_46
.Lx147_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx147_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx147_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx147_51
.Lx147_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx147_47
 cmp eax, 99
 je .Lx147_47
 cmp eax, 13
 jne .Lx147_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx147_47
 jmp .Lx147_48
.Lx147_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx147_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx147_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx147_51
.Lx147_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx147_49
 cmp edx, 14
 je .Lx147_53
 jmp .Lx147_52
.Lx147_49:
 cmp edx, 14
 je .Lx147_52
 cmp ecx, 7
 je .Lx147_53
 cmp edx, 7
 je .Lx147_53
 cmp ecx, 6
 jne .Lx147_50
 cmp edx, 6
 jne .Lx147_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx147_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx147_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx147_51
 jmp .Lx147_52
.Lx147_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx147_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx147_53
.Lx147_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx147_54
.Lx147_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx147_54
.Lx147_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx147_54:
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 cmp eax, 99
 je xchain25_n82_α
 jmp xchain25_n89_α
 xchain25_n81_β:
 jmp xchain25_n82_α
 xchain25_n82_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1680]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1688], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1680]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n58_α
 xchain25_n82_β:
 jmp proc_interpret$2F2_ω
# IR_LIT_STRING
 xchain25_n83_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain25_n90_α
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string "true"
# IR_VAR_REF
 xchain25_n84_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain25_n91_α
# IR_VAR_REF
 xchain25_n85_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5760]
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain25_n92_α
 xchain25_n86_α:
 mov qword ptr [rbp + 4496], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx155_20
 mov rax, qword ptr [rbp + 4528]
 mov rdx, qword ptr [rbp + 4536]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx155_21
.Lx155_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4528]
 mov rdx, qword ptr [rbp + 4536]
 call rt_arg_stage@PLT
.Lx155_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx155_22
 mov rax, qword ptr [rbp + 4560]
 mov rdx, qword ptr [rbp + 4568]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx155_23
.Lx155_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 4560]
 mov rdx, qword ptr [rbp + 4568]
 call rt_arg_stage@PLT
.Lx155_23:
 mov rdi, qword ptr [rip + .Lx155_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx155_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx155_3]
 lea rdx, [rip + .Lx155_4]
 jmp rax
.Lx155_3:
 mov qword ptr [rbp + 4504], rsp
 mov rax, qword ptr [rbp + 4496]
 test rax, rax
 jne .Lx155_5
 mov qword ptr [rbp + 4496], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx155_2
.Lx155_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx155_2
.Lx155_4:
 mov rax, qword ptr [rbp + 4496]
 test rax, rax
 jne .Lx155_6
 mov qword ptr [rbp + 4496], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx155_2
.Lx155_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx155_2
.Lx155_1:
 call rt_faildescr@PLT
.Lx155_2:
 mov qword ptr [rbp + 4448], rax
 mov qword ptr [rbp + 4456], rdx
 cmp eax, 99
 je xchain25_n54_β
 jmp xchain25_n93_α
 xchain25_n86_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4504]
 jmp qword ptr [rsp]
.Lx155_0:
 .quad .Lx155_0_s
.Lx155_0_s:
 .string "interpret/2"
 xchain25_n87_α:
 mov qword ptr [rbp + 3504], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx157_20
 mov rax, qword ptr [rbp + 3536]
 mov rdx, qword ptr [rbp + 3544]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx157_21
.Lx157_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3536]
 mov rdx, qword ptr [rbp + 3544]
 call rt_arg_stage@PLT
.Lx157_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx157_22
 mov rax, qword ptr [rbp + 3568]
 mov rdx, qword ptr [rbp + 3576]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx157_23
.Lx157_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 3568]
 mov rdx, qword ptr [rbp + 3576]
 call rt_arg_stage@PLT
.Lx157_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx157_24
 mov rax, qword ptr [rbp + 3600]
 mov rdx, qword ptr [rbp + 3608]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx157_25
.Lx157_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 3600]
 mov rdx, qword ptr [rbp + 3608]
 call rt_arg_stage@PLT
.Lx157_25:
 mov rdi, qword ptr [rip + .Lx157_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx157_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx157_3]
 lea rdx, [rip + .Lx157_4]
 jmp rax
.Lx157_3:
 mov qword ptr [rbp + 3512], rsp
 mov rax, qword ptr [rbp + 3504]
 test rax, rax
 jne .Lx157_5
 mov qword ptr [rbp + 3504], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx157_2
.Lx157_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx157_2
.Lx157_4:
 mov rax, qword ptr [rbp + 3504]
 test rax, rax
 jne .Lx157_6
 mov qword ptr [rbp + 3504], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx157_2
.Lx157_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx157_2
.Lx157_1:
 call rt_faildescr@PLT
.Lx157_2:
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n94_α
 xchain25_n87_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3512]
 jmp qword ptr [rsp]
.Lx157_0:
 .quad .Lx157_0_s
.Lx157_0_s:
 .string "interpret_disjunction/3"
 xchain25_n88_α:
# IR_CUT
 jmp xchain25_n95_α
# IR_VAR_REF
 xchain25_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain25_n96_α
 xchain25_n90_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1456]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1464], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1456]
 mov rsi, qword ptr [rip + .Lx161_2]
 jmp .Lx161_3
.Lx161_2:
 .quad .Lx161_2_s
.Lx161_2_s:
 .string "true"
.Lx161_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain25_n76_α
 jmp xchain25_n97_α
 xchain25_n90_β:
 jmp xchain25_n76_α
# IR_VAR_REF
 xchain25_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5712]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain25_n98_α
# IR_VAR_REF
 xchain25_n92_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5696]
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 jmp xchain25_n99_α
# IR_SUSPEND yield+resume
 xchain25_n93_α:
 lea rax, [rip + xchain25_n93_β]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2F2_γ
 xchain25_n93_β:
 jmp xchain25_n54_β
# IR_SUSPEND yield+resume
 xchain25_n94_α:
 lea rax, [rip + xchain25_n94_β]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2F2_γ
 xchain25_n94_β:
 jmp xchain25_n87_β
# IR_LIT_STRING
 xchain25_n95_α:
 mov qword ptr [rbp + 2784], 1
 mov rax, qword ptr [rip + .Lx170_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain25_n100_α
.Lx170_0:
 .quad .Lx170_0_s
.Lx170_0_s:
 .string "->"
# IR_VAR_REF
 xchain25_n96_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5744]
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain25_n101_α
 xchain25_n97_α:
# IR_CUT
 jmp xchain25_n102_α
 xchain25_n98_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1296]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1304], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1312]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1320], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1296]
 lea r8, [rbp + 1296]
.Lx174_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx174_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx174_41
 cmp esi, 1
 jne .Lx174_55
 mov r8, rax
 jmp .Lx174_40
.Lx174_55:
 cmp esi, 2
 jne .Lx174_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx174_41
 mov r8, rax
 jmp .Lx174_40
.Lx174_56:
 cmp eax, 13
 jne .Lx174_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx174_41
 cmp rax, r8
 je .Lx174_41
 mov r8, rax
 jmp .Lx174_40
.Lx174_41:
 lea r9, [rbp + 1312]
.Lx174_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx174_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx174_43
 cmp esi, 1
 jne .Lx174_57
 mov r9, rax
 jmp .Lx174_42
.Lx174_57:
 cmp esi, 2
 jne .Lx174_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx174_43
 mov r9, rax
 jmp .Lx174_42
.Lx174_58:
 cmp eax, 13
 jne .Lx174_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx174_43
 cmp rax, r9
 je .Lx174_43
 mov r9, rax
 jmp .Lx174_42
.Lx174_43:
 cmp r8, r9
 je .Lx174_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx174_44
 cmp eax, 99
 je .Lx174_44
 cmp eax, 13
 jne .Lx174_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx174_44
 jmp .Lx174_45
.Lx174_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx174_53
 cmp eax, 99
 je .Lx174_53
 cmp eax, 13
 jne .Lx174_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx174_53
 jmp .Lx174_46
.Lx174_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx174_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx174_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx174_51
.Lx174_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx174_47
 cmp eax, 99
 je .Lx174_47
 cmp eax, 13
 jne .Lx174_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx174_47
 jmp .Lx174_48
.Lx174_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx174_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx174_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx174_51
.Lx174_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx174_49
 cmp edx, 14
 je .Lx174_53
 jmp .Lx174_52
.Lx174_49:
 cmp edx, 14
 je .Lx174_52
 cmp ecx, 7
 je .Lx174_53
 cmp edx, 7
 je .Lx174_53
 cmp ecx, 6
 jne .Lx174_50
 cmp edx, 6
 jne .Lx174_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx174_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx174_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx174_51
 jmp .Lx174_52
.Lx174_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx174_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx174_53
.Lx174_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx174_54
.Lx174_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx174_54
.Lx174_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx174_54:
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain25_n104_α
 jmp xchain25_n103_α
 xchain25_n98_β:
 jmp xchain25_n104_α
 xchain25_n99_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4416] -> [zr+4352]
 mov rax, qword ptr [rbp + 4416]
 mov qword ptr [rbp + 4352], rax
 mov rax, qword ptr [rbp + 4424]
 mov qword ptr [rbp + 4360], rax
# marshal arg1 = producer-box slot [zr+4272] -> [zr+4368]
 mov rax, qword ptr [rbp + 4272]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 4280]
 mov qword ptr [rbp + 4376], rax
# marshal arg2 = producer-box slot [zr+4304] -> [zr+4384]
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 4384], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 4392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4352]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 cmp eax, 99
 je xchain25_n54_β
 jmp xchain25_n105_α
 xchain25_n99_β:
 jmp xchain25_n54_β
# IR_VAR_REF
 xchain25_n100_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5728]
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain25_n106_α
 xchain25_n101_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2048]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2056], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2064]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2072], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2048]
 lea r8, [rbp + 2048]
.Lx178_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx178_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx178_41
 cmp esi, 1
 jne .Lx178_55
 mov r8, rax
 jmp .Lx178_40
.Lx178_55:
 cmp esi, 2
 jne .Lx178_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx178_41
 mov r8, rax
 jmp .Lx178_40
.Lx178_56:
 cmp eax, 13
 jne .Lx178_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx178_41
 cmp rax, r8
 je .Lx178_41
 mov r8, rax
 jmp .Lx178_40
.Lx178_41:
 lea r9, [rbp + 2064]
.Lx178_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx178_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx178_43
 cmp esi, 1
 jne .Lx178_57
 mov r9, rax
 jmp .Lx178_42
.Lx178_57:
 cmp esi, 2
 jne .Lx178_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx178_43
 mov r9, rax
 jmp .Lx178_42
.Lx178_58:
 cmp eax, 13
 jne .Lx178_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx178_43
 cmp rax, r9
 je .Lx178_43
 mov r9, rax
 jmp .Lx178_42
.Lx178_43:
 cmp r8, r9
 je .Lx178_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx178_44
 cmp eax, 99
 je .Lx178_44
 cmp eax, 13
 jne .Lx178_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx178_44
 jmp .Lx178_45
.Lx178_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx178_53
 cmp eax, 99
 je .Lx178_53
 cmp eax, 13
 jne .Lx178_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx178_53
 jmp .Lx178_46
.Lx178_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx178_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx178_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx178_51
.Lx178_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx178_47
 cmp eax, 99
 je .Lx178_47
 cmp eax, 13
 jne .Lx178_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx178_47
 jmp .Lx178_48
.Lx178_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx178_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx178_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx178_51
.Lx178_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx178_49
 cmp edx, 14
 je .Lx178_53
 jmp .Lx178_52
.Lx178_49:
 cmp edx, 14
 je .Lx178_52
 cmp ecx, 7
 je .Lx178_53
 cmp edx, 7
 je .Lx178_53
 cmp ecx, 6
 jne .Lx178_50
 cmp edx, 6
 jne .Lx178_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx178_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx178_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx178_51
 jmp .Lx178_52
.Lx178_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx178_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx178_53
.Lx178_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx178_54
.Lx178_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx178_54
.Lx178_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx178_54:
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je xchain25_n82_α
 jmp xchain25_n107_α
 xchain25_n101_β:
 jmp xchain25_n82_α
# IR_SUSPEND yield+resume
 xchain25_n102_α:
 lea rax, [rip + xchain25_n102_β]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2F2_γ
 xchain25_n102_β:
 jmp xchain25_n76_α
# IR_VAR_REF
 xchain25_n103_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain25_n108_α
 xchain25_n104_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1072]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n109_α
 xchain25_n104_β:
 jmp proc_interpret$2F2_ω
 xchain25_n105_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4240] -> [zr+4208]
 mov rax, qword ptr [rbp + 4240]
 mov qword ptr [rbp + 4208], rax
 mov rax, qword ptr [rbp + 4248]
 mov qword ptr [rbp + 4216], rax
# marshal arg1 = producer-box slot [zr+4336] -> [zr+4224]
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4224], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4232], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 4208]
 lea r8, [rbp + 4208]
.Lx184_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx184_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx184_41
 cmp esi, 1
 jne .Lx184_55
 mov r8, rax
 jmp .Lx184_40
.Lx184_55:
 cmp esi, 2
 jne .Lx184_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx184_41
 mov r8, rax
 jmp .Lx184_40
.Lx184_56:
 cmp eax, 13
 jne .Lx184_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx184_41
 cmp rax, r8
 je .Lx184_41
 mov r8, rax
 jmp .Lx184_40
.Lx184_41:
 lea r9, [rbp + 4224]
.Lx184_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx184_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx184_43
 cmp esi, 1
 jne .Lx184_57
 mov r9, rax
 jmp .Lx184_42
.Lx184_57:
 cmp esi, 2
 jne .Lx184_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx184_43
 mov r9, rax
 jmp .Lx184_42
.Lx184_58:
 cmp eax, 13
 jne .Lx184_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx184_43
 cmp rax, r9
 je .Lx184_43
 mov r9, rax
 jmp .Lx184_42
.Lx184_43:
 cmp r8, r9
 je .Lx184_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx184_44
 cmp eax, 99
 je .Lx184_44
 cmp eax, 13
 jne .Lx184_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx184_44
 jmp .Lx184_45
.Lx184_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx184_53
 cmp eax, 99
 je .Lx184_53
 cmp eax, 13
 jne .Lx184_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx184_53
 jmp .Lx184_46
.Lx184_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx184_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx184_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx184_51
.Lx184_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx184_47
 cmp eax, 99
 je .Lx184_47
 cmp eax, 13
 jne .Lx184_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx184_47
 jmp .Lx184_48
.Lx184_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx184_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx184_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx184_51
.Lx184_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx184_49
 cmp edx, 14
 je .Lx184_53
 jmp .Lx184_52
.Lx184_49:
 cmp edx, 14
 je .Lx184_52
 cmp ecx, 7
 je .Lx184_53
 cmp edx, 7
 je .Lx184_53
 cmp ecx, 6
 jne .Lx184_50
 cmp edx, 6
 jne .Lx184_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx184_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx184_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx184_51
 jmp .Lx184_52
.Lx184_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx184_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx184_53
.Lx184_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx184_54
.Lx184_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx184_54
.Lx184_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx184_54:
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 cmp eax, 99
 je xchain25_n54_β
 jmp xchain25_n93_α
 xchain25_n105_β:
 jmp xchain25_n54_β
# IR_VAR_REF
 xchain25_n106_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5696]
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain25_n110_α
 xchain25_n107_α:
# IR_CUT
 jmp xchain25_n111_α
# IR_VAR_REF
 xchain25_n108_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5728]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain25_n112_α
# IR_VAR_REF
 xchain25_n109_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain25_n113_α
 xchain25_n110_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2784] -> [zr+2720]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2728], rax
# marshal arg1 = producer-box slot [zr+2640] -> [zr+2736]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2744], rax
# marshal arg2 = producer-box slot [zr+2672] -> [zr+2752]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2720]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n114_α
 xchain25_n110_β:
 jmp xchain25_n17_α
# IR_LIT_STRING
 xchain25_n111_α:
 mov qword ptr [rbp + 1936], 1
 mov rax, qword ptr [rip + .Lx193_0]
 mov qword ptr [rbp + 1944], rax
 jmp xchain25_n115_α
.Lx193_0:
 .quad .Lx193_0_s
.Lx193_0_s:
 .string "->"
 xchain25_n112_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1184]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1192], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1200]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1208], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1184]
 lea r8, [rbp + 1184]
.Lx194_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx194_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx194_41
 cmp esi, 1
 jne .Lx194_55
 mov r8, rax
 jmp .Lx194_40
.Lx194_55:
 cmp esi, 2
 jne .Lx194_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx194_41
 mov r8, rax
 jmp .Lx194_40
.Lx194_56:
 cmp eax, 13
 jne .Lx194_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx194_41
 cmp rax, r8
 je .Lx194_41
 mov r8, rax
 jmp .Lx194_40
.Lx194_41:
 lea r9, [rbp + 1200]
.Lx194_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx194_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx194_43
 cmp esi, 1
 jne .Lx194_57
 mov r9, rax
 jmp .Lx194_42
.Lx194_57:
 cmp esi, 2
 jne .Lx194_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx194_43
 mov r9, rax
 jmp .Lx194_42
.Lx194_58:
 cmp eax, 13
 jne .Lx194_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx194_43
 cmp rax, r9
 je .Lx194_43
 mov r9, rax
 jmp .Lx194_42
.Lx194_43:
 cmp r8, r9
 je .Lx194_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx194_44
 cmp eax, 99
 je .Lx194_44
 cmp eax, 13
 jne .Lx194_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx194_44
 jmp .Lx194_45
.Lx194_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx194_53
 cmp eax, 99
 je .Lx194_53
 cmp eax, 13
 jne .Lx194_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx194_53
 jmp .Lx194_46
.Lx194_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx194_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx194_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx194_51
.Lx194_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx194_47
 cmp eax, 99
 je .Lx194_47
 cmp eax, 13
 jne .Lx194_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx194_47
 jmp .Lx194_48
.Lx194_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx194_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx194_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx194_51
.Lx194_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx194_49
 cmp edx, 14
 je .Lx194_53
 jmp .Lx194_52
.Lx194_49:
 cmp edx, 14
 je .Lx194_52
 cmp ecx, 7
 je .Lx194_53
 cmp edx, 7
 je .Lx194_53
 cmp ecx, 6
 jne .Lx194_50
 cmp edx, 6
 jne .Lx194_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx194_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx194_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx194_51
 jmp .Lx194_52
.Lx194_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx194_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx194_53
.Lx194_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx194_54
.Lx194_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx194_54
.Lx194_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx194_54:
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain25_n104_α
 jmp xchain25_n116_α
 xchain25_n112_β:
 jmp xchain25_n104_α
# IR_VAR_REF
 xchain25_n113_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5712]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain25_n117_α
# IR_LIT_STRING
 xchain25_n114_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain25_n118_α
.Lx197_0:
 .quad .Lx197_0_s
.Lx197_0_s:
 .string "fail"
# IR_VAR_REF
 xchain25_n115_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5728]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain25_n119_α
# IR_VAR_REF
 xchain25_n116_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5712]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain25_n120_α
 xchain25_n117_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+960]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 968], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+976]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 984], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 960]
 lea r8, [rbp + 960]
.Lx202_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx202_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx202_41
 cmp esi, 1
 jne .Lx202_55
 mov r8, rax
 jmp .Lx202_40
.Lx202_55:
 cmp esi, 2
 jne .Lx202_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx202_41
 mov r8, rax
 jmp .Lx202_40
.Lx202_56:
 cmp eax, 13
 jne .Lx202_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx202_41
 cmp rax, r8
 je .Lx202_41
 mov r8, rax
 jmp .Lx202_40
.Lx202_41:
 lea r9, [rbp + 976]
.Lx202_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx202_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx202_43
 cmp esi, 1
 jne .Lx202_57
 mov r9, rax
 jmp .Lx202_42
.Lx202_57:
 cmp esi, 2
 jne .Lx202_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx202_43
 mov r9, rax
 jmp .Lx202_42
.Lx202_58:
 cmp eax, 13
 jne .Lx202_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx202_43
 cmp rax, r9
 je .Lx202_43
 mov r9, rax
 jmp .Lx202_42
.Lx202_43:
 cmp r8, r9
 je .Lx202_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx202_44
 cmp eax, 99
 je .Lx202_44
 cmp eax, 13
 jne .Lx202_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx202_44
 jmp .Lx202_45
.Lx202_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx202_53
 cmp eax, 99
 je .Lx202_53
 cmp eax, 13
 jne .Lx202_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx202_53
 jmp .Lx202_46
.Lx202_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx202_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx202_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx202_51
.Lx202_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx202_47
 cmp eax, 99
 je .Lx202_47
 cmp eax, 13
 jne .Lx202_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx202_47
 jmp .Lx202_48
.Lx202_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx202_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx202_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx202_51
.Lx202_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx202_49
 cmp edx, 14
 je .Lx202_53
 jmp .Lx202_52
.Lx202_49:
 cmp edx, 14
 je .Lx202_52
 cmp ecx, 7
 je .Lx202_53
 cmp edx, 7
 je .Lx202_53
 cmp ecx, 6
 jne .Lx202_50
 cmp edx, 6
 jne .Lx202_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx202_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx202_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx202_51
 jmp .Lx202_52
.Lx202_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx202_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx202_53
.Lx202_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx202_54
.Lx202_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx202_54
.Lx202_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx202_54:
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain25_n122_α
 jmp xchain25_n121_α
 xchain25_n117_β:
 jmp xchain25_n122_α
# IR_VAR_REF
 xchain25_n118_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5744]
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 jmp xchain25_n123_α
# IR_LIT_STRING
 xchain25_n119_α:
 mov qword ptr [rbp + 1824], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain25_n124_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "fail"
 xchain25_n120_α:
# BOX IR_CALL $tt_number(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1120]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1128], rax
  .section .rodata
  .Lrkfn207: .string "$tt_number"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn207]
 lea rsi, [rbp + 1120]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain25_n104_α
 jmp xchain25_n125_α
 xchain25_n120_β:
 jmp xchain25_n104_α
# IR_VAR_REF
 xchain25_n121_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain25_n126_α
 xchain25_n122_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+624]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je proc_interpret$2F2_ω
 jmp xchain25_n127_α
 xchain25_n122_β:
 jmp proc_interpret$2F2_ω
 xchain25_n123_α:
 mov qword ptr [rbp + 2608], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx212_20
 mov rax, qword ptr [rbp + 2704]
 mov rdx, qword ptr [rbp + 2712]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx212_21
.Lx212_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2704]
 mov rdx, qword ptr [rbp + 2712]
 call rt_arg_stage@PLT
.Lx212_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx212_22
 mov rax, qword ptr [rbp + 2816]
 mov rdx, qword ptr [rbp + 2824]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx212_23
.Lx212_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 2816]
 mov rdx, qword ptr [rbp + 2824]
 call rt_arg_stage@PLT
.Lx212_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx212_24
 mov rax, qword ptr [rbp + 2848]
 mov rdx, qword ptr [rbp + 2856]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx212_25
.Lx212_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 2848]
 mov rdx, qword ptr [rbp + 2856]
 call rt_arg_stage@PLT
.Lx212_25:
 mov rdi, qword ptr [rip + .Lx212_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx212_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx212_3]
 lea rdx, [rip + .Lx212_4]
 jmp rax
.Lx212_3:
 mov qword ptr [rbp + 2616], rsp
 mov rax, qword ptr [rbp + 2608]
 test rax, rax
 jne .Lx212_5
 mov qword ptr [rbp + 2608], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx212_2
.Lx212_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx212_2
.Lx212_4:
 mov rax, qword ptr [rbp + 2608]
 test rax, rax
 jne .Lx212_6
 mov qword ptr [rbp + 2608], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx212_2
.Lx212_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx212_2
.Lx212_1:
 call rt_faildescr@PLT
.Lx212_2:
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n128_α
 xchain25_n123_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2616]
 jmp qword ptr [rsp]
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "interpret_disjunction/3"
 xchain25_n124_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1936] -> [zr+1872]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1880], rax
# marshal arg1 = producer-box slot [zr+1792] -> [zr+1888]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1896], rax
# marshal arg2 = producer-box slot [zr+1824] -> [zr+1904]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1872]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n129_α
 xchain25_n124_β:
 jmp xchain25_n17_α
 xchain25_n125_α:
# IR_CUT
 jmp xchain25_n17_α
# IR_VAR_REF
 xchain25_n126_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5728]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain25_n130_α
# IR_VAR_REF
 xchain25_n127_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain25_n131_α
# IR_SUSPEND yield+resume
 xchain25_n128_α:
 lea rax, [rip + xchain25_n128_β]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2F2_γ
 xchain25_n128_β:
 jmp xchain25_n123_β
# IR_LIT_STRING
 xchain25_n129_α:
 mov qword ptr [rbp + 1968], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain25_n132_α
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "true"
 xchain25_n130_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 848]
 lea r8, [rbp + 848]
.Lx222_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx222_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx222_41
 cmp esi, 1
 jne .Lx222_55
 mov r8, rax
 jmp .Lx222_40
.Lx222_55:
 cmp esi, 2
 jne .Lx222_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx222_41
 mov r8, rax
 jmp .Lx222_40
.Lx222_56:
 cmp eax, 13
 jne .Lx222_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx222_41
 cmp rax, r8
 je .Lx222_41
 mov r8, rax
 jmp .Lx222_40
.Lx222_41:
 lea r9, [rbp + 864]
.Lx222_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx222_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx222_43
 cmp esi, 1
 jne .Lx222_57
 mov r9, rax
 jmp .Lx222_42
.Lx222_57:
 cmp esi, 2
 jne .Lx222_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx222_43
 mov r9, rax
 jmp .Lx222_42
.Lx222_58:
 cmp eax, 13
 jne .Lx222_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx222_43
 cmp rax, r9
 je .Lx222_43
 mov r9, rax
 jmp .Lx222_42
.Lx222_43:
 cmp r8, r9
 je .Lx222_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx222_44
 cmp eax, 99
 je .Lx222_44
 cmp eax, 13
 jne .Lx222_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx222_44
 jmp .Lx222_45
.Lx222_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx222_53
 cmp eax, 99
 je .Lx222_53
 cmp eax, 13
 jne .Lx222_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx222_53
 jmp .Lx222_46
.Lx222_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx222_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx222_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx222_51
.Lx222_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx222_47
 cmp eax, 99
 je .Lx222_47
 cmp eax, 13
 jne .Lx222_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx222_47
 jmp .Lx222_48
.Lx222_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx222_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx222_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx222_51
.Lx222_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx222_49
 cmp edx, 14
 je .Lx222_53
 jmp .Lx222_52
.Lx222_49:
 cmp edx, 14
 je .Lx222_52
 cmp ecx, 7
 je .Lx222_53
 cmp edx, 7
 je .Lx222_53
 cmp ecx, 6
 jne .Lx222_50
 cmp edx, 6
 jne .Lx222_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx222_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx222_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx222_51
 jmp .Lx222_52
.Lx222_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx222_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx222_53
.Lx222_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx222_54
.Lx222_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx222_54
.Lx222_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx222_54:
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain25_n122_α
 jmp xchain25_n133_α
 xchain25_n130_β:
 jmp xchain25_n122_α
# IR_VAR_REF
 xchain25_n131_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5712]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain25_n134_α
# IR_VAR_REF
 xchain25_n132_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5744]
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain25_n135_α
# IR_VAR_REF
 xchain25_n133_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5712]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain25_n136_α
 xchain25_n134_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 520], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 536], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 512]
 lea r8, [rbp + 512]
.Lx229_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx229_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx229_41
 cmp esi, 1
 jne .Lx229_55
 mov r8, rax
 jmp .Lx229_40
.Lx229_55:
 cmp esi, 2
 jne .Lx229_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx229_41
 mov r8, rax
 jmp .Lx229_40
.Lx229_56:
 cmp eax, 13
 jne .Lx229_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx229_41
 cmp rax, r8
 je .Lx229_41
 mov r8, rax
 jmp .Lx229_40
.Lx229_41:
 lea r9, [rbp + 528]
.Lx229_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx229_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx229_43
 cmp esi, 1
 jne .Lx229_57
 mov r9, rax
 jmp .Lx229_42
.Lx229_57:
 cmp esi, 2
 jne .Lx229_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx229_43
 mov r9, rax
 jmp .Lx229_42
.Lx229_58:
 cmp eax, 13
 jne .Lx229_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx229_43
 cmp rax, r9
 je .Lx229_43
 mov r9, rax
 jmp .Lx229_42
.Lx229_43:
 cmp r8, r9
 je .Lx229_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx229_44
 cmp eax, 99
 je .Lx229_44
 cmp eax, 13
 jne .Lx229_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx229_44
 jmp .Lx229_45
.Lx229_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx229_53
 cmp eax, 99
 je .Lx229_53
 cmp eax, 13
 jne .Lx229_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx229_53
 jmp .Lx229_46
.Lx229_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx229_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx229_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx229_51
.Lx229_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx229_47
 cmp eax, 99
 je .Lx229_47
 cmp eax, 13
 jne .Lx229_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx229_47
 jmp .Lx229_48
.Lx229_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx229_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx229_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx229_51
.Lx229_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx229_49
 cmp edx, 14
 je .Lx229_53
 jmp .Lx229_52
.Lx229_49:
 cmp edx, 14
 je .Lx229_52
 cmp ecx, 7
 je .Lx229_53
 cmp edx, 7
 je .Lx229_53
 cmp ecx, 6
 jne .Lx229_50
 cmp edx, 6
 jne .Lx229_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx229_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx229_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx229_51
 jmp .Lx229_52
.Lx229_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx229_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx229_53
.Lx229_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx229_54
.Lx229_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx229_54
.Lx229_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx229_54:
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n137_α
 xchain25_n134_β:
 jmp xchain25_n17_α
 xchain25_n135_α:
 mov qword ptr [rbp + 1760], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx231_20
 mov rax, qword ptr [rbp + 1856]
 mov rdx, qword ptr [rbp + 1864]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx231_21
.Lx231_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1856]
 mov rdx, qword ptr [rbp + 1864]
 call rt_arg_stage@PLT
.Lx231_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx231_22
 mov rax, qword ptr [rbp + 1968]
 mov rdx, qword ptr [rbp + 1976]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx231_23
.Lx231_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 1968]
 mov rdx, qword ptr [rbp + 1976]
 call rt_arg_stage@PLT
.Lx231_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx231_24
 mov rax, qword ptr [rbp + 2000]
 mov rdx, qword ptr [rbp + 2008]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx231_25
.Lx231_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 2000]
 mov rdx, qword ptr [rbp + 2008]
 call rt_arg_stage@PLT
.Lx231_25:
 mov rdi, qword ptr [rip + .Lx231_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx231_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx231_3]
 lea rdx, [rip + .Lx231_4]
 jmp rax
.Lx231_3:
 mov qword ptr [rbp + 1768], rsp
 mov rax, qword ptr [rbp + 1760]
 test rax, rax
 jne .Lx231_5
 mov qword ptr [rbp + 1760], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx231_2
.Lx231_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx231_2
.Lx231_4:
 mov rax, qword ptr [rbp + 1760]
 test rax, rax
 jne .Lx231_6
 mov qword ptr [rbp + 1760], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx231_2
.Lx231_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx231_2
.Lx231_1:
 call rt_faildescr@PLT
.Lx231_2:
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n138_α
 xchain25_n135_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1768]
 jmp qword ptr [rsp]
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "interpret_disjunction/3"
 xchain25_n136_α:
 mov qword ptr [rbp + 768], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx233_20
 mov rax, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx233_21
.Lx233_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 call rt_arg_stage@PLT
.Lx233_21:
 mov rdi, qword ptr [rip + .Lx233_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx233_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx233_3]
 lea rdx, [rip + .Lx233_4]
 jmp rax
.Lx233_3:
 mov qword ptr [rbp + 776], rsp
 mov rax, qword ptr [rbp + 768]
 test rax, rax
 jne .Lx233_5
 mov qword ptr [rbp + 768], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx233_2
.Lx233_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx233_2
.Lx233_4:
 mov rax, qword ptr [rbp + 768]
 test rax, rax
 jne .Lx233_6
 mov qword ptr [rbp + 768], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx233_2
.Lx233_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx233_2
.Lx233_1:
 call rt_faildescr@PLT
.Lx233_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain25_n122_α
 jmp xchain25_n139_α
 xchain25_n136_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 776]
 jmp qword ptr [rsp]
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "is_built_in/1"
# IR_VAR_REF
 xchain25_n137_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain25_n140_α
# IR_SUSPEND yield+resume
 xchain25_n138_α:
 lea rax, [rip + xchain25_n138_β]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2F2_γ
 xchain25_n138_β:
 jmp xchain25_n135_β
 xchain25_n139_α:
# IR_CUT
 jmp xchain25_n141_α
# IR_VAR_REF
 xchain25_n140_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5728]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain25_n142_α
# IR_VAR_REF
 xchain25_n141_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5712]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain25_n143_α
 xchain25_n142_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+400]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 424], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 400]
 lea r8, [rbp + 400]
.Lx243_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx243_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx243_41
 cmp esi, 1
 jne .Lx243_55
 mov r8, rax
 jmp .Lx243_40
.Lx243_55:
 cmp esi, 2
 jne .Lx243_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx243_41
 mov r8, rax
 jmp .Lx243_40
.Lx243_56:
 cmp eax, 13
 jne .Lx243_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx243_41
 cmp rax, r8
 je .Lx243_41
 mov r8, rax
 jmp .Lx243_40
.Lx243_41:
 lea r9, [rbp + 416]
.Lx243_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx243_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx243_43
 cmp esi, 1
 jne .Lx243_57
 mov r9, rax
 jmp .Lx243_42
.Lx243_57:
 cmp esi, 2
 jne .Lx243_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx243_43
 mov r9, rax
 jmp .Lx243_42
.Lx243_58:
 cmp eax, 13
 jne .Lx243_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx243_43
 cmp rax, r9
 je .Lx243_43
 mov r9, rax
 jmp .Lx243_42
.Lx243_43:
 cmp r8, r9
 je .Lx243_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx243_44
 cmp eax, 99
 je .Lx243_44
 cmp eax, 13
 jne .Lx243_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx243_44
 jmp .Lx243_45
.Lx243_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx243_53
 cmp eax, 99
 je .Lx243_53
 cmp eax, 13
 jne .Lx243_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx243_53
 jmp .Lx243_46
.Lx243_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx243_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx243_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx243_51
.Lx243_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx243_47
 cmp eax, 99
 je .Lx243_47
 cmp eax, 13
 jne .Lx243_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx243_47
 jmp .Lx243_48
.Lx243_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx243_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx243_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx243_51
.Lx243_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx243_49
 cmp edx, 14
 je .Lx243_53
 jmp .Lx243_52
.Lx243_49:
 cmp edx, 14
 je .Lx243_52
 cmp ecx, 7
 je .Lx243_53
 cmp edx, 7
 je .Lx243_53
 cmp ecx, 6
 jne .Lx243_50
 cmp edx, 6
 jne .Lx243_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx243_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx243_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx243_51
 jmp .Lx243_52
.Lx243_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx243_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx243_53
.Lx243_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx243_54
.Lx243_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx243_54
.Lx243_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx243_54:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n144_α
 xchain25_n142_β:
 jmp xchain25_n17_α
 xchain25_n143_α:
 mov qword ptr [rbp + 672], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx245_20
 mov rax, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx245_21
.Lx245_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 call rt_arg_stage@PLT
.Lx245_21:
 mov rdi, qword ptr [rip + .Lx245_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx245_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx245_3]
 lea rdx, [rip + .Lx245_4]
 jmp rax
.Lx245_3:
 mov qword ptr [rbp + 680], rsp
 mov rax, qword ptr [rbp + 672]
 test rax, rax
 jne .Lx245_5
 mov qword ptr [rbp + 672], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx245_2
.Lx245_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx245_2
.Lx245_4:
 mov rax, qword ptr [rbp + 672]
 test rax, rax
 jne .Lx245_6
 mov qword ptr [rbp + 672], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx245_2
.Lx245_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx245_2
.Lx245_1:
 call rt_faildescr@PLT
.Lx245_2:
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n145_α
 xchain25_n143_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 680]
 jmp qword ptr [rsp]
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "interpret_built_in/1"
# IR_VAR_REF
 xchain25_n144_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5712]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain25_n146_α
# IR_SUSPEND yield+resume
 xchain25_n145_α:
 lea rax, [rip + xchain25_n145_β]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2F2_γ
 xchain25_n145_β:
 jmp xchain25_n143_β
# IR_VAR_REF
 xchain25_n146_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5696]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain25_n147_α
 xchain25_n147_α:
 mov qword ptr [rbp + 288], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx253_20
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx253_21
.Lx253_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
.Lx253_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx253_22
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx253_23
.Lx253_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
.Lx253_23:
 mov rdi, qword ptr [rip + .Lx253_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx253_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx253_3]
 lea rdx, [rip + .Lx253_4]
 jmp rax
.Lx253_3:
 mov qword ptr [rbp + 296], rsp
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx253_5
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx253_2
.Lx253_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx253_2
.Lx253_4:
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx253_6
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx253_2
.Lx253_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx253_2
.Lx253_1:
 call rt_faildescr@PLT
.Lx253_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain25_n17_α
 jmp xchain25_n148_α
 xchain25_n147_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 296]
 jmp qword ptr [rsp]
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "define/2"
# IR_VAR_REF
 xchain25_n148_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5696]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain25_n149_α
 xchain25_n149_α:
 mov qword ptr [rbp + 176], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx257_20
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx257_21
.Lx257_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 call rt_arg_stage@PLT
.Lx257_21:
 mov rdi, qword ptr [rip + .Lx257_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx257_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx257_3]
 lea rdx, [rip + .Lx257_4]
 jmp rax
.Lx257_3:
 mov qword ptr [rbp + 184], rsp
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx257_5
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx257_2
.Lx257_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx257_2
.Lx257_4:
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx257_6
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx257_2
.Lx257_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx257_2
.Lx257_1:
 call rt_faildescr@PLT
.Lx257_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain25_n147_β
 jmp xchain25_n150_α
 xchain25_n149_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 184]
 jmp qword ptr [rsp]
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "interpret/1"
# IR_SUSPEND yield+resume
 xchain25_n150_α:
 lea rax, [rip + xchain25_n150_β]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret$2F2_γ
 xchain25_n150_β:
 jmp xchain25_n149_β
proc_interpret$2F2_res:
add rsp, 8
pop rbp
proc_interpret$2F2_β:
jmp qword ptr [rbp + 5664]
proc_interpret$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_interpret$2F2_res]
push rax
mov rax, [rbp + 5784]
mov rbp, [rbp + 5800]
jmp rax
proc_interpret$2F2_ω:
mov rax, [rbp + 5792]
lea rsp, [rbp + 5808]
mov rbp, [rbp + 5800]
jmp rax
  .globl proc_is_built_in$2F1_α
proc_is_built_in$2F1_α:
#=======================================================================================================================
    .global proc_is_built_in$2F1_α
    .global proc_is_built_in$2F1_β
    .global proc_is_built_in$2F1_γ
    .global proc_is_built_in$2F1_ω
  sub rsp, 816
  mov [rsp + 792], rcx
  mov [rsp + 800], rdx
  mov [rsp + 808], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 744], rsp
  mov rdi, rsp
  mov esi, 720
  mov edx, 784
  call rt_jmp_frame_lexprep2@PLT
proc_is_built_in$2F1_α_body:
lea rax, [rip + xchain260_n4_β]
mov qword ptr [rbp + 720], rax
 xchain260_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_is_built_in$2F1_ω
 jmp xchain260_n1_α
 xchain260_n0_β:
 jmp proc_is_built_in$2F1_ω
# IR_VAR_REF
 xchain260_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain260_n2_α
# IR_LIT_STRING
 xchain260_n2_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain260_n3_α
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
 .string "true"
 xchain260_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 624]
 mov rsi, qword ptr [rip + .Lx265_2]
 jmp .Lx265_3
.Lx265_2:
 .quad .Lx265_2_s
.Lx265_2_s:
 .string "true"
.Lx265_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain260_n5_α
 jmp xchain260_n4_α
 xchain260_n3_β:
 jmp xchain260_n5_α
# IR_SUSPEND yield+resume
 xchain260_n4_α:
 lea rax, [rip + xchain260_n4_β]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_is_built_in$2F1_γ
 xchain260_n4_β:
 jmp xchain260_n5_α
 xchain260_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+576]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_is_built_in$2F1_ω
 jmp xchain260_n6_α
 xchain260_n5_β:
 jmp proc_is_built_in$2F1_ω
# IR_VAR_REF
 xchain260_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain260_n7_α
# IR_LIT_INTEGER
 xchain260_n7_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain260_n8_α
.Lx271_0:
 .quad 516
# IR_LIT_STRING
 xchain260_n8_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx272_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain260_n9_α
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
 .string "=<"
 xchain260_n9_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
# marshal arg2 = producer-box slot [zr+528] -> [zr+448]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 416]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain260_n11_α
 jmp xchain260_n10_α
 xchain260_n9_β:
 jmp xchain260_n11_α
# IR_VAR_REF
 xchain260_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain260_n12_α
 xchain260_n11_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_is_built_in$2F1_ω
 jmp proc_is_built_in$2F1_ω
 xchain260_n11_β:
 jmp proc_is_built_in$2F1_ω
# IR_LIT_STRING
 xchain260_n12_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx277_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain260_n13_α
.Lx277_0:
 .quad .Lx277_0_s
.Lx277_0_s:
 .string "=<"
# IR_VAR_REF
 xchain260_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 752]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain260_n14_α
# IR_VAR_REF
 xchain260_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 768]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain260_n15_α
 xchain260_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+304]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 312], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+320]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 328], rax
# marshal arg2 = producer-box slot [zr+256] -> [zr+336]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 304]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain260_n11_α
 jmp xchain260_n16_α
 xchain260_n15_β:
 jmp xchain260_n11_α
 xchain260_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+176]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 184], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 160]
 lea r8, [rbp + 160]
.Lx283_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx283_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx283_41
 cmp esi, 1
 jne .Lx283_55
 mov r8, rax
 jmp .Lx283_40
.Lx283_55:
 cmp esi, 2
 jne .Lx283_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx283_41
 mov r8, rax
 jmp .Lx283_40
.Lx283_56:
 cmp eax, 13
 jne .Lx283_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx283_41
 cmp rax, r8
 je .Lx283_41
 mov r8, rax
 jmp .Lx283_40
.Lx283_41:
 lea r9, [rbp + 176]
.Lx283_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx283_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx283_43
 cmp esi, 1
 jne .Lx283_57
 mov r9, rax
 jmp .Lx283_42
.Lx283_57:
 cmp esi, 2
 jne .Lx283_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx283_43
 mov r9, rax
 jmp .Lx283_42
.Lx283_58:
 cmp eax, 13
 jne .Lx283_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx283_43
 cmp rax, r9
 je .Lx283_43
 mov r9, rax
 jmp .Lx283_42
.Lx283_43:
 cmp r8, r9
 je .Lx283_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx283_44
 cmp eax, 99
 je .Lx283_44
 cmp eax, 13
 jne .Lx283_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx283_44
 jmp .Lx283_45
.Lx283_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx283_53
 cmp eax, 99
 je .Lx283_53
 cmp eax, 13
 jne .Lx283_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx283_53
 jmp .Lx283_46
.Lx283_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx283_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx283_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx283_51
.Lx283_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx283_47
 cmp eax, 99
 je .Lx283_47
 cmp eax, 13
 jne .Lx283_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx283_47
 jmp .Lx283_48
.Lx283_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx283_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx283_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx283_51
.Lx283_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx283_49
 cmp edx, 14
 je .Lx283_53
 jmp .Lx283_52
.Lx283_49:
 cmp edx, 14
 je .Lx283_52
 cmp ecx, 7
 je .Lx283_53
 cmp edx, 7
 je .Lx283_53
 cmp ecx, 6
 jne .Lx283_50
 cmp edx, 6
 jne .Lx283_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx283_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx283_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx283_51
 jmp .Lx283_52
.Lx283_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx283_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx283_53
.Lx283_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx283_54
.Lx283_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx283_54
.Lx283_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx283_54:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain260_n11_α
 jmp xchain260_n17_α
 xchain260_n16_β:
 jmp xchain260_n11_α
# IR_SUSPEND yield+resume
 xchain260_n17_α:
 lea rax, [rip + xchain260_n17_β]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_is_built_in$2F1_γ
 xchain260_n17_β:
 jmp xchain260_n11_α
proc_is_built_in$2F1_res:
add rsp, 8
pop rbp
proc_is_built_in$2F1_β:
jmp qword ptr [rbp + 720]
proc_is_built_in$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_is_built_in$2F1_res]
push rax
mov rax, [rbp + 792]
mov rbp, [rbp + 808]
jmp rax
proc_is_built_in$2F1_ω:
mov rax, [rbp + 800]
lea rsp, [rbp + 816]
mov rbp, [rbp + 808]
jmp rax
  .globl proc_meta_qsort$2F0_α
proc_meta_qsort$2F0_α:
#=======================================================================================================================
    .global proc_meta_qsort$2F0_α
    .global proc_meta_qsort$2F0_β
    .global proc_meta_qsort$2F0_γ
    .global proc_meta_qsort$2F0_ω
  sub rsp, 272
  mov [rsp + 248], rcx
  mov [rsp + 256], rdx
  mov [rsp + 264], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 232], rsp
  mov rdi, rsp
  mov esi, 208
  mov edx, 240
  call rt_jmp_frame_lexprep2@PLT
proc_meta_qsort$2F0_α_body:
lea rax, [rip + xchain286_n3_β]
mov qword ptr [rbp + 208], rax
 xchain286_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_meta_qsort$2F0_ω
 jmp xchain286_n1_α
 xchain286_n0_β:
 jmp proc_meta_qsort$2F0_ω
# IR_LIT_STRING
 xchain286_n1_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx288_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain286_n2_α
.Lx288_0:
 .quad .Lx288_0_s
.Lx288_0_s:
 .string "qsort"
 xchain286_n2_α:
 mov qword ptr [rbp + 144], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx290_20
 mov rax, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx290_21
.Lx290_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 call rt_arg_stage@PLT
.Lx290_21:
 mov rdi, qword ptr [rip + .Lx290_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx290_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx290_3]
 lea rdx, [rip + .Lx290_4]
 jmp rax
.Lx290_3:
 mov qword ptr [rbp + 152], rsp
 mov rax, qword ptr [rbp + 144]
 test rax, rax
 jne .Lx290_5
 mov qword ptr [rbp + 144], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx290_2
.Lx290_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx290_2
.Lx290_4:
 mov rax, qword ptr [rbp + 144]
 test rax, rax
 jne .Lx290_6
 mov qword ptr [rbp + 144], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx290_2
.Lx290_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx290_2
.Lx290_1:
 call rt_faildescr@PLT
.Lx290_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain286_n4_α
 jmp xchain286_n3_α
 xchain286_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 152]
 jmp qword ptr [rsp]
.Lx290_0:
 .quad .Lx290_0_s
.Lx290_0_s:
 .string "interpret/1"
# IR_SUSPEND yield+resume
 xchain286_n3_α:
 lea rax, [rip + xchain286_n3_β]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_meta_qsort$2F0_γ
 xchain286_n3_β:
 jmp xchain286_n2_β
 xchain286_n4_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_meta_qsort$2F0_ω
 jmp proc_meta_qsort$2F0_ω
 xchain286_n4_β:
 jmp proc_meta_qsort$2F0_ω
proc_meta_qsort$2F0_res:
add rsp, 8
pop rbp
proc_meta_qsort$2F0_β:
jmp qword ptr [rbp + 208]
proc_meta_qsort$2F0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_meta_qsort$2F0_res]
push rax
mov rax, [rbp + 248]
mov rbp, [rbp + 264]
jmp rax
proc_meta_qsort$2F0_ω:
mov rax, [rbp + 256]
lea rsp, [rbp + 272]
mov rbp, [rbp + 264]
jmp rax
  .globl proc_define$2F2_α
proc_define$2F2_α:
#=======================================================================================================================
    .global proc_define$2F2_α
    .global proc_define$2F2_β
    .global proc_define$2F2_γ
    .global proc_define$2F2_ω
  sub rsp, 13904
  mov [rsp + 13880], rcx
  mov [rsp + 13888], rdx
  mov [rsp + 13896], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 13752], rsp
  mov rdi, rsp
  mov esi, 13728
  mov edx, 13872
  call rt_jmp_frame_lexprep2@PLT
proc_define$2F2_α_body:
lea rax, [rip + xchain294_n78_β]
mov qword ptr [rbp + 13728], rax
 xchain294_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n1_α
 xchain294_n0_β:
 jmp proc_define$2F2_ω
# IR_VAR_REF
 xchain294_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 13664], rax
 mov qword ptr [rbp + 13672], rdx
 jmp xchain294_n2_α
# IR_LIT_STRING
 xchain294_n2_α:
 mov qword ptr [rbp + 13696], 1
 mov rax, qword ptr [rip + .Lx298_0]
 mov qword ptr [rbp + 13704], rax
 jmp xchain294_n3_α
.Lx298_0:
 .quad .Lx298_0_s
.Lx298_0_s:
 .string "qsort"
 xchain294_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13664] -> [zr+13632]
 mov rax, qword ptr [rbp + 13664]
 mov qword ptr [rbp + 13632], rax
 mov rax, qword ptr [rbp + 13672]
 mov qword ptr [rbp + 13640], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 13632]
 mov rsi, qword ptr [rip + .Lx299_2]
 jmp .Lx299_3
.Lx299_2:
 .quad .Lx299_2_s
.Lx299_2_s:
 .string "qsort"
.Lx299_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 13616], rax
 mov qword ptr [rbp + 13624], rdx
 cmp eax, 99
 je xchain294_n5_α
 jmp xchain294_n4_α
 xchain294_n3_β:
 jmp xchain294_n5_α
# IR_VAR_REF
 xchain294_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6160], rax
 mov qword ptr [rbp + 6168], rdx
 jmp xchain294_n6_α
 xchain294_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6080]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6080], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6080]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6064], rax
 mov qword ptr [rbp + 6072], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n7_α
 xchain294_n5_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n6_α:
 mov qword ptr [rbp + 13584], 1
 mov rax, qword ptr [rip + .Lx303_0]
 mov qword ptr [rbp + 13592], rax
 jmp xchain294_n8_α
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
 .string "qsort"
# IR_VAR_REF
 xchain294_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5968], rax
 mov qword ptr [rbp + 5976], rdx
 jmp xchain294_n9_α
# IR_LIT_STRING
 xchain294_n8_α:
 mov qword ptr [rbp + 13392], 1
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [rbp + 13400], rax
 jmp xchain294_n10_α
.Lx306_0:
 .quad .Lx306_0_s
.Lx306_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n9_α:
 mov qword ptr [rbp + 6000], 6
 mov rax, qword ptr [rip + .Lx307_0]
 mov qword ptr [rbp + 6008], rax
 jmp xchain294_n11_α
.Lx307_0:
 .quad 772
# IR_LIT_INTEGER
 xchain294_n10_α:
 mov qword ptr [rbp + 13280], 6
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [rbp + 13288], rax
 jmp xchain294_n12_α
.Lx308_0:
 .quad 27
# IR_LIT_STRING
 xchain294_n11_α:
 mov qword ptr [rbp + 6032], 1
 mov rax, qword ptr [rip + .Lx309_0]
 mov qword ptr [rbp + 6040], rax
 jmp xchain294_n13_α
.Lx309_0:
 .quad .Lx309_0_s
.Lx309_0_s:
 .string "qsort"
# IR_LIT_STRING
 xchain294_n12_α:
 mov qword ptr [rbp + 13248], 1
 mov rax, qword ptr [rip + .Lx310_0]
 mov qword ptr [rbp + 13256], rax
 jmp xchain294_n14_α
.Lx310_0:
 .quad .Lx310_0_s
.Lx310_0_s:
 .string "."
 xchain294_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5968] -> [zr+5920]
 mov rax, qword ptr [rbp + 5968]
 mov qword ptr [rbp + 5920], rax
 mov rax, qword ptr [rbp + 5976]
 mov qword ptr [rbp + 5928], rax
# marshal arg1 = producer-box slot [zr+6000] -> [zr+5936]
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 5936], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 5944], rax
# marshal arg2 = producer-box slot [zr+6032] -> [zr+5952]
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 5952], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 5960], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 5920]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 5904], rax
 mov qword ptr [rbp + 5912], rdx
 cmp eax, 99
 je xchain294_n16_α
 jmp xchain294_n15_α
 xchain294_n13_β:
 jmp xchain294_n16_α
# IR_LIT_INTEGER
 xchain294_n14_α:
 mov qword ptr [rbp + 13136], 6
 mov rax, qword ptr [rip + .Lx312_0]
 mov qword ptr [rbp + 13144], rax
 jmp xchain294_n17_α
.Lx312_0:
 .quad 74
# IR_VAR_REF
 xchain294_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5504], rax
 mov qword ptr [rbp + 5512], rdx
 jmp xchain294_n18_α
# IR_VAR_REF
 xchain294_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 jmp xchain294_n19_α
# IR_LIT_STRING
 xchain294_n17_α:
 mov qword ptr [rbp + 13104], 1
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [rbp + 13112], rax
 jmp xchain294_n20_α
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string "."
# IR_LIT_STRING
 xchain294_n18_α:
 mov qword ptr [rbp + 5872], 1
 mov rax, qword ptr [rip + .Lx318_0]
 mov qword ptr [rbp + 5880], rax
 jmp xchain294_n21_α
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "qsort"
# IR_LIT_INTEGER
 xchain294_n19_α:
 mov qword ptr [rbp + 4176], 6
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [rbp + 4184], rax
 jmp xchain294_n22_α
.Lx319_0:
 .quad 772
# IR_LIT_INTEGER
 xchain294_n20_α:
 mov qword ptr [rbp + 12992], 6
 mov rax, qword ptr [rip + .Lx320_0]
 mov qword ptr [rbp + 13000], rax
 jmp xchain294_n23_α
.Lx320_0:
 .quad 17
# IR_LIT_STRING
 xchain294_n21_α:
 mov qword ptr [rbp + 5680], 1
 mov rax, qword ptr [rip + .Lx321_0]
 mov qword ptr [rbp + 5688], rax
 jmp xchain294_n24_α
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
 .string "."
# IR_LIT_STRING
 xchain294_n22_α:
 mov qword ptr [rbp + 4208], 1
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [rbp + 4216], rax
 jmp xchain294_n25_α
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "qsort"
# IR_LIT_STRING
 xchain294_n23_α:
 mov qword ptr [rbp + 12960], 1
 mov rax, qword ptr [rip + .Lx323_0]
 mov qword ptr [rbp + 12968], rax
 jmp xchain294_n26_α
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string "."
# IR_VAR_REF
 xchain294_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13760]
 mov qword ptr [rbp + 5568], rax
 mov qword ptr [rbp + 5576], rdx
 jmp xchain294_n27_α
 xchain294_n25_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4144] -> [zr+4096]
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 4096], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 4104], rax
# marshal arg1 = producer-box slot [zr+4176] -> [zr+4112]
 mov rax, qword ptr [rbp + 4176]
 mov qword ptr [rbp + 4112], rax
 mov rax, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 4120], rax
# marshal arg2 = producer-box slot [zr+4208] -> [zr+4128]
 mov rax, qword ptr [rbp + 4208]
 mov qword ptr [rbp + 4128], rax
 mov rax, qword ptr [rbp + 4216]
 mov qword ptr [rbp + 4136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 4096]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 cmp eax, 99
 je xchain294_n29_α
 jmp xchain294_n28_α
 xchain294_n25_β:
 jmp xchain294_n29_α
# IR_LIT_INTEGER
 xchain294_n26_α:
 mov qword ptr [rbp + 12848], 6
 mov rax, qword ptr [rip + .Lx327_0]
 mov qword ptr [rbp + 12856], rax
 jmp xchain294_n30_α
.Lx327_0:
 .quad 33
# IR_VAR_REF
 xchain294_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13776]
 mov qword ptr [rbp + 5536], rax
 mov qword ptr [rbp + 5544], rdx
 jmp xchain294_n31_α
# IR_VAR_REF
 xchain294_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 jmp xchain294_n32_α
# IR_VAR_REF
 xchain294_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3520], rax
 mov qword ptr [rbp + 3528], rdx
 jmp xchain294_n33_α
# IR_LIT_STRING
 xchain294_n30_α:
 mov qword ptr [rbp + 12816], 1
 mov rax, qword ptr [rip + .Lx334_0]
 mov qword ptr [rbp + 12824], rax
 jmp xchain294_n34_α
.Lx334_0:
 .quad .Lx334_0_s
.Lx334_0_s:
 .string "."
 xchain294_n31_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5680] -> [zr+5616]
 mov rax, qword ptr [rbp + 5680]
 mov qword ptr [rbp + 5616], rax
 mov rax, qword ptr [rbp + 5688]
 mov qword ptr [rbp + 5624], rax
# marshal arg1 = producer-box slot [zr+5568] -> [zr+5632]
 mov rax, qword ptr [rbp + 5568]
 mov qword ptr [rbp + 5632], rax
 mov rax, qword ptr [rbp + 5576]
 mov qword ptr [rbp + 5640], rax
# marshal arg2 = producer-box slot [zr+5536] -> [zr+5648]
 mov rax, qword ptr [rbp + 5536]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5544]
 mov qword ptr [rbp + 5656], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5616]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n35_α
 xchain294_n31_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n32_α:
 mov qword ptr [rbp + 4048], 1
 mov rax, qword ptr [rip + .Lx336_0]
 mov qword ptr [rbp + 4056], rax
 jmp xchain294_n36_α
.Lx336_0:
 .quad .Lx336_0_s
.Lx336_0_s:
 .string "qsort"
# IR_LIT_INTEGER
 xchain294_n33_α:
 mov qword ptr [rbp + 3552], 6
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain294_n37_α
.Lx337_0:
 .quad 1028
# IR_LIT_INTEGER
 xchain294_n34_α:
 mov qword ptr [rbp + 12704], 6
 mov rax, qword ptr [rip + .Lx338_0]
 mov qword ptr [rbp + 12712], rax
 jmp xchain294_n38_α
.Lx338_0:
 .quad 94
# IR_VAR_REF
 xchain294_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13792]
 mov qword ptr [rbp + 5712], rax
 mov qword ptr [rbp + 5720], rdx
 jmp xchain294_n39_α
# IR_LIT_STRING
 xchain294_n36_α:
 mov qword ptr [rbp + 3856], 1
 mov rax, qword ptr [rip + .Lx341_0]
 mov qword ptr [rbp + 3864], rax
 jmp xchain294_n40_α
.Lx341_0:
 .quad .Lx341_0_s
.Lx341_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain294_n37_α:
 mov qword ptr [rbp + 3584], 1
 mov rax, qword ptr [rip + .Lx342_0]
 mov qword ptr [rbp + 3592], rax
 jmp xchain294_n41_α
.Lx342_0:
 .quad .Lx342_0_s
.Lx342_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain294_n38_α:
 mov qword ptr [rbp + 12672], 1
 mov rax, qword ptr [rip + .Lx343_0]
 mov qword ptr [rbp + 12680], rax
 jmp xchain294_n42_α
.Lx343_0:
 .quad .Lx343_0_s
.Lx343_0_s:
 .string "."
# IR_VAR_REF
 xchain294_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13808]
 mov qword ptr [rbp + 5744], rax
 mov qword ptr [rbp + 5752], rdx
 jmp xchain294_n43_α
# IR_VAR_REF
 xchain294_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13760]
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 jmp xchain294_n44_α
 xchain294_n41_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3520] -> [zr+3472]
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 3480], rax
# marshal arg1 = producer-box slot [zr+3552] -> [zr+3488]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3488], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3496], rax
# marshal arg2 = producer-box slot [zr+3584] -> [zr+3504]
 mov rax, qword ptr [rbp + 3584]
 mov qword ptr [rbp + 3504], rax
 mov rax, qword ptr [rbp + 3592]
 mov qword ptr [rbp + 3512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 3472]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 cmp eax, 99
 je xchain294_n46_α
 jmp xchain294_n45_α
 xchain294_n41_β:
 jmp xchain294_n46_α
# IR_LIT_INTEGER
 xchain294_n42_α:
 mov qword ptr [rbp + 12560], 6
 mov rax, qword ptr [rip + .Lx349_0]
 mov qword ptr [rbp + 12568], rax
 jmp xchain294_n47_α
.Lx349_0:
 .quad 18
 xchain294_n43_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5872] -> [zr+5792]
 mov rax, qword ptr [rbp + 5872]
 mov qword ptr [rbp + 5792], rax
 mov rax, qword ptr [rbp + 5880]
 mov qword ptr [rbp + 5800], rax
# marshal arg1 = producer-box slot [zr+5600] -> [zr+5808]
 mov rax, qword ptr [rbp + 5600]
 mov qword ptr [rbp + 5808], rax
 mov rax, qword ptr [rbp + 5608]
 mov qword ptr [rbp + 5816], rax
# marshal arg2 = producer-box slot [zr+5712] -> [zr+5824]
 mov rax, qword ptr [rbp + 5712]
 mov qword ptr [rbp + 5824], rax
 mov rax, qword ptr [rbp + 5720]
 mov qword ptr [rbp + 5832], rax
# marshal arg3 = producer-box slot [zr+5744] -> [zr+5840]
 mov rax, qword ptr [rbp + 5744]
 mov qword ptr [rbp + 5840], rax
 mov rax, qword ptr [rbp + 5752]
 mov qword ptr [rbp + 5848], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5792]
 mov esi, 4
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5776], rax
 mov qword ptr [rbp + 5784], rdx
 cmp eax, 99
 je xchain294_n49_α
 jmp xchain294_n48_α
 xchain294_n43_β:
 jmp xchain294_n49_α
# IR_VAR_REF
 xchain294_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13760]
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain294_n50_α
# IR_VAR_REF
 xchain294_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 jmp xchain294_n51_α
# IR_VAR_REF
 xchain294_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain294_n52_α
# IR_LIT_STRING
 xchain294_n47_α:
 mov qword ptr [rbp + 12528], 1
 mov rax, qword ptr [rip + .Lx357_0]
 mov qword ptr [rbp + 12536], rax
 jmp xchain294_n53_α
.Lx357_0:
 .quad .Lx357_0_s
.Lx357_0_s:
 .string "."
 xchain294_n48_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5504] -> [zr+5472]
 mov rax, qword ptr [rbp + 5504]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 5512]
 mov qword ptr [rbp + 5480], rax
# marshal arg1 = producer-box slot [zr+5776] -> [zr+5488]
 mov rax, qword ptr [rbp + 5776]
 mov qword ptr [rbp + 5488], rax
 mov rax, qword ptr [rbp + 5784]
 mov qword ptr [rbp + 5496], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 5472]
 lea r8, [rbp + 5472]
.Lx358_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx358_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx358_41
 cmp esi, 1
 jne .Lx358_55
 mov r8, rax
 jmp .Lx358_40
.Lx358_55:
 cmp esi, 2
 jne .Lx358_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx358_41
 mov r8, rax
 jmp .Lx358_40
.Lx358_56:
 cmp eax, 13
 jne .Lx358_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx358_41
 cmp rax, r8
 je .Lx358_41
 mov r8, rax
 jmp .Lx358_40
.Lx358_41:
 lea r9, [rbp + 5488]
.Lx358_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx358_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx358_43
 cmp esi, 1
 jne .Lx358_57
 mov r9, rax
 jmp .Lx358_42
.Lx358_57:
 cmp esi, 2
 jne .Lx358_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx358_43
 mov r9, rax
 jmp .Lx358_42
.Lx358_58:
 cmp eax, 13
 jne .Lx358_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx358_43
 cmp rax, r9
 je .Lx358_43
 mov r9, rax
 jmp .Lx358_42
.Lx358_43:
 cmp r8, r9
 je .Lx358_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx358_44
 cmp eax, 99
 je .Lx358_44
 cmp eax, 13
 jne .Lx358_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx358_44
 jmp .Lx358_45
.Lx358_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx358_53
 cmp eax, 99
 je .Lx358_53
 cmp eax, 13
 jne .Lx358_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx358_53
 jmp .Lx358_46
.Lx358_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx358_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx358_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx358_51
.Lx358_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx358_47
 cmp eax, 99
 je .Lx358_47
 cmp eax, 13
 jne .Lx358_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx358_47
 jmp .Lx358_48
.Lx358_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx358_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx358_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx358_51
.Lx358_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx358_49
 cmp edx, 14
 je .Lx358_53
 jmp .Lx358_52
.Lx358_49:
 cmp edx, 14
 je .Lx358_52
 cmp ecx, 7
 je .Lx358_53
 cmp edx, 7
 je .Lx358_53
 cmp ecx, 6
 jne .Lx358_50
 cmp edx, 6
 jne .Lx358_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx358_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx358_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx358_51
 jmp .Lx358_52
.Lx358_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx358_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx358_53
.Lx358_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx358_54
.Lx358_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx358_54
.Lx358_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx358_54:
 mov qword ptr [rbp + 5456], rax
 mov qword ptr [rbp + 5464], rdx
 cmp eax, 99
 je xchain294_n49_α
 jmp xchain294_n54_α
 xchain294_n48_β:
 jmp xchain294_n49_α
 xchain294_n49_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4256]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4256]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n16_α
 xchain294_n49_β:
 jmp proc_define$2F2_ω
 xchain294_n50_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4048] -> [zr+3968]
 mov rax, qword ptr [rbp + 4048]
 mov qword ptr [rbp + 3968], rax
 mov rax, qword ptr [rbp + 4056]
 mov qword ptr [rbp + 3976], rax
# marshal arg1 = producer-box slot [zr+3856] -> [zr+3984]
 mov rax, qword ptr [rbp + 3856]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 3864]
 mov qword ptr [rbp + 3992], rax
# marshal arg2 = producer-box slot [zr+3888] -> [zr+4000]
 mov rax, qword ptr [rbp + 3888]
 mov qword ptr [rbp + 4000], rax
 mov rax, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 4008], rax
# marshal arg3 = producer-box slot [zr+3920] -> [zr+4016]
 mov rax, qword ptr [rbp + 3920]
 mov qword ptr [rbp + 4016], rax
 mov rax, qword ptr [rbp + 3928]
 mov qword ptr [rbp + 4024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3968]
 mov esi, 4
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 cmp eax, 99
 je xchain294_n56_α
 jmp xchain294_n55_α
 xchain294_n50_β:
 jmp xchain294_n56_α
# IR_LIT_STRING
 xchain294_n51_α:
 mov qword ptr [rbp + 3424], 1
 mov rax, qword ptr [rip + .Lx361_0]
 mov qword ptr [rbp + 3432], rax
 jmp xchain294_n57_α
.Lx361_0:
 .quad .Lx361_0_s
.Lx361_0_s:
 .string "partition"
# IR_LIT_INTEGER
 xchain294_n52_α:
 mov qword ptr [rbp + 1920], 6
 mov rax, qword ptr [rip + .Lx362_0]
 mov qword ptr [rbp + 1928], rax
 jmp xchain294_n58_α
.Lx362_0:
 .quad 1028
# IR_LIT_INTEGER
 xchain294_n53_α:
 mov qword ptr [rbp + 12416], 6
 mov rax, qword ptr [rip + .Lx363_0]
 mov qword ptr [rbp + 12424], rax
 jmp xchain294_n59_α
.Lx363_0:
 .quad 46
# IR_VAR_REF
 xchain294_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain294_n60_α
 xchain294_n55_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3824] -> [zr+3792]
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 3792], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 3800], rax
# marshal arg1 = producer-box slot [zr+3952] -> [zr+3808]
 mov rax, qword ptr [rbp + 3952]
 mov qword ptr [rbp + 3808], rax
 mov rax, qword ptr [rbp + 3960]
 mov qword ptr [rbp + 3816], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 3792]
 lea r8, [rbp + 3792]
.Lx366_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx366_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx366_41
 cmp esi, 1
 jne .Lx366_55
 mov r8, rax
 jmp .Lx366_40
.Lx366_55:
 cmp esi, 2
 jne .Lx366_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx366_41
 mov r8, rax
 jmp .Lx366_40
.Lx366_56:
 cmp eax, 13
 jne .Lx366_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx366_41
 cmp rax, r8
 je .Lx366_41
 mov r8, rax
 jmp .Lx366_40
.Lx366_41:
 lea r9, [rbp + 3808]
.Lx366_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx366_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx366_43
 cmp esi, 1
 jne .Lx366_57
 mov r9, rax
 jmp .Lx366_42
.Lx366_57:
 cmp esi, 2
 jne .Lx366_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx366_43
 mov r9, rax
 jmp .Lx366_42
.Lx366_58:
 cmp eax, 13
 jne .Lx366_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx366_43
 cmp rax, r9
 je .Lx366_43
 mov r9, rax
 jmp .Lx366_42
.Lx366_43:
 cmp r8, r9
 je .Lx366_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx366_44
 cmp eax, 99
 je .Lx366_44
 cmp eax, 13
 jne .Lx366_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx366_44
 jmp .Lx366_45
.Lx366_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx366_53
 cmp eax, 99
 je .Lx366_53
 cmp eax, 13
 jne .Lx366_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx366_53
 jmp .Lx366_46
.Lx366_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx366_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx366_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx366_51
.Lx366_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx366_47
 cmp eax, 99
 je .Lx366_47
 cmp eax, 13
 jne .Lx366_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx366_47
 jmp .Lx366_48
.Lx366_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx366_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx366_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx366_51
.Lx366_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx366_49
 cmp edx, 14
 je .Lx366_53
 jmp .Lx366_52
.Lx366_49:
 cmp edx, 14
 je .Lx366_52
 cmp ecx, 7
 je .Lx366_53
 cmp edx, 7
 je .Lx366_53
 cmp ecx, 6
 jne .Lx366_50
 cmp edx, 6
 jne .Lx366_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx366_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx366_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx366_51
 jmp .Lx366_52
.Lx366_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx366_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx366_53
.Lx366_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx366_54
.Lx366_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx366_54
.Lx366_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx366_54:
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 cmp eax, 99
 je xchain294_n56_α
 jmp xchain294_n61_α
 xchain294_n55_β:
 jmp xchain294_n56_α
 xchain294_n56_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3632]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3632], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3640], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3632]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n29_α
 xchain294_n56_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n57_α:
 mov qword ptr [rbp + 3040], 1
 mov rax, qword ptr [rip + .Lx368_0]
 mov qword ptr [rbp + 3048], rax
 jmp xchain294_n62_α
.Lx368_0:
 .quad .Lx368_0_s
.Lx368_0_s:
 .string "."
# IR_LIT_STRING
 xchain294_n58_α:
 mov qword ptr [rbp + 1952], 1
 mov rax, qword ptr [rip + .Lx369_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain294_n63_α
.Lx369_0:
 .quad .Lx369_0_s
.Lx369_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain294_n59_α:
 mov qword ptr [rbp + 12384], 1
 mov rax, qword ptr [rip + .Lx370_0]
 mov qword ptr [rbp + 12392], rax
 jmp xchain294_n64_α
.Lx370_0:
 .quad .Lx370_0_s
.Lx370_0_s:
 .string "."
# IR_LIT_STRING
 xchain294_n60_α:
 mov qword ptr [rbp + 5424], 1
 mov rax, qword ptr [rip + .Lx371_0]
 mov qword ptr [rbp + 5432], rax
 jmp xchain294_n65_α
.Lx371_0:
 .quad .Lx371_0_s
.Lx371_0_s:
 .string ","
# IR_VAR_REF
 xchain294_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 jmp xchain294_n66_α
# IR_VAR_REF
 xchain294_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13760]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain294_n67_α
 xchain294_n63_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1888] -> [zr+1840]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1848], rax
# marshal arg1 = producer-box slot [zr+1920] -> [zr+1856]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1864], rax
# marshal arg2 = producer-box slot [zr+1952] -> [zr+1872]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1840]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 cmp eax, 99
 je xchain294_n69_α
 jmp xchain294_n68_α
 xchain294_n63_β:
 jmp xchain294_n69_α
# IR_LIT_INTEGER
 xchain294_n64_α:
 mov qword ptr [rbp + 12272], 6
 mov rax, qword ptr [rip + .Lx377_0]
 mov qword ptr [rbp + 12280], rax
 jmp xchain294_n70_α
.Lx377_0:
 .quad 83
# IR_LIT_STRING
 xchain294_n65_α:
 mov qword ptr [rbp + 4608], 1
 mov rax, qword ptr [rip + .Lx378_0]
 mov qword ptr [rbp + 4616], rax
 jmp xchain294_n71_α
.Lx378_0:
 .quad .Lx378_0_s
.Lx378_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain294_n66_α:
 mov qword ptr [rbp + 3744], 1
 mov rax, qword ptr [rip + .Lx379_0]
 mov qword ptr [rbp + 3752], rax
 jmp xchain294_n72_α
.Lx379_0:
 .quad .Lx379_0_s
.Lx379_0_s:
 .string "true"
# IR_VAR_REF
 xchain294_n67_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13776]
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain294_n73_α
# IR_VAR_REF
 xchain294_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain294_n74_α
# IR_VAR_REF
 xchain294_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain294_n75_α
# IR_LIT_STRING
 xchain294_n70_α:
 mov qword ptr [rbp + 12240], 1
 mov rax, qword ptr [rip + .Lx386_0]
 mov qword ptr [rbp + 12248], rax
 jmp xchain294_n76_α
.Lx386_0:
 .quad .Lx386_0_s
.Lx386_0_s:
 .string "."
# IR_VAR_REF
 xchain294_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13776]
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 jmp xchain294_n77_α
 xchain294_n72_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3712] -> [zr+3680]
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 3680], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 3688], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3680]
 mov rsi, qword ptr [rip + .Lx389_2]
 jmp .Lx389_3
.Lx389_2:
 .quad .Lx389_2_s
.Lx389_2_s:
 .string "true"
.Lx389_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 cmp eax, 99
 je xchain294_n56_α
 jmp xchain294_n78_α
 xchain294_n72_β:
 jmp xchain294_n56_α
 xchain294_n73_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3040] -> [zr+2976]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 2984], rax
# marshal arg1 = producer-box slot [zr+2928] -> [zr+2992]
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 3000], rax
# marshal arg2 = producer-box slot [zr+2896] -> [zr+3008]
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 3016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2976]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n79_α
 xchain294_n73_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n74_α:
 mov qword ptr [rbp + 1792], 1
 mov rax, qword ptr [rip + .Lx391_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain294_n80_α
.Lx391_0:
 .quad .Lx391_0_s
.Lx391_0_s:
 .string "partition"
# IR_LIT_INTEGER
 xchain294_n75_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx392_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain294_n81_α
.Lx392_0:
 .quad 1028
# IR_LIT_INTEGER
 xchain294_n76_α:
 mov qword ptr [rbp + 12128], 6
 mov rax, qword ptr [rip + .Lx393_0]
 mov qword ptr [rbp + 12136], rax
 jmp xchain294_n82_α
.Lx393_0:
 .quad 65
# IR_VAR_REF
 xchain294_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13760]
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain294_n83_α
# IR_SUSPEND yield+resume
 xchain294_n78_α:
 lea rax, [rip + xchain294_n78_β]
 mov qword ptr [rbp + 13728], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2F2_γ
 xchain294_n78_β:
 jmp xchain294_n56_α
# IR_VAR_REF
 xchain294_n79_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13792]
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain294_n84_α
# IR_LIT_STRING
 xchain294_n80_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx400_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain294_n85_α
.Lx400_0:
 .quad .Lx400_0_s
.Lx400_0_s:
 .string "."
# IR_LIT_STRING
 xchain294_n81_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain294_n86_α
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "partition"
# IR_LIT_STRING
 xchain294_n82_α:
 mov qword ptr [rbp + 12096], 1
 mov rax, qword ptr [rip + .Lx402_0]
 mov qword ptr [rbp + 12104], rax
 jmp xchain294_n87_α
.Lx402_0:
 .quad .Lx402_0_s
.Lx402_0_s:
 .string "."
# IR_VAR_REF
 xchain294_n83_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13824]
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 jmp xchain294_n88_α
# IR_LIT_STRING
 xchain294_n84_α:
 mov qword ptr [rbp + 3248], 1
 mov rax, qword ptr [rip + .Lx405_0]
 mov qword ptr [rbp + 3256], rax
 jmp xchain294_n89_α
.Lx405_0:
 .quad .Lx405_0_s
.Lx405_0_s:
 .string "."
# IR_VAR_REF
 xchain294_n85_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13760]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain294_n90_α
 xchain294_n86_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+656]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 664], rax
# marshal arg2 = producer-box slot [zr+752] -> [zr+672]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 640]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain294_n92_α
 jmp xchain294_n91_α
 xchain294_n86_β:
 jmp xchain294_n92_α
# IR_LIT_INTEGER
 xchain294_n87_α:
 mov qword ptr [rbp + 11984], 6
 mov rax, qword ptr [rip + .Lx409_0]
 mov qword ptr [rbp + 11992], rax
 jmp xchain294_n93_α
.Lx409_0:
 .quad 2
# IR_VAR_REF
 xchain294_n88_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13840]
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 jmp xchain294_n94_α
# IR_VAR_REF
 xchain294_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13760]
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain294_n95_α
# IR_VAR_REF
 xchain294_n90_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13776]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain294_n96_α
# IR_VAR_REF
 xchain294_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain294_n97_α
 xchain294_n92_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp proc_define$2F2_ω
 xchain294_n92_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n93_α:
 mov qword ptr [rbp + 11952], 1
 mov rax, qword ptr [rip + .Lx419_0]
 mov qword ptr [rbp + 11960], rax
 jmp xchain294_n98_α
.Lx419_0:
 .quad .Lx419_0_s
.Lx419_0_s:
 .string "."
 xchain294_n94_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4608] -> [zr+4512]
 mov rax, qword ptr [rbp + 4608]
 mov qword ptr [rbp + 4512], rax
 mov rax, qword ptr [rbp + 4616]
 mov qword ptr [rbp + 4520], rax
# marshal arg1 = producer-box slot [zr+4368] -> [zr+4528]
 mov rax, qword ptr [rbp + 4368]
 mov qword ptr [rbp + 4528], rax
 mov rax, qword ptr [rbp + 4376]
 mov qword ptr [rbp + 4536], rax
# marshal arg2 = producer-box slot [zr+4400] -> [zr+4544]
 mov rax, qword ptr [rbp + 4400]
 mov qword ptr [rbp + 4544], rax
 mov rax, qword ptr [rbp + 4408]
 mov qword ptr [rbp + 4552], rax
# marshal arg3 = producer-box slot [zr+4432] -> [zr+4560]
 mov rax, qword ptr [rbp + 4432]
 mov qword ptr [rbp + 4560], rax
 mov rax, qword ptr [rbp + 4440]
 mov qword ptr [rbp + 4568], rax
# marshal arg4 = producer-box slot [zr+4464] -> [zr+4576]
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 4576], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 4584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4512]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4496], rax
 mov qword ptr [rbp + 4504], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n99_α
 xchain294_n94_β:
 jmp proc_define$2F2_ω
# IR_VAR_REF
 xchain294_n95_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13808]
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain294_n100_α
 xchain294_n96_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1344]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1360]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1368], rax
# marshal arg2 = producer-box slot [zr+1264] -> [zr+1376]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n101_α
 xchain294_n96_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n97_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx424_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain294_n102_α
.Lx424_0:
 .quad .Lx424_0_s
.Lx424_0_s:
 .string "partition"
# IR_LIT_INTEGER
 xchain294_n98_α:
 mov qword ptr [rbp + 11840], 6
 mov rax, qword ptr [rip + .Lx425_0]
 mov qword ptr [rbp + 11848], rax
 jmp xchain294_n103_α
.Lx425_0:
 .quad 32
# IR_LIT_STRING
 xchain294_n99_α:
 mov qword ptr [rbp + 5312], 1
 mov rax, qword ptr [rip + .Lx426_0]
 mov qword ptr [rbp + 5320], rax
 jmp xchain294_n104_α
.Lx426_0:
 .quad .Lx426_0_s
.Lx426_0_s:
 .string ","
 xchain294_n100_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3248] -> [zr+3184]
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3192], rax
# marshal arg1 = producer-box slot [zr+3136] -> [zr+3200]
 mov rax, qword ptr [rbp + 3136]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 3208], rax
# marshal arg2 = producer-box slot [zr+3104] -> [zr+3216]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3224], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3184]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n105_α
 xchain294_n100_β:
 jmp proc_define$2F2_ω
# IR_VAR_REF
 xchain294_n101_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13792]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain294_n106_α
# IR_LIT_STRING
 xchain294_n102_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx430_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain294_n107_α
.Lx430_0:
 .quad .Lx430_0_s
.Lx430_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain294_n103_α:
 mov qword ptr [rbp + 11808], 1
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [rbp + 11816], rax
 jmp xchain294_n108_α
.Lx431_0:
 .quad .Lx431_0_s
.Lx431_0_s:
 .string "."
# IR_LIT_STRING
 xchain294_n104_α:
 mov qword ptr [rbp + 4832], 1
 mov rax, qword ptr [rip + .Lx432_0]
 mov qword ptr [rbp + 4840], rax
 jmp xchain294_n109_α
.Lx432_0:
 .quad .Lx432_0_s
.Lx432_0_s:
 .string "qsort"
# IR_VAR_REF
 xchain294_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13824]
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain294_n110_α
# IR_VAR_REF
 xchain294_n106_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13808]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain294_n111_α
# IR_VAR_REF
 xchain294_n107_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13760]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain294_n112_α
# IR_LIT_INTEGER
 xchain294_n108_α:
 mov qword ptr [rbp + 11696], 6
 mov rax, qword ptr [rip + .Lx439_0]
 mov qword ptr [rbp + 11704], rax
 jmp xchain294_n113_α
.Lx439_0:
 .quad 53
# IR_VAR_REF
 xchain294_n109_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13840]
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 jmp xchain294_n114_α
 xchain294_n110_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3424] -> [zr+3328]
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3336], rax
# marshal arg1 = producer-box slot [zr+2960] -> [zr+3344]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 3344], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 3352], rax
# marshal arg2 = producer-box slot [zr+3072] -> [zr+3360]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3368], rax
# marshal arg3 = producer-box slot [zr+3168] -> [zr+3376]
 mov rax, qword ptr [rbp + 3168]
 mov qword ptr [rbp + 3376], rax
 mov rax, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 3384], rax
# marshal arg4 = producer-box slot [zr+3280] -> [zr+3392]
 mov rax, qword ptr [rbp + 3280]
 mov qword ptr [rbp + 3392], rax
 mov rax, qword ptr [rbp + 3288]
 mov qword ptr [rbp + 3400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3328]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 cmp eax, 99
 je xchain294_n116_α
 jmp xchain294_n115_α
 xchain294_n110_β:
 jmp xchain294_n116_α
# IR_LIT_STRING
 xchain294_n111_α:
 mov qword ptr [rbp + 1648], 1
 mov rax, qword ptr [rip + .Lx443_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain294_n117_α
.Lx443_0:
 .quad .Lx443_0_s
.Lx443_0_s:
 .string "."
# IR_LIT_STRING
 xchain294_n112_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx444_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain294_n118_α
.Lx444_0:
 .quad .Lx444_0_s
.Lx444_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain294_n113_α:
 mov qword ptr [rbp + 11664], 1
 mov rax, qword ptr [rip + .Lx445_0]
 mov qword ptr [rbp + 11672], rax
 jmp xchain294_n119_α
.Lx445_0:
 .quad .Lx445_0_s
.Lx445_0_s:
 .string "."
# IR_VAR_REF
 xchain294_n114_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13856]
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 jmp xchain294_n120_α
 xchain294_n115_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2864] -> [zr+2832]
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2840], rax
# marshal arg1 = producer-box slot [zr+3312] -> [zr+2848]
 mov rax, qword ptr [rbp + 3312]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 3320]
 mov qword ptr [rbp + 2856], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2832]
 lea r8, [rbp + 2832]
.Lx448_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx448_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx448_41
 cmp esi, 1
 jne .Lx448_55
 mov r8, rax
 jmp .Lx448_40
.Lx448_55:
 cmp esi, 2
 jne .Lx448_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx448_41
 mov r8, rax
 jmp .Lx448_40
.Lx448_56:
 cmp eax, 13
 jne .Lx448_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx448_41
 cmp rax, r8
 je .Lx448_41
 mov r8, rax
 jmp .Lx448_40
.Lx448_41:
 lea r9, [rbp + 2848]
.Lx448_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx448_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx448_43
 cmp esi, 1
 jne .Lx448_57
 mov r9, rax
 jmp .Lx448_42
.Lx448_57:
 cmp esi, 2
 jne .Lx448_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx448_43
 mov r9, rax
 jmp .Lx448_42
.Lx448_58:
 cmp eax, 13
 jne .Lx448_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx448_43
 cmp rax, r9
 je .Lx448_43
 mov r9, rax
 jmp .Lx448_42
.Lx448_43:
 cmp r8, r9
 je .Lx448_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx448_44
 cmp eax, 99
 je .Lx448_44
 cmp eax, 13
 jne .Lx448_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx448_44
 jmp .Lx448_45
.Lx448_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx448_53
 cmp eax, 99
 je .Lx448_53
 cmp eax, 13
 jne .Lx448_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx448_53
 jmp .Lx448_46
.Lx448_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx448_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx448_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx448_51
.Lx448_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx448_47
 cmp eax, 99
 je .Lx448_47
 cmp eax, 13
 jne .Lx448_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx448_47
 jmp .Lx448_48
.Lx448_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx448_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx448_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx448_51
.Lx448_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx448_49
 cmp edx, 14
 je .Lx448_53
 jmp .Lx448_52
.Lx448_49:
 cmp edx, 14
 je .Lx448_52
 cmp ecx, 7
 je .Lx448_53
 cmp edx, 7
 je .Lx448_53
 cmp ecx, 6
 jne .Lx448_50
 cmp edx, 6
 jne .Lx448_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx448_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx448_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx448_51
 jmp .Lx448_52
.Lx448_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx448_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx448_53
.Lx448_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx448_54
.Lx448_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx448_54
.Lx448_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx448_54:
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 cmp eax, 99
 je xchain294_n116_α
 jmp xchain294_n121_α
 xchain294_n115_β:
 jmp xchain294_n116_α
 xchain294_n116_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2000]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2008], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2000]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n46_α
 xchain294_n116_β:
 jmp proc_define$2F2_ω
# IR_VAR_REF
 xchain294_n117_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13760]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain294_n122_α
# IR_LIT_STRING
 xchain294_n118_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx452_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain294_n123_α
.Lx452_0:
 .quad .Lx452_0_s
.Lx452_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain294_n119_α:
 mov qword ptr [rbp + 11552], 6
 mov rax, qword ptr [rip + .Lx453_0]
 mov qword ptr [rbp + 11560], rax
 jmp xchain294_n124_α
.Lx453_0:
 .quad 28
# IR_VAR_REF
 xchain294_n120_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13808]
 mov qword ptr [rbp + 4704], rax
 mov qword ptr [rbp + 4712], rdx
 jmp xchain294_n125_α
# IR_VAR_REF
 xchain294_n121_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain294_n126_α
# IR_VAR_REF
 xchain294_n122_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13824]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain294_n127_α
 xchain294_n123_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+496]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 504], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+512]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 520], rax
# marshal arg2 = producer-box slot [zr+384] -> [zr+528]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 536], rax
# marshal arg3 = producer-box slot [zr+416] -> [zr+544]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 552], rax
# marshal arg4 = producer-box slot [zr+448] -> [zr+560]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 496]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain294_n92_α
 jmp xchain294_n128_α
 xchain294_n123_β:
 jmp xchain294_n92_α
# IR_LIT_STRING
 xchain294_n124_α:
 mov qword ptr [rbp + 11520], 1
 mov rax, qword ptr [rip + .Lx461_0]
 mov qword ptr [rbp + 11528], rax
 jmp xchain294_n129_α
.Lx461_0:
 .quad .Lx461_0_s
.Lx461_0_s:
 .string "."
 xchain294_n125_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4832] -> [zr+4752]
 mov rax, qword ptr [rbp + 4832]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 4840]
 mov qword ptr [rbp + 4760], rax
# marshal arg1 = producer-box slot [zr+4640] -> [zr+4768]
 mov rax, qword ptr [rbp + 4640]
 mov qword ptr [rbp + 4768], rax
 mov rax, qword ptr [rbp + 4648]
 mov qword ptr [rbp + 4776], rax
# marshal arg2 = producer-box slot [zr+4672] -> [zr+4784]
 mov rax, qword ptr [rbp + 4672]
 mov qword ptr [rbp + 4784], rax
 mov rax, qword ptr [rbp + 4680]
 mov qword ptr [rbp + 4792], rax
# marshal arg3 = producer-box slot [zr+4704] -> [zr+4800]
 mov rax, qword ptr [rbp + 4704]
 mov qword ptr [rbp + 4800], rax
 mov rax, qword ptr [rbp + 4712]
 mov qword ptr [rbp + 4808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4752]
 mov esi, 4
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n130_α
 xchain294_n125_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n126_α:
 mov qword ptr [rbp + 2784], 1
 mov rax, qword ptr [rip + .Lx463_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain294_n131_α
.Lx463_0:
 .quad .Lx463_0_s
.Lx463_0_s:
 .string ","
 xchain294_n127_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1648] -> [zr+1584]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1592], rax
# marshal arg1 = producer-box slot [zr+1536] -> [zr+1600]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1608], rax
# marshal arg2 = producer-box slot [zr+1504] -> [zr+1616]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1584]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n132_α
 xchain294_n127_β:
 jmp proc_define$2F2_ω
 xchain294_n128_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+304]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 312], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 288]
 lea r8, [rbp + 288]
.Lx465_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx465_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx465_41
 cmp esi, 1
 jne .Lx465_55
 mov r8, rax
 jmp .Lx465_40
.Lx465_55:
 cmp esi, 2
 jne .Lx465_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx465_41
 mov r8, rax
 jmp .Lx465_40
.Lx465_56:
 cmp eax, 13
 jne .Lx465_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx465_41
 cmp rax, r8
 je .Lx465_41
 mov r8, rax
 jmp .Lx465_40
.Lx465_41:
 lea r9, [rbp + 304]
.Lx465_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx465_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx465_43
 cmp esi, 1
 jne .Lx465_57
 mov r9, rax
 jmp .Lx465_42
.Lx465_57:
 cmp esi, 2
 jne .Lx465_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx465_43
 mov r9, rax
 jmp .Lx465_42
.Lx465_58:
 cmp eax, 13
 jne .Lx465_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx465_43
 cmp rax, r9
 je .Lx465_43
 mov r9, rax
 jmp .Lx465_42
.Lx465_43:
 cmp r8, r9
 je .Lx465_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx465_44
 cmp eax, 99
 je .Lx465_44
 cmp eax, 13
 jne .Lx465_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx465_44
 jmp .Lx465_45
.Lx465_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx465_53
 cmp eax, 99
 je .Lx465_53
 cmp eax, 13
 jne .Lx465_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx465_53
 jmp .Lx465_46
.Lx465_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx465_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx465_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx465_51
.Lx465_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx465_47
 cmp eax, 99
 je .Lx465_47
 cmp eax, 13
 jne .Lx465_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx465_47
 jmp .Lx465_48
.Lx465_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx465_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx465_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx465_51
.Lx465_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx465_49
 cmp edx, 14
 je .Lx465_53
 jmp .Lx465_52
.Lx465_49:
 cmp edx, 14
 je .Lx465_52
 cmp ecx, 7
 je .Lx465_53
 cmp edx, 7
 je .Lx465_53
 cmp ecx, 6
 jne .Lx465_50
 cmp edx, 6
 jne .Lx465_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx465_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx465_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx465_51
 jmp .Lx465_52
.Lx465_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx465_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx465_53
.Lx465_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx465_54
.Lx465_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx465_54
.Lx465_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx465_54:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain294_n92_α
 jmp xchain294_n133_α
 xchain294_n128_β:
 jmp xchain294_n92_α
# IR_LIT_INTEGER
 xchain294_n129_α:
 mov qword ptr [rbp + 11408], 6
 mov rax, qword ptr [rip + .Lx466_0]
 mov qword ptr [rbp + 11416], rax
 jmp xchain294_n134_α
.Lx466_0:
 .quad 85
# IR_LIT_STRING
 xchain294_n130_α:
 mov qword ptr [rbp + 5200], 1
 mov rax, qword ptr [rip + .Lx467_0]
 mov qword ptr [rbp + 5208], rax
 jmp xchain294_n135_α
.Lx467_0:
 .quad .Lx467_0_s
.Lx467_0_s:
 .string "qsort"
# IR_LIT_STRING
 xchain294_n131_α:
 mov qword ptr [rbp + 2256], 1
 mov rax, qword ptr [rip + .Lx468_0]
 mov qword ptr [rbp + 2264], rax
 jmp xchain294_n136_α
.Lx468_0:
 .quad .Lx468_0_s
.Lx468_0_s:
 .string "=<"
 xchain294_n132_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1696]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1704], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1712]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1720], rax
# marshal arg2 = producer-box slot [zr+1440] -> [zr+1728]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1736], rax
# marshal arg3 = producer-box slot [zr+1472] -> [zr+1744]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1752], rax
# marshal arg4 = producer-box slot [zr+1568] -> [zr+1760]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1696]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je xchain294_n138_α
 jmp xchain294_n137_α
 xchain294_n132_β:
 jmp xchain294_n138_α
# IR_VAR_REF
 xchain294_n133_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain294_n139_α
# IR_LIT_STRING
 xchain294_n134_α:
 mov qword ptr [rbp + 11376], 1
 mov rax, qword ptr [rip + .Lx472_0]
 mov qword ptr [rbp + 11384], rax
 jmp xchain294_n140_α
.Lx472_0:
 .quad .Lx472_0_s
.Lx472_0_s:
 .string "."
# IR_VAR_REF
 xchain294_n135_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13824]
 mov qword ptr [rbp + 4864], rax
 mov qword ptr [rbp + 4872], rdx
 jmp xchain294_n141_α
# IR_VAR_REF
 xchain294_n136_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13760]
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain294_n142_α
 xchain294_n137_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1200]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1208], rax
# marshal arg1 = producer-box slot [zr+1680] -> [zr+1216]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1224], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1200]
 lea r8, [rbp + 1200]
.Lx477_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx477_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx477_41
 cmp esi, 1
 jne .Lx477_55
 mov r8, rax
 jmp .Lx477_40
.Lx477_55:
 cmp esi, 2
 jne .Lx477_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx477_41
 mov r8, rax
 jmp .Lx477_40
.Lx477_56:
 cmp eax, 13
 jne .Lx477_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx477_41
 cmp rax, r8
 je .Lx477_41
 mov r8, rax
 jmp .Lx477_40
.Lx477_41:
 lea r9, [rbp + 1216]
.Lx477_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx477_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx477_43
 cmp esi, 1
 jne .Lx477_57
 mov r9, rax
 jmp .Lx477_42
.Lx477_57:
 cmp esi, 2
 jne .Lx477_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx477_43
 mov r9, rax
 jmp .Lx477_42
.Lx477_58:
 cmp eax, 13
 jne .Lx477_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx477_43
 cmp rax, r9
 je .Lx477_43
 mov r9, rax
 jmp .Lx477_42
.Lx477_43:
 cmp r8, r9
 je .Lx477_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx477_44
 cmp eax, 99
 je .Lx477_44
 cmp eax, 13
 jne .Lx477_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx477_44
 jmp .Lx477_45
.Lx477_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx477_53
 cmp eax, 99
 je .Lx477_53
 cmp eax, 13
 jne .Lx477_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx477_53
 jmp .Lx477_46
.Lx477_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx477_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx477_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx477_51
.Lx477_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx477_47
 cmp eax, 99
 je .Lx477_47
 cmp eax, 13
 jne .Lx477_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx477_47
 jmp .Lx477_48
.Lx477_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx477_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx477_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx477_51
.Lx477_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx477_49
 cmp edx, 14
 je .Lx477_53
 jmp .Lx477_52
.Lx477_49:
 cmp edx, 14
 je .Lx477_52
 cmp ecx, 7
 je .Lx477_53
 cmp edx, 7
 je .Lx477_53
 cmp ecx, 6
 jne .Lx477_50
 cmp edx, 6
 jne .Lx477_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx477_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx477_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx477_51
 jmp .Lx477_52
.Lx477_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx477_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx477_53
.Lx477_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx477_54
.Lx477_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx477_54
.Lx477_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx477_54:
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain294_n138_α
 jmp xchain294_n143_α
 xchain294_n137_β:
 jmp xchain294_n138_α
 xchain294_n138_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+800]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 800]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n69_α
 xchain294_n138_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n139_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx479_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain294_n144_α
.Lx479_0:
 .quad .Lx479_0_s
.Lx479_0_s:
 .string "true"
# IR_LIT_INTEGER
 xchain294_n140_α:
 mov qword ptr [rbp + 11264], 6
 mov rax, qword ptr [rip + .Lx480_0]
 mov qword ptr [rbp + 11272], rax
 jmp xchain294_n145_α
.Lx480_0:
 .quad 99
# IR_VAR_REF
 xchain294_n141_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13792]
 mov qword ptr [rbp + 4896], rax
 mov qword ptr [rbp + 4904], rdx
 jmp xchain294_n146_α
# IR_VAR_REF
 xchain294_n142_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13792]
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain294_n147_α
# IR_VAR_REF
 xchain294_n143_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain294_n148_α
 xchain294_n144_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 176]
 mov rsi, qword ptr [rip + .Lx487_2]
 jmp .Lx487_3
.Lx487_2:
 .quad .Lx487_2_s
.Lx487_2_s:
 .string "true"
.Lx487_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain294_n92_α
 jmp xchain294_n149_α
 xchain294_n144_β:
 jmp xchain294_n92_α
# IR_LIT_STRING
 xchain294_n145_α:
 mov qword ptr [rbp + 11232], 1
 mov rax, qword ptr [rip + .Lx488_0]
 mov qword ptr [rbp + 11240], rax
 jmp xchain294_n150_α
.Lx488_0:
 .quad .Lx488_0_s
.Lx488_0_s:
 .string "."
# IR_LIT_STRING
 xchain294_n146_α:
 mov qword ptr [rbp + 5072], 1
 mov rax, qword ptr [rip + .Lx489_0]
 mov qword ptr [rbp + 5080], rax
 jmp xchain294_n151_α
.Lx489_0:
 .quad .Lx489_0_s
.Lx489_0_s:
 .string "."
 xchain294_n147_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2192]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2200], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2208]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2216], rax
# marshal arg2 = producer-box slot [zr+2144] -> [zr+2224]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2192]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n152_α
 xchain294_n147_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n148_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx491_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain294_n153_α
.Lx491_0:
 .quad .Lx491_0_s
.Lx491_0_s:
 .string "partition"
# IR_SUSPEND yield+resume
 xchain294_n149_α:
 lea rax, [rip + xchain294_n149_β]
 mov qword ptr [rbp + 13728], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2F2_γ
 xchain294_n149_β:
 jmp xchain294_n92_α
# IR_LIT_INTEGER
 xchain294_n150_α:
 mov qword ptr [rbp + 11120], 6
 mov rax, qword ptr [rip + .Lx494_0]
 mov qword ptr [rbp + 11128], rax
 jmp xchain294_n154_α
.Lx494_0:
 .quad 47
# IR_VAR_REF
 xchain294_n151_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13760]
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 jmp xchain294_n155_α
# IR_LIT_STRING
 xchain294_n152_α:
 mov qword ptr [rbp + 2672], 1
 mov rax, qword ptr [rip + .Lx497_0]
 mov qword ptr [rbp + 2680], rax
 jmp xchain294_n156_α
.Lx497_0:
 .quad .Lx497_0_s
.Lx497_0_s:
 .string ","
# IR_VAR_REF
 xchain294_n153_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13776]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain294_n157_α
# IR_LIT_STRING
 xchain294_n154_α:
 mov qword ptr [rbp + 11088], 1
 mov rax, qword ptr [rip + .Lx500_0]
 mov qword ptr [rbp + 11096], rax
 jmp xchain294_n158_α
.Lx500_0:
 .quad .Lx500_0_s
.Lx500_0_s:
 .string "."
# IR_VAR_REF
 xchain294_n155_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13856]
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
 jmp xchain294_n159_α
# IR_LIT_STRING
 xchain294_n156_α:
 mov qword ptr [rbp + 2288], 1
 mov rax, qword ptr [rip + .Lx503_0]
 mov qword ptr [rbp + 2296], rax
 jmp xchain294_n160_α
.Lx503_0:
 .quad .Lx503_0_s
.Lx503_0_s:
 .string "?"
# IR_VAR_REF
 xchain294_n157_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13792]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain294_n161_α
# IR_LIT_INTEGER
 xchain294_n158_α:
 mov qword ptr [rbp + 10976], 6
 mov rax, qword ptr [rip + .Lx506_0]
 mov qword ptr [rbp + 10984], rax
 jmp xchain294_n162_α
.Lx506_0:
 .quad 28
 xchain294_n159_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5072] -> [zr+5008]
 mov rax, qword ptr [rbp + 5072]
 mov qword ptr [rbp + 5008], rax
 mov rax, qword ptr [rbp + 5080]
 mov qword ptr [rbp + 5016], rax
# marshal arg1 = producer-box slot [zr+4960] -> [zr+5024]
 mov rax, qword ptr [rbp + 4960]
 mov qword ptr [rbp + 5024], rax
 mov rax, qword ptr [rbp + 4968]
 mov qword ptr [rbp + 5032], rax
# marshal arg2 = producer-box slot [zr+4928] -> [zr+5040]
 mov rax, qword ptr [rbp + 4928]
 mov qword ptr [rbp + 5040], rax
 mov rax, qword ptr [rbp + 4936]
 mov qword ptr [rbp + 5048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5008]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n163_α
 xchain294_n159_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n160_α:
 mov qword ptr [rbp + 2560], 1
 mov rax, qword ptr [rip + .Lx508_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain294_n164_α
.Lx508_0:
 .quad .Lx508_0_s
.Lx508_0_s:
 .string "partition"
# IR_VAR_REF
 xchain294_n161_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13808]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain294_n165_α
# IR_LIT_STRING
 xchain294_n162_α:
 mov qword ptr [rbp + 10944], 1
 mov rax, qword ptr [rip + .Lx511_0]
 mov qword ptr [rbp + 10952], rax
 jmp xchain294_n166_α
.Lx511_0:
 .quad .Lx511_0_s
.Lx511_0_s:
 .string "."
 xchain294_n163_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5200] -> [zr+5120]
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 5120], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 5128], rax
# marshal arg1 = producer-box slot [zr+4864] -> [zr+5136]
 mov rax, qword ptr [rbp + 4864]
 mov qword ptr [rbp + 5136], rax
 mov rax, qword ptr [rbp + 4872]
 mov qword ptr [rbp + 5144], rax
# marshal arg2 = producer-box slot [zr+4896] -> [zr+5152]
 mov rax, qword ptr [rbp + 4896]
 mov qword ptr [rbp + 5152], rax
 mov rax, qword ptr [rbp + 4904]
 mov qword ptr [rbp + 5160], rax
# marshal arg3 = producer-box slot [zr+4992] -> [zr+5168]
 mov rax, qword ptr [rbp + 4992]
 mov qword ptr [rbp + 5168], rax
 mov rax, qword ptr [rbp + 5000]
 mov qword ptr [rbp + 5176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5120]
 mov esi, 4
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5104], rax
 mov qword ptr [rbp + 5112], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n167_α
 xchain294_n163_β:
 jmp proc_define$2F2_ω
# IR_VAR_REF
 xchain294_n164_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13776]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain294_n168_α
# IR_VAR_REF
 xchain294_n165_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13824]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain294_n169_α
# IR_LIT_INTEGER
 xchain294_n166_α:
 mov qword ptr [rbp + 10832], 6
 mov rax, qword ptr [rip + .Lx517_0]
 mov qword ptr [rbp + 10840], rax
 jmp xchain294_n170_α
.Lx517_0:
 .quad 82
 xchain294_n167_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5312] -> [zr+5248]
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 5248], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 5256], rax
# marshal arg1 = producer-box slot [zr+4736] -> [zr+5264]
 mov rax, qword ptr [rbp + 4736]
 mov qword ptr [rbp + 5264], rax
 mov rax, qword ptr [rbp + 4744]
 mov qword ptr [rbp + 5272], rax
# marshal arg2 = producer-box slot [zr+5104] -> [zr+5280]
 mov rax, qword ptr [rbp + 5104]
 mov qword ptr [rbp + 5280], rax
 mov rax, qword ptr [rbp + 5112]
 mov qword ptr [rbp + 5288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5248]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n171_α
 xchain294_n167_β:
 jmp proc_define$2F2_ω
# IR_VAR_REF
 xchain294_n168_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13792]
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain294_n172_α
 xchain294_n169_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1056]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1064], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+1072]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 1080], rax
# marshal arg2 = producer-box slot [zr+944] -> [zr+1088]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 1096], rax
# marshal arg3 = producer-box slot [zr+976] -> [zr+1104]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 1112], rax
# marshal arg4 = producer-box slot [zr+1008] -> [zr+1120]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1056]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain294_n138_α
 jmp xchain294_n173_α
 xchain294_n169_β:
 jmp xchain294_n138_α
# IR_LIT_STRING
 xchain294_n170_α:
 mov qword ptr [rbp + 10800], 1
 mov rax, qword ptr [rip + .Lx522_0]
 mov qword ptr [rbp + 10808], rax
 jmp xchain294_n174_α
.Lx522_0:
 .quad .Lx522_0_s
.Lx522_0_s:
 .string "."
 xchain294_n171_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5424] -> [zr+5360]
 mov rax, qword ptr [rbp + 5424]
 mov qword ptr [rbp + 5360], rax
 mov rax, qword ptr [rbp + 5432]
 mov qword ptr [rbp + 5368], rax
# marshal arg1 = producer-box slot [zr+4496] -> [zr+5376]
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 5376], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 5384], rax
# marshal arg2 = producer-box slot [zr+5232] -> [zr+5392]
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 5392], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 5400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5360]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 cmp eax, 99
 je xchain294_n49_α
 jmp xchain294_n175_α
 xchain294_n171_β:
 jmp xchain294_n49_α
# IR_VAR_REF
 xchain294_n172_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13808]
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 jmp xchain294_n176_α
 xchain294_n173_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+864]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 872], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 848]
 lea r8, [rbp + 848]
.Lx526_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx526_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx526_41
 cmp esi, 1
 jne .Lx526_55
 mov r8, rax
 jmp .Lx526_40
.Lx526_55:
 cmp esi, 2
 jne .Lx526_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx526_41
 mov r8, rax
 jmp .Lx526_40
.Lx526_56:
 cmp eax, 13
 jne .Lx526_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx526_41
 cmp rax, r8
 je .Lx526_41
 mov r8, rax
 jmp .Lx526_40
.Lx526_41:
 lea r9, [rbp + 864]
.Lx526_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx526_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx526_43
 cmp esi, 1
 jne .Lx526_57
 mov r9, rax
 jmp .Lx526_42
.Lx526_57:
 cmp esi, 2
 jne .Lx526_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx526_43
 mov r9, rax
 jmp .Lx526_42
.Lx526_58:
 cmp eax, 13
 jne .Lx526_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx526_43
 cmp rax, r9
 je .Lx526_43
 mov r9, rax
 jmp .Lx526_42
.Lx526_43:
 cmp r8, r9
 je .Lx526_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx526_44
 cmp eax, 99
 je .Lx526_44
 cmp eax, 13
 jne .Lx526_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx526_44
 jmp .Lx526_45
.Lx526_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx526_53
 cmp eax, 99
 je .Lx526_53
 cmp eax, 13
 jne .Lx526_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx526_53
 jmp .Lx526_46
.Lx526_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx526_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx526_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx526_51
.Lx526_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx526_47
 cmp eax, 99
 je .Lx526_47
 cmp eax, 13
 jne .Lx526_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx526_47
 jmp .Lx526_48
.Lx526_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx526_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx526_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx526_51
.Lx526_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx526_49
 cmp edx, 14
 je .Lx526_53
 jmp .Lx526_52
.Lx526_49:
 cmp edx, 14
 je .Lx526_52
 cmp ecx, 7
 je .Lx526_53
 cmp edx, 7
 je .Lx526_53
 cmp ecx, 6
 jne .Lx526_50
 cmp edx, 6
 jne .Lx526_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx526_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx526_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx526_51
 jmp .Lx526_52
.Lx526_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx526_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx526_53
.Lx526_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx526_54
.Lx526_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx526_54
.Lx526_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx526_54:
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain294_n138_α
 jmp xchain294_n177_α
 xchain294_n173_β:
 jmp xchain294_n138_α
# IR_LIT_INTEGER
 xchain294_n174_α:
 mov qword ptr [rbp + 10688], 6
 mov rax, qword ptr [rip + .Lx527_0]
 mov qword ptr [rbp + 10696], rax
 jmp xchain294_n178_α
.Lx527_0:
 .quad 6
 xchain294_n175_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4336] -> [zr+4304]
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4304], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4312], rax
# marshal arg1 = producer-box slot [zr+5344] -> [zr+4320]
 mov rax, qword ptr [rbp + 5344]
 mov qword ptr [rbp + 4320], rax
 mov rax, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 4328], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 4304]
 lea r8, [rbp + 4304]
.Lx528_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx528_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx528_41
 cmp esi, 1
 jne .Lx528_55
 mov r8, rax
 jmp .Lx528_40
.Lx528_55:
 cmp esi, 2
 jne .Lx528_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx528_41
 mov r8, rax
 jmp .Lx528_40
.Lx528_56:
 cmp eax, 13
 jne .Lx528_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx528_41
 cmp rax, r8
 je .Lx528_41
 mov r8, rax
 jmp .Lx528_40
.Lx528_41:
 lea r9, [rbp + 4320]
.Lx528_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx528_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx528_43
 cmp esi, 1
 jne .Lx528_57
 mov r9, rax
 jmp .Lx528_42
.Lx528_57:
 cmp esi, 2
 jne .Lx528_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx528_43
 mov r9, rax
 jmp .Lx528_42
.Lx528_58:
 cmp eax, 13
 jne .Lx528_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx528_43
 cmp rax, r9
 je .Lx528_43
 mov r9, rax
 jmp .Lx528_42
.Lx528_43:
 cmp r8, r9
 je .Lx528_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx528_44
 cmp eax, 99
 je .Lx528_44
 cmp eax, 13
 jne .Lx528_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx528_44
 jmp .Lx528_45
.Lx528_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx528_53
 cmp eax, 99
 je .Lx528_53
 cmp eax, 13
 jne .Lx528_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx528_53
 jmp .Lx528_46
.Lx528_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx528_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx528_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx528_51
.Lx528_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx528_47
 cmp eax, 99
 je .Lx528_47
 cmp eax, 13
 jne .Lx528_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx528_47
 jmp .Lx528_48
.Lx528_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx528_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx528_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx528_51
.Lx528_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx528_49
 cmp edx, 14
 je .Lx528_53
 jmp .Lx528_52
.Lx528_49:
 cmp edx, 14
 je .Lx528_52
 cmp ecx, 7
 je .Lx528_53
 cmp edx, 7
 je .Lx528_53
 cmp ecx, 6
 jne .Lx528_50
 cmp edx, 6
 jne .Lx528_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx528_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx528_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx528_51
 jmp .Lx528_52
.Lx528_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx528_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx528_53
.Lx528_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx528_54
.Lx528_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx528_54
.Lx528_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx528_54:
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 cmp eax, 99
 je xchain294_n49_α
 jmp xchain294_n179_α
 xchain294_n175_β:
 jmp xchain294_n49_α
# IR_VAR_REF
 xchain294_n176_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13824]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain294_n180_α
# IR_SUSPEND yield+resume
 xchain294_n177_α:
 lea rax, [rip + xchain294_n177_β]
 mov qword ptr [rbp + 13728], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2F2_γ
 xchain294_n177_β:
 jmp xchain294_n138_α
# IR_LIT_STRING
 xchain294_n178_α:
 mov qword ptr [rbp + 10656], 1
 mov rax, qword ptr [rip + .Lx533_0]
 mov qword ptr [rbp + 10664], rax
 jmp xchain294_n181_α
.Lx533_0:
 .quad .Lx533_0_s
.Lx533_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain294_n179_α:
 lea rax, [rip + xchain294_n179_β]
 mov qword ptr [rbp + 13728], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2F2_γ
 xchain294_n179_β:
 jmp xchain294_n49_α
 xchain294_n180_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2464]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2472], rax
# marshal arg1 = producer-box slot [zr+2320] -> [zr+2480]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2488], rax
# marshal arg2 = producer-box slot [zr+2352] -> [zr+2496]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2504], rax
# marshal arg3 = producer-box slot [zr+2384] -> [zr+2512]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2520], rax
# marshal arg4 = producer-box slot [zr+2416] -> [zr+2528]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2464]
 mov esi, 5
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n182_α
 xchain294_n180_β:
 jmp proc_define$2F2_ω
# IR_LIT_INTEGER
 xchain294_n181_α:
 mov qword ptr [rbp + 10544], 6
 mov rax, qword ptr [rip + .Lx537_0]
 mov qword ptr [rbp + 10552], rax
 jmp xchain294_n183_α
.Lx537_0:
 .quad 11
 xchain294_n182_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2672] -> [zr+2608]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2616], rax
# marshal arg1 = producer-box slot [zr+2288] -> [zr+2624]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2632], rax
# marshal arg2 = producer-box slot [zr+2448] -> [zr+2640]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2608]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n184_α
 xchain294_n182_β:
 jmp proc_define$2F2_ω
# IR_LIT_STRING
 xchain294_n183_α:
 mov qword ptr [rbp + 10512], 1
 mov rax, qword ptr [rip + .Lx539_0]
 mov qword ptr [rbp + 10520], rax
 jmp xchain294_n185_α
.Lx539_0:
 .quad .Lx539_0_s
.Lx539_0_s:
 .string "."
 xchain294_n184_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2784] -> [zr+2720]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2728], rax
# marshal arg1 = producer-box slot [zr+2176] -> [zr+2736]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2744], rax
# marshal arg2 = producer-box slot [zr+2592] -> [zr+2752]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2720]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 cmp eax, 99
 je xchain294_n116_α
 jmp xchain294_n186_α
 xchain294_n184_β:
 jmp xchain294_n116_α
# IR_LIT_INTEGER
 xchain294_n185_α:
 mov qword ptr [rbp + 10400], 6
 mov rax, qword ptr [rip + .Lx541_0]
 mov qword ptr [rbp + 10408], rax
 jmp xchain294_n187_α
.Lx541_0:
 .quad 55
 xchain294_n186_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2048]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2056], rax
# marshal arg1 = producer-box slot [zr+2704] -> [zr+2064]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2072], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2048]
 lea r8, [rbp + 2048]
.Lx542_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx542_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx542_41
 cmp esi, 1
 jne .Lx542_55
 mov r8, rax
 jmp .Lx542_40
.Lx542_55:
 cmp esi, 2
 jne .Lx542_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx542_41
 mov r8, rax
 jmp .Lx542_40
.Lx542_56:
 cmp eax, 13
 jne .Lx542_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx542_41
 cmp rax, r8
 je .Lx542_41
 mov r8, rax
 jmp .Lx542_40
.Lx542_41:
 lea r9, [rbp + 2064]
.Lx542_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx542_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx542_43
 cmp esi, 1
 jne .Lx542_57
 mov r9, rax
 jmp .Lx542_42
.Lx542_57:
 cmp esi, 2
 jne .Lx542_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx542_43
 mov r9, rax
 jmp .Lx542_42
.Lx542_58:
 cmp eax, 13
 jne .Lx542_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx542_43
 cmp rax, r9
 je .Lx542_43
 mov r9, rax
 jmp .Lx542_42
.Lx542_43:
 cmp r8, r9
 je .Lx542_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx542_44
 cmp eax, 99
 je .Lx542_44
 cmp eax, 13
 jne .Lx542_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx542_44
 jmp .Lx542_45
.Lx542_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx542_53
 cmp eax, 99
 je .Lx542_53
 cmp eax, 13
 jne .Lx542_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx542_53
 jmp .Lx542_46
.Lx542_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx542_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx542_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx542_51
.Lx542_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx542_47
 cmp eax, 99
 je .Lx542_47
 cmp eax, 13
 jne .Lx542_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx542_47
 jmp .Lx542_48
.Lx542_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx542_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx542_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx542_51
.Lx542_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx542_49
 cmp edx, 14
 je .Lx542_53
 jmp .Lx542_52
.Lx542_49:
 cmp edx, 14
 je .Lx542_52
 cmp ecx, 7
 je .Lx542_53
 cmp edx, 7
 je .Lx542_53
 cmp ecx, 6
 jne .Lx542_50
 cmp edx, 6
 jne .Lx542_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx542_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx542_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx542_51
 jmp .Lx542_52
.Lx542_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx542_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx542_53
.Lx542_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx542_54
.Lx542_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx542_54
.Lx542_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx542_54:
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je xchain294_n116_α
 jmp xchain294_n188_α
 xchain294_n186_β:
 jmp xchain294_n116_α
# IR_LIT_STRING
 xchain294_n187_α:
 mov qword ptr [rbp + 10368], 1
 mov rax, qword ptr [rip + .Lx543_0]
 mov qword ptr [rbp + 10376], rax
 jmp xchain294_n189_α
.Lx543_0:
 .quad .Lx543_0_s
.Lx543_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain294_n188_α:
 lea rax, [rip + xchain294_n188_β]
 mov qword ptr [rbp + 13728], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2F2_γ
 xchain294_n188_β:
 jmp xchain294_n116_α
# IR_LIT_INTEGER
 xchain294_n189_α:
 mov qword ptr [rbp + 10256], 6
 mov rax, qword ptr [rip + .Lx546_0]
 mov qword ptr [rbp + 10264], rax
 jmp xchain294_n190_α
.Lx546_0:
 .quad 29
# IR_LIT_STRING
 xchain294_n190_α:
 mov qword ptr [rbp + 10224], 1
 mov rax, qword ptr [rip + .Lx547_0]
 mov qword ptr [rbp + 10232], rax
 jmp xchain294_n191_α
.Lx547_0:
 .quad .Lx547_0_s
.Lx547_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n191_α:
 mov qword ptr [rbp + 10112], 6
 mov rax, qword ptr [rip + .Lx548_0]
 mov qword ptr [rbp + 10120], rax
 jmp xchain294_n192_α
.Lx548_0:
 .quad 39
# IR_LIT_STRING
 xchain294_n192_α:
 mov qword ptr [rbp + 10080], 1
 mov rax, qword ptr [rip + .Lx549_0]
 mov qword ptr [rbp + 10088], rax
 jmp xchain294_n193_α
.Lx549_0:
 .quad .Lx549_0_s
.Lx549_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n193_α:
 mov qword ptr [rbp + 9968], 6
 mov rax, qword ptr [rip + .Lx550_0]
 mov qword ptr [rbp + 9976], rax
 jmp xchain294_n194_α
.Lx550_0:
 .quad 81
# IR_LIT_STRING
 xchain294_n194_α:
 mov qword ptr [rbp + 9936], 1
 mov rax, qword ptr [rip + .Lx551_0]
 mov qword ptr [rbp + 9944], rax
 jmp xchain294_n195_α
.Lx551_0:
 .quad .Lx551_0_s
.Lx551_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n195_α:
 mov qword ptr [rbp + 9824], 6
 mov rax, qword ptr [rip + .Lx552_0]
 mov qword ptr [rbp + 9832], rax
 jmp xchain294_n196_α
.Lx552_0:
 .quad 90
# IR_LIT_STRING
 xchain294_n196_α:
 mov qword ptr [rbp + 9792], 1
 mov rax, qword ptr [rip + .Lx553_0]
 mov qword ptr [rbp + 9800], rax
 jmp xchain294_n197_α
.Lx553_0:
 .quad .Lx553_0_s
.Lx553_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n197_α:
 mov qword ptr [rbp + 9680], 6
 mov rax, qword ptr [rip + .Lx554_0]
 mov qword ptr [rbp + 9688], rax
 jmp xchain294_n198_α
.Lx554_0:
 .quad 37
# IR_LIT_STRING
 xchain294_n198_α:
 mov qword ptr [rbp + 9648], 1
 mov rax, qword ptr [rip + .Lx555_0]
 mov qword ptr [rbp + 9656], rax
 jmp xchain294_n199_α
.Lx555_0:
 .quad .Lx555_0_s
.Lx555_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n199_α:
 mov qword ptr [rbp + 9536], 6
 mov rax, qword ptr [rip + .Lx556_0]
 mov qword ptr [rbp + 9544], rax
 jmp xchain294_n200_α
.Lx556_0:
 .quad 10
# IR_LIT_STRING
 xchain294_n200_α:
 mov qword ptr [rbp + 9504], 1
 mov rax, qword ptr [rip + .Lx557_0]
 mov qword ptr [rbp + 9512], rax
 jmp xchain294_n201_α
.Lx557_0:
 .quad .Lx557_0_s
.Lx557_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n201_α:
 mov qword ptr [rbp + 9392], 6
 mov rax, qword ptr [rip + .Lx558_0]
 mov qword ptr [rbp + 9400], rax
 jmp xchain294_n202_α
.Lx558_0:
 .quad 0
# IR_LIT_STRING
 xchain294_n202_α:
 mov qword ptr [rbp + 9360], 1
 mov rax, qword ptr [rip + .Lx559_0]
 mov qword ptr [rbp + 9368], rax
 jmp xchain294_n203_α
.Lx559_0:
 .quad .Lx559_0_s
.Lx559_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n203_α:
 mov qword ptr [rbp + 9248], 6
 mov rax, qword ptr [rip + .Lx560_0]
 mov qword ptr [rbp + 9256], rax
 jmp xchain294_n204_α
.Lx560_0:
 .quad 66
# IR_LIT_STRING
 xchain294_n204_α:
 mov qword ptr [rbp + 9216], 1
 mov rax, qword ptr [rip + .Lx561_0]
 mov qword ptr [rbp + 9224], rax
 jmp xchain294_n205_α
.Lx561_0:
 .quad .Lx561_0_s
.Lx561_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n205_α:
 mov qword ptr [rbp + 9104], 6
 mov rax, qword ptr [rip + .Lx562_0]
 mov qword ptr [rbp + 9112], rax
 jmp xchain294_n206_α
.Lx562_0:
 .quad 51
# IR_LIT_STRING
 xchain294_n206_α:
 mov qword ptr [rbp + 9072], 1
 mov rax, qword ptr [rip + .Lx563_0]
 mov qword ptr [rbp + 9080], rax
 jmp xchain294_n207_α
.Lx563_0:
 .quad .Lx563_0_s
.Lx563_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n207_α:
 mov qword ptr [rbp + 8960], 6
 mov rax, qword ptr [rip + .Lx564_0]
 mov qword ptr [rbp + 8968], rax
 jmp xchain294_n208_α
.Lx564_0:
 .quad 7
# IR_LIT_STRING
 xchain294_n208_α:
 mov qword ptr [rbp + 8928], 1
 mov rax, qword ptr [rip + .Lx565_0]
 mov qword ptr [rbp + 8936], rax
 jmp xchain294_n209_α
.Lx565_0:
 .quad .Lx565_0_s
.Lx565_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n209_α:
 mov qword ptr [rbp + 8816], 6
 mov rax, qword ptr [rip + .Lx566_0]
 mov qword ptr [rbp + 8824], rax
 jmp xchain294_n210_α
.Lx566_0:
 .quad 21
# IR_LIT_STRING
 xchain294_n210_α:
 mov qword ptr [rbp + 8784], 1
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [rbp + 8792], rax
 jmp xchain294_n211_α
.Lx567_0:
 .quad .Lx567_0_s
.Lx567_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n211_α:
 mov qword ptr [rbp + 8672], 6
 mov rax, qword ptr [rip + .Lx568_0]
 mov qword ptr [rbp + 8680], rax
 jmp xchain294_n212_α
.Lx568_0:
 .quad 85
# IR_LIT_STRING
 xchain294_n212_α:
 mov qword ptr [rbp + 8640], 1
 mov rax, qword ptr [rip + .Lx569_0]
 mov qword ptr [rbp + 8648], rax
 jmp xchain294_n213_α
.Lx569_0:
 .quad .Lx569_0_s
.Lx569_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n213_α:
 mov qword ptr [rbp + 8528], 6
 mov rax, qword ptr [rip + .Lx570_0]
 mov qword ptr [rbp + 8536], rax
 jmp xchain294_n214_α
.Lx570_0:
 .quad 27
# IR_LIT_STRING
 xchain294_n214_α:
 mov qword ptr [rbp + 8496], 1
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [rbp + 8504], rax
 jmp xchain294_n215_α
.Lx571_0:
 .quad .Lx571_0_s
.Lx571_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n215_α:
 mov qword ptr [rbp + 8384], 6
 mov rax, qword ptr [rip + .Lx572_0]
 mov qword ptr [rbp + 8392], rax
 jmp xchain294_n216_α
.Lx572_0:
 .quad 31
# IR_LIT_STRING
 xchain294_n216_α:
 mov qword ptr [rbp + 8352], 1
 mov rax, qword ptr [rip + .Lx573_0]
 mov qword ptr [rbp + 8360], rax
 jmp xchain294_n217_α
.Lx573_0:
 .quad .Lx573_0_s
.Lx573_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n217_α:
 mov qword ptr [rbp + 8240], 6
 mov rax, qword ptr [rip + .Lx574_0]
 mov qword ptr [rbp + 8248], rax
 jmp xchain294_n218_α
.Lx574_0:
 .quad 63
# IR_LIT_STRING
 xchain294_n218_α:
 mov qword ptr [rbp + 8208], 1
 mov rax, qword ptr [rip + .Lx575_0]
 mov qword ptr [rbp + 8216], rax
 jmp xchain294_n219_α
.Lx575_0:
 .quad .Lx575_0_s
.Lx575_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n219_α:
 mov qword ptr [rbp + 8096], 6
 mov rax, qword ptr [rip + .Lx576_0]
 mov qword ptr [rbp + 8104], rax
 jmp xchain294_n220_α
.Lx576_0:
 .quad 75
# IR_LIT_STRING
 xchain294_n220_α:
 mov qword ptr [rbp + 8064], 1
 mov rax, qword ptr [rip + .Lx577_0]
 mov qword ptr [rbp + 8072], rax
 jmp xchain294_n221_α
.Lx577_0:
 .quad .Lx577_0_s
.Lx577_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n221_α:
 mov qword ptr [rbp + 7952], 6
 mov rax, qword ptr [rip + .Lx578_0]
 mov qword ptr [rbp + 7960], rax
 jmp xchain294_n222_α
.Lx578_0:
 .quad 4
# IR_LIT_STRING
 xchain294_n222_α:
 mov qword ptr [rbp + 7920], 1
 mov rax, qword ptr [rip + .Lx579_0]
 mov qword ptr [rbp + 7928], rax
 jmp xchain294_n223_α
.Lx579_0:
 .quad .Lx579_0_s
.Lx579_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n223_α:
 mov qword ptr [rbp + 7808], 6
 mov rax, qword ptr [rip + .Lx580_0]
 mov qword ptr [rbp + 7816], rax
 jmp xchain294_n224_α
.Lx580_0:
 .quad 95
# IR_LIT_STRING
 xchain294_n224_α:
 mov qword ptr [rbp + 7776], 1
 mov rax, qword ptr [rip + .Lx581_0]
 mov qword ptr [rbp + 7784], rax
 jmp xchain294_n225_α
.Lx581_0:
 .quad .Lx581_0_s
.Lx581_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n225_α:
 mov qword ptr [rbp + 7664], 6
 mov rax, qword ptr [rip + .Lx582_0]
 mov qword ptr [rbp + 7672], rax
 jmp xchain294_n226_α
.Lx582_0:
 .quad 99
# IR_LIT_STRING
 xchain294_n226_α:
 mov qword ptr [rbp + 7632], 1
 mov rax, qword ptr [rip + .Lx583_0]
 mov qword ptr [rbp + 7640], rax
 jmp xchain294_n227_α
.Lx583_0:
 .quad .Lx583_0_s
.Lx583_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n227_α:
 mov qword ptr [rbp + 7520], 6
 mov rax, qword ptr [rip + .Lx584_0]
 mov qword ptr [rbp + 7528], rax
 jmp xchain294_n228_α
.Lx584_0:
 .quad 11
# IR_LIT_STRING
 xchain294_n228_α:
 mov qword ptr [rbp + 7488], 1
 mov rax, qword ptr [rip + .Lx585_0]
 mov qword ptr [rbp + 7496], rax
 jmp xchain294_n229_α
.Lx585_0:
 .quad .Lx585_0_s
.Lx585_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n229_α:
 mov qword ptr [rbp + 7376], 6
 mov rax, qword ptr [rip + .Lx586_0]
 mov qword ptr [rbp + 7384], rax
 jmp xchain294_n230_α
.Lx586_0:
 .quad 28
# IR_LIT_STRING
 xchain294_n230_α:
 mov qword ptr [rbp + 7344], 1
 mov rax, qword ptr [rip + .Lx587_0]
 mov qword ptr [rbp + 7352], rax
 jmp xchain294_n231_α
.Lx587_0:
 .quad .Lx587_0_s
.Lx587_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n231_α:
 mov qword ptr [rbp + 7232], 6
 mov rax, qword ptr [rip + .Lx588_0]
 mov qword ptr [rbp + 7240], rax
 jmp xchain294_n232_α
.Lx588_0:
 .quad 61
# IR_LIT_STRING
 xchain294_n232_α:
 mov qword ptr [rbp + 7200], 1
 mov rax, qword ptr [rip + .Lx589_0]
 mov qword ptr [rbp + 7208], rax
 jmp xchain294_n233_α
.Lx589_0:
 .quad .Lx589_0_s
.Lx589_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n233_α:
 mov qword ptr [rbp + 7088], 6
 mov rax, qword ptr [rip + .Lx590_0]
 mov qword ptr [rbp + 7096], rax
 jmp xchain294_n234_α
.Lx590_0:
 .quad 74
# IR_LIT_STRING
 xchain294_n234_α:
 mov qword ptr [rbp + 7056], 1
 mov rax, qword ptr [rip + .Lx591_0]
 mov qword ptr [rbp + 7064], rax
 jmp xchain294_n235_α
.Lx591_0:
 .quad .Lx591_0_s
.Lx591_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n235_α:
 mov qword ptr [rbp + 6944], 6
 mov rax, qword ptr [rip + .Lx592_0]
 mov qword ptr [rbp + 6952], rax
 jmp xchain294_n236_α
.Lx592_0:
 .quad 18
# IR_LIT_STRING
 xchain294_n236_α:
 mov qword ptr [rbp + 6912], 1
 mov rax, qword ptr [rip + .Lx593_0]
 mov qword ptr [rbp + 6920], rax
 jmp xchain294_n237_α
.Lx593_0:
 .quad .Lx593_0_s
.Lx593_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n237_α:
 mov qword ptr [rbp + 6800], 6
 mov rax, qword ptr [rip + .Lx594_0]
 mov qword ptr [rbp + 6808], rax
 jmp xchain294_n238_α
.Lx594_0:
 .quad 92
# IR_LIT_STRING
 xchain294_n238_α:
 mov qword ptr [rbp + 6768], 1
 mov rax, qword ptr [rip + .Lx595_0]
 mov qword ptr [rbp + 6776], rax
 jmp xchain294_n239_α
.Lx595_0:
 .quad .Lx595_0_s
.Lx595_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n239_α:
 mov qword ptr [rbp + 6656], 6
 mov rax, qword ptr [rip + .Lx596_0]
 mov qword ptr [rbp + 6664], rax
 jmp xchain294_n240_α
.Lx596_0:
 .quad 40
# IR_LIT_STRING
 xchain294_n240_α:
 mov qword ptr [rbp + 6624], 1
 mov rax, qword ptr [rip + .Lx597_0]
 mov qword ptr [rbp + 6632], rax
 jmp xchain294_n241_α
.Lx597_0:
 .quad .Lx597_0_s
.Lx597_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n241_α:
 mov qword ptr [rbp + 6512], 6
 mov rax, qword ptr [rip + .Lx598_0]
 mov qword ptr [rbp + 6520], rax
 jmp xchain294_n242_α
.Lx598_0:
 .quad 53
# IR_LIT_STRING
 xchain294_n242_α:
 mov qword ptr [rbp + 6480], 1
 mov rax, qword ptr [rip + .Lx599_0]
 mov qword ptr [rbp + 6488], rax
 jmp xchain294_n243_α
.Lx599_0:
 .quad .Lx599_0_s
.Lx599_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n243_α:
 mov qword ptr [rbp + 6368], 6
 mov rax, qword ptr [rip + .Lx600_0]
 mov qword ptr [rbp + 6376], rax
 jmp xchain294_n244_α
.Lx600_0:
 .quad 59
# IR_LIT_STRING
 xchain294_n244_α:
 mov qword ptr [rbp + 6336], 1
 mov rax, qword ptr [rip + .Lx601_0]
 mov qword ptr [rbp + 6344], rax
 jmp xchain294_n245_α
.Lx601_0:
 .quad .Lx601_0_s
.Lx601_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n245_α:
 mov qword ptr [rbp + 6224], 6
 mov rax, qword ptr [rip + .Lx602_0]
 mov qword ptr [rbp + 6232], rax
 jmp xchain294_n246_α
.Lx602_0:
 .quad 8
# IR_LIT_STRING
 xchain294_n246_α:
 mov qword ptr [rbp + 6192], 1
 mov rax, qword ptr [rip + .Lx603_0]
 mov qword ptr [rbp + 6200], rax
 jmp xchain294_n247_α
.Lx603_0:
 .quad .Lx603_0_s
.Lx603_0_s:
 .string "[]"
 xchain294_n247_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6336] -> [zr+6272]
 mov rax, qword ptr [rbp + 6336]
 mov qword ptr [rbp + 6272], rax
 mov rax, qword ptr [rbp + 6344]
 mov qword ptr [rbp + 6280], rax
# marshal arg1 = producer-box slot [zr+6224] -> [zr+6288]
 mov rax, qword ptr [rbp + 6224]
 mov qword ptr [rbp + 6288], rax
 mov rax, qword ptr [rbp + 6232]
 mov qword ptr [rbp + 6296], rax
# marshal arg2 = producer-box slot [zr+6192] -> [zr+6304]
 mov rax, qword ptr [rbp + 6192]
 mov qword ptr [rbp + 6304], rax
 mov rax, qword ptr [rbp + 6200]
 mov qword ptr [rbp + 6312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6272]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6256], rax
 mov qword ptr [rbp + 6264], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n248_α
 xchain294_n247_β:
 jmp proc_define$2F2_ω
 xchain294_n248_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6480] -> [zr+6416]
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 6416], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 6424], rax
# marshal arg1 = producer-box slot [zr+6368] -> [zr+6432]
 mov rax, qword ptr [rbp + 6368]
 mov qword ptr [rbp + 6432], rax
 mov rax, qword ptr [rbp + 6376]
 mov qword ptr [rbp + 6440], rax
# marshal arg2 = producer-box slot [zr+6256] -> [zr+6448]
 mov rax, qword ptr [rbp + 6256]
 mov qword ptr [rbp + 6448], rax
 mov rax, qword ptr [rbp + 6264]
 mov qword ptr [rbp + 6456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6416]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6400], rax
 mov qword ptr [rbp + 6408], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n249_α
 xchain294_n248_β:
 jmp proc_define$2F2_ω
 xchain294_n249_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6624] -> [zr+6560]
 mov rax, qword ptr [rbp + 6624]
 mov qword ptr [rbp + 6560], rax
 mov rax, qword ptr [rbp + 6632]
 mov qword ptr [rbp + 6568], rax
# marshal arg1 = producer-box slot [zr+6512] -> [zr+6576]
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 6576], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 6584], rax
# marshal arg2 = producer-box slot [zr+6400] -> [zr+6592]
 mov rax, qword ptr [rbp + 6400]
 mov qword ptr [rbp + 6592], rax
 mov rax, qword ptr [rbp + 6408]
 mov qword ptr [rbp + 6600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6560]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6544], rax
 mov qword ptr [rbp + 6552], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n250_α
 xchain294_n249_β:
 jmp proc_define$2F2_ω
 xchain294_n250_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6768] -> [zr+6704]
 mov rax, qword ptr [rbp + 6768]
 mov qword ptr [rbp + 6704], rax
 mov rax, qword ptr [rbp + 6776]
 mov qword ptr [rbp + 6712], rax
# marshal arg1 = producer-box slot [zr+6656] -> [zr+6720]
 mov rax, qword ptr [rbp + 6656]
 mov qword ptr [rbp + 6720], rax
 mov rax, qword ptr [rbp + 6664]
 mov qword ptr [rbp + 6728], rax
# marshal arg2 = producer-box slot [zr+6544] -> [zr+6736]
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 6736], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 6744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6704]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6688], rax
 mov qword ptr [rbp + 6696], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n251_α
 xchain294_n250_β:
 jmp proc_define$2F2_ω
 xchain294_n251_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6912] -> [zr+6848]
 mov rax, qword ptr [rbp + 6912]
 mov qword ptr [rbp + 6848], rax
 mov rax, qword ptr [rbp + 6920]
 mov qword ptr [rbp + 6856], rax
# marshal arg1 = producer-box slot [zr+6800] -> [zr+6864]
 mov rax, qword ptr [rbp + 6800]
 mov qword ptr [rbp + 6864], rax
 mov rax, qword ptr [rbp + 6808]
 mov qword ptr [rbp + 6872], rax
# marshal arg2 = producer-box slot [zr+6688] -> [zr+6880]
 mov rax, qword ptr [rbp + 6688]
 mov qword ptr [rbp + 6880], rax
 mov rax, qword ptr [rbp + 6696]
 mov qword ptr [rbp + 6888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6848]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6832], rax
 mov qword ptr [rbp + 6840], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n252_α
 xchain294_n251_β:
 jmp proc_define$2F2_ω
 xchain294_n252_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7056] -> [zr+6992]
 mov rax, qword ptr [rbp + 7056]
 mov qword ptr [rbp + 6992], rax
 mov rax, qword ptr [rbp + 7064]
 mov qword ptr [rbp + 7000], rax
# marshal arg1 = producer-box slot [zr+6944] -> [zr+7008]
 mov rax, qword ptr [rbp + 6944]
 mov qword ptr [rbp + 7008], rax
 mov rax, qword ptr [rbp + 6952]
 mov qword ptr [rbp + 7016], rax
# marshal arg2 = producer-box slot [zr+6832] -> [zr+7024]
 mov rax, qword ptr [rbp + 6832]
 mov qword ptr [rbp + 7024], rax
 mov rax, qword ptr [rbp + 6840]
 mov qword ptr [rbp + 7032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6992]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6976], rax
 mov qword ptr [rbp + 6984], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n253_α
 xchain294_n252_β:
 jmp proc_define$2F2_ω
 xchain294_n253_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7200] -> [zr+7136]
 mov rax, qword ptr [rbp + 7200]
 mov qword ptr [rbp + 7136], rax
 mov rax, qword ptr [rbp + 7208]
 mov qword ptr [rbp + 7144], rax
# marshal arg1 = producer-box slot [zr+7088] -> [zr+7152]
 mov rax, qword ptr [rbp + 7088]
 mov qword ptr [rbp + 7152], rax
 mov rax, qword ptr [rbp + 7096]
 mov qword ptr [rbp + 7160], rax
# marshal arg2 = producer-box slot [zr+6976] -> [zr+7168]
 mov rax, qword ptr [rbp + 6976]
 mov qword ptr [rbp + 7168], rax
 mov rax, qword ptr [rbp + 6984]
 mov qword ptr [rbp + 7176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7136]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7120], rax
 mov qword ptr [rbp + 7128], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n254_α
 xchain294_n253_β:
 jmp proc_define$2F2_ω
 xchain294_n254_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7344] -> [zr+7280]
 mov rax, qword ptr [rbp + 7344]
 mov qword ptr [rbp + 7280], rax
 mov rax, qword ptr [rbp + 7352]
 mov qword ptr [rbp + 7288], rax
# marshal arg1 = producer-box slot [zr+7232] -> [zr+7296]
 mov rax, qword ptr [rbp + 7232]
 mov qword ptr [rbp + 7296], rax
 mov rax, qword ptr [rbp + 7240]
 mov qword ptr [rbp + 7304], rax
# marshal arg2 = producer-box slot [zr+7120] -> [zr+7312]
 mov rax, qword ptr [rbp + 7120]
 mov qword ptr [rbp + 7312], rax
 mov rax, qword ptr [rbp + 7128]
 mov qword ptr [rbp + 7320], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7280]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7264], rax
 mov qword ptr [rbp + 7272], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n255_α
 xchain294_n254_β:
 jmp proc_define$2F2_ω
 xchain294_n255_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7488] -> [zr+7424]
 mov rax, qword ptr [rbp + 7488]
 mov qword ptr [rbp + 7424], rax
 mov rax, qword ptr [rbp + 7496]
 mov qword ptr [rbp + 7432], rax
# marshal arg1 = producer-box slot [zr+7376] -> [zr+7440]
 mov rax, qword ptr [rbp + 7376]
 mov qword ptr [rbp + 7440], rax
 mov rax, qword ptr [rbp + 7384]
 mov qword ptr [rbp + 7448], rax
# marshal arg2 = producer-box slot [zr+7264] -> [zr+7456]
 mov rax, qword ptr [rbp + 7264]
 mov qword ptr [rbp + 7456], rax
 mov rax, qword ptr [rbp + 7272]
 mov qword ptr [rbp + 7464], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7424]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7408], rax
 mov qword ptr [rbp + 7416], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n256_α
 xchain294_n255_β:
 jmp proc_define$2F2_ω
 xchain294_n256_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7632] -> [zr+7568]
 mov rax, qword ptr [rbp + 7632]
 mov qword ptr [rbp + 7568], rax
 mov rax, qword ptr [rbp + 7640]
 mov qword ptr [rbp + 7576], rax
# marshal arg1 = producer-box slot [zr+7520] -> [zr+7584]
 mov rax, qword ptr [rbp + 7520]
 mov qword ptr [rbp + 7584], rax
 mov rax, qword ptr [rbp + 7528]
 mov qword ptr [rbp + 7592], rax
# marshal arg2 = producer-box slot [zr+7408] -> [zr+7600]
 mov rax, qword ptr [rbp + 7408]
 mov qword ptr [rbp + 7600], rax
 mov rax, qword ptr [rbp + 7416]
 mov qword ptr [rbp + 7608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7568]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7552], rax
 mov qword ptr [rbp + 7560], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n257_α
 xchain294_n256_β:
 jmp proc_define$2F2_ω
 xchain294_n257_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7776] -> [zr+7712]
 mov rax, qword ptr [rbp + 7776]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 7784]
 mov qword ptr [rbp + 7720], rax
# marshal arg1 = producer-box slot [zr+7664] -> [zr+7728]
 mov rax, qword ptr [rbp + 7664]
 mov qword ptr [rbp + 7728], rax
 mov rax, qword ptr [rbp + 7672]
 mov qword ptr [rbp + 7736], rax
# marshal arg2 = producer-box slot [zr+7552] -> [zr+7744]
 mov rax, qword ptr [rbp + 7552]
 mov qword ptr [rbp + 7744], rax
 mov rax, qword ptr [rbp + 7560]
 mov qword ptr [rbp + 7752], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7712]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7696], rax
 mov qword ptr [rbp + 7704], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n258_α
 xchain294_n257_β:
 jmp proc_define$2F2_ω
 xchain294_n258_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7920] -> [zr+7856]
 mov rax, qword ptr [rbp + 7920]
 mov qword ptr [rbp + 7856], rax
 mov rax, qword ptr [rbp + 7928]
 mov qword ptr [rbp + 7864], rax
# marshal arg1 = producer-box slot [zr+7808] -> [zr+7872]
 mov rax, qword ptr [rbp + 7808]
 mov qword ptr [rbp + 7872], rax
 mov rax, qword ptr [rbp + 7816]
 mov qword ptr [rbp + 7880], rax
# marshal arg2 = producer-box slot [zr+7696] -> [zr+7888]
 mov rax, qword ptr [rbp + 7696]
 mov qword ptr [rbp + 7888], rax
 mov rax, qword ptr [rbp + 7704]
 mov qword ptr [rbp + 7896], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7856]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n259_α
 xchain294_n258_β:
 jmp proc_define$2F2_ω
 xchain294_n259_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8064] -> [zr+8000]
 mov rax, qword ptr [rbp + 8064]
 mov qword ptr [rbp + 8000], rax
 mov rax, qword ptr [rbp + 8072]
 mov qword ptr [rbp + 8008], rax
# marshal arg1 = producer-box slot [zr+7952] -> [zr+8016]
 mov rax, qword ptr [rbp + 7952]
 mov qword ptr [rbp + 8016], rax
 mov rax, qword ptr [rbp + 7960]
 mov qword ptr [rbp + 8024], rax
# marshal arg2 = producer-box slot [zr+7840] -> [zr+8032]
 mov rax, qword ptr [rbp + 7840]
 mov qword ptr [rbp + 8032], rax
 mov rax, qword ptr [rbp + 7848]
 mov qword ptr [rbp + 8040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8000]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7984], rax
 mov qword ptr [rbp + 7992], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n260_α
 xchain294_n259_β:
 jmp proc_define$2F2_ω
 xchain294_n260_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8208] -> [zr+8144]
 mov rax, qword ptr [rbp + 8208]
 mov qword ptr [rbp + 8144], rax
 mov rax, qword ptr [rbp + 8216]
 mov qword ptr [rbp + 8152], rax
# marshal arg1 = producer-box slot [zr+8096] -> [zr+8160]
 mov rax, qword ptr [rbp + 8096]
 mov qword ptr [rbp + 8160], rax
 mov rax, qword ptr [rbp + 8104]
 mov qword ptr [rbp + 8168], rax
# marshal arg2 = producer-box slot [zr+7984] -> [zr+8176]
 mov rax, qword ptr [rbp + 7984]
 mov qword ptr [rbp + 8176], rax
 mov rax, qword ptr [rbp + 7992]
 mov qword ptr [rbp + 8184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8144]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8128], rax
 mov qword ptr [rbp + 8136], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n261_α
 xchain294_n260_β:
 jmp proc_define$2F2_ω
 xchain294_n261_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8352] -> [zr+8288]
 mov rax, qword ptr [rbp + 8352]
 mov qword ptr [rbp + 8288], rax
 mov rax, qword ptr [rbp + 8360]
 mov qword ptr [rbp + 8296], rax
# marshal arg1 = producer-box slot [zr+8240] -> [zr+8304]
 mov rax, qword ptr [rbp + 8240]
 mov qword ptr [rbp + 8304], rax
 mov rax, qword ptr [rbp + 8248]
 mov qword ptr [rbp + 8312], rax
# marshal arg2 = producer-box slot [zr+8128] -> [zr+8320]
 mov rax, qword ptr [rbp + 8128]
 mov qword ptr [rbp + 8320], rax
 mov rax, qword ptr [rbp + 8136]
 mov qword ptr [rbp + 8328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8288]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8272], rax
 mov qword ptr [rbp + 8280], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n262_α
 xchain294_n261_β:
 jmp proc_define$2F2_ω
 xchain294_n262_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8496] -> [zr+8432]
 mov rax, qword ptr [rbp + 8496]
 mov qword ptr [rbp + 8432], rax
 mov rax, qword ptr [rbp + 8504]
 mov qword ptr [rbp + 8440], rax
# marshal arg1 = producer-box slot [zr+8384] -> [zr+8448]
 mov rax, qword ptr [rbp + 8384]
 mov qword ptr [rbp + 8448], rax
 mov rax, qword ptr [rbp + 8392]
 mov qword ptr [rbp + 8456], rax
# marshal arg2 = producer-box slot [zr+8272] -> [zr+8464]
 mov rax, qword ptr [rbp + 8272]
 mov qword ptr [rbp + 8464], rax
 mov rax, qword ptr [rbp + 8280]
 mov qword ptr [rbp + 8472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8432]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8416], rax
 mov qword ptr [rbp + 8424], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n263_α
 xchain294_n262_β:
 jmp proc_define$2F2_ω
 xchain294_n263_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8640] -> [zr+8576]
 mov rax, qword ptr [rbp + 8640]
 mov qword ptr [rbp + 8576], rax
 mov rax, qword ptr [rbp + 8648]
 mov qword ptr [rbp + 8584], rax
# marshal arg1 = producer-box slot [zr+8528] -> [zr+8592]
 mov rax, qword ptr [rbp + 8528]
 mov qword ptr [rbp + 8592], rax
 mov rax, qword ptr [rbp + 8536]
 mov qword ptr [rbp + 8600], rax
# marshal arg2 = producer-box slot [zr+8416] -> [zr+8608]
 mov rax, qword ptr [rbp + 8416]
 mov qword ptr [rbp + 8608], rax
 mov rax, qword ptr [rbp + 8424]
 mov qword ptr [rbp + 8616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8576]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8560], rax
 mov qword ptr [rbp + 8568], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n264_α
 xchain294_n263_β:
 jmp proc_define$2F2_ω
 xchain294_n264_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8784] -> [zr+8720]
 mov rax, qword ptr [rbp + 8784]
 mov qword ptr [rbp + 8720], rax
 mov rax, qword ptr [rbp + 8792]
 mov qword ptr [rbp + 8728], rax
# marshal arg1 = producer-box slot [zr+8672] -> [zr+8736]
 mov rax, qword ptr [rbp + 8672]
 mov qword ptr [rbp + 8736], rax
 mov rax, qword ptr [rbp + 8680]
 mov qword ptr [rbp + 8744], rax
# marshal arg2 = producer-box slot [zr+8560] -> [zr+8752]
 mov rax, qword ptr [rbp + 8560]
 mov qword ptr [rbp + 8752], rax
 mov rax, qword ptr [rbp + 8568]
 mov qword ptr [rbp + 8760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8720]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8704], rax
 mov qword ptr [rbp + 8712], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n265_α
 xchain294_n264_β:
 jmp proc_define$2F2_ω
 xchain294_n265_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8928] -> [zr+8864]
 mov rax, qword ptr [rbp + 8928]
 mov qword ptr [rbp + 8864], rax
 mov rax, qword ptr [rbp + 8936]
 mov qword ptr [rbp + 8872], rax
# marshal arg1 = producer-box slot [zr+8816] -> [zr+8880]
 mov rax, qword ptr [rbp + 8816]
 mov qword ptr [rbp + 8880], rax
 mov rax, qword ptr [rbp + 8824]
 mov qword ptr [rbp + 8888], rax
# marshal arg2 = producer-box slot [zr+8704] -> [zr+8896]
 mov rax, qword ptr [rbp + 8704]
 mov qword ptr [rbp + 8896], rax
 mov rax, qword ptr [rbp + 8712]
 mov qword ptr [rbp + 8904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8864]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8848], rax
 mov qword ptr [rbp + 8856], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n266_α
 xchain294_n265_β:
 jmp proc_define$2F2_ω
 xchain294_n266_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9072] -> [zr+9008]
 mov rax, qword ptr [rbp + 9072]
 mov qword ptr [rbp + 9008], rax
 mov rax, qword ptr [rbp + 9080]
 mov qword ptr [rbp + 9016], rax
# marshal arg1 = producer-box slot [zr+8960] -> [zr+9024]
 mov rax, qword ptr [rbp + 8960]
 mov qword ptr [rbp + 9024], rax
 mov rax, qword ptr [rbp + 8968]
 mov qword ptr [rbp + 9032], rax
# marshal arg2 = producer-box slot [zr+8848] -> [zr+9040]
 mov rax, qword ptr [rbp + 8848]
 mov qword ptr [rbp + 9040], rax
 mov rax, qword ptr [rbp + 8856]
 mov qword ptr [rbp + 9048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9008]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8992], rax
 mov qword ptr [rbp + 9000], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n267_α
 xchain294_n266_β:
 jmp proc_define$2F2_ω
 xchain294_n267_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9216] -> [zr+9152]
 mov rax, qword ptr [rbp + 9216]
 mov qword ptr [rbp + 9152], rax
 mov rax, qword ptr [rbp + 9224]
 mov qword ptr [rbp + 9160], rax
# marshal arg1 = producer-box slot [zr+9104] -> [zr+9168]
 mov rax, qword ptr [rbp + 9104]
 mov qword ptr [rbp + 9168], rax
 mov rax, qword ptr [rbp + 9112]
 mov qword ptr [rbp + 9176], rax
# marshal arg2 = producer-box slot [zr+8992] -> [zr+9184]
 mov rax, qword ptr [rbp + 8992]
 mov qword ptr [rbp + 9184], rax
 mov rax, qword ptr [rbp + 9000]
 mov qword ptr [rbp + 9192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9152]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9136], rax
 mov qword ptr [rbp + 9144], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n268_α
 xchain294_n267_β:
 jmp proc_define$2F2_ω
 xchain294_n268_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9360] -> [zr+9296]
 mov rax, qword ptr [rbp + 9360]
 mov qword ptr [rbp + 9296], rax
 mov rax, qword ptr [rbp + 9368]
 mov qword ptr [rbp + 9304], rax
# marshal arg1 = producer-box slot [zr+9248] -> [zr+9312]
 mov rax, qword ptr [rbp + 9248]
 mov qword ptr [rbp + 9312], rax
 mov rax, qword ptr [rbp + 9256]
 mov qword ptr [rbp + 9320], rax
# marshal arg2 = producer-box slot [zr+9136] -> [zr+9328]
 mov rax, qword ptr [rbp + 9136]
 mov qword ptr [rbp + 9328], rax
 mov rax, qword ptr [rbp + 9144]
 mov qword ptr [rbp + 9336], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9296]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9280], rax
 mov qword ptr [rbp + 9288], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n269_α
 xchain294_n268_β:
 jmp proc_define$2F2_ω
 xchain294_n269_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9504] -> [zr+9440]
 mov rax, qword ptr [rbp + 9504]
 mov qword ptr [rbp + 9440], rax
 mov rax, qword ptr [rbp + 9512]
 mov qword ptr [rbp + 9448], rax
# marshal arg1 = producer-box slot [zr+9392] -> [zr+9456]
 mov rax, qword ptr [rbp + 9392]
 mov qword ptr [rbp + 9456], rax
 mov rax, qword ptr [rbp + 9400]
 mov qword ptr [rbp + 9464], rax
# marshal arg2 = producer-box slot [zr+9280] -> [zr+9472]
 mov rax, qword ptr [rbp + 9280]
 mov qword ptr [rbp + 9472], rax
 mov rax, qword ptr [rbp + 9288]
 mov qword ptr [rbp + 9480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9440]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9424], rax
 mov qword ptr [rbp + 9432], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n270_α
 xchain294_n269_β:
 jmp proc_define$2F2_ω
 xchain294_n270_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9648] -> [zr+9584]
 mov rax, qword ptr [rbp + 9648]
 mov qword ptr [rbp + 9584], rax
 mov rax, qword ptr [rbp + 9656]
 mov qword ptr [rbp + 9592], rax
# marshal arg1 = producer-box slot [zr+9536] -> [zr+9600]
 mov rax, qword ptr [rbp + 9536]
 mov qword ptr [rbp + 9600], rax
 mov rax, qword ptr [rbp + 9544]
 mov qword ptr [rbp + 9608], rax
# marshal arg2 = producer-box slot [zr+9424] -> [zr+9616]
 mov rax, qword ptr [rbp + 9424]
 mov qword ptr [rbp + 9616], rax
 mov rax, qword ptr [rbp + 9432]
 mov qword ptr [rbp + 9624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9584]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9568], rax
 mov qword ptr [rbp + 9576], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n271_α
 xchain294_n270_β:
 jmp proc_define$2F2_ω
 xchain294_n271_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9792] -> [zr+9728]
 mov rax, qword ptr [rbp + 9792]
 mov qword ptr [rbp + 9728], rax
 mov rax, qword ptr [rbp + 9800]
 mov qword ptr [rbp + 9736], rax
# marshal arg1 = producer-box slot [zr+9680] -> [zr+9744]
 mov rax, qword ptr [rbp + 9680]
 mov qword ptr [rbp + 9744], rax
 mov rax, qword ptr [rbp + 9688]
 mov qword ptr [rbp + 9752], rax
# marshal arg2 = producer-box slot [zr+9568] -> [zr+9760]
 mov rax, qword ptr [rbp + 9568]
 mov qword ptr [rbp + 9760], rax
 mov rax, qword ptr [rbp + 9576]
 mov qword ptr [rbp + 9768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9728]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9712], rax
 mov qword ptr [rbp + 9720], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n272_α
 xchain294_n271_β:
 jmp proc_define$2F2_ω
 xchain294_n272_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9936] -> [zr+9872]
 mov rax, qword ptr [rbp + 9936]
 mov qword ptr [rbp + 9872], rax
 mov rax, qword ptr [rbp + 9944]
 mov qword ptr [rbp + 9880], rax
# marshal arg1 = producer-box slot [zr+9824] -> [zr+9888]
 mov rax, qword ptr [rbp + 9824]
 mov qword ptr [rbp + 9888], rax
 mov rax, qword ptr [rbp + 9832]
 mov qword ptr [rbp + 9896], rax
# marshal arg2 = producer-box slot [zr+9712] -> [zr+9904]
 mov rax, qword ptr [rbp + 9712]
 mov qword ptr [rbp + 9904], rax
 mov rax, qword ptr [rbp + 9720]
 mov qword ptr [rbp + 9912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9872]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9856], rax
 mov qword ptr [rbp + 9864], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n273_α
 xchain294_n272_β:
 jmp proc_define$2F2_ω
 xchain294_n273_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10080] -> [zr+10016]
 mov rax, qword ptr [rbp + 10080]
 mov qword ptr [rbp + 10016], rax
 mov rax, qword ptr [rbp + 10088]
 mov qword ptr [rbp + 10024], rax
# marshal arg1 = producer-box slot [zr+9968] -> [zr+10032]
 mov rax, qword ptr [rbp + 9968]
 mov qword ptr [rbp + 10032], rax
 mov rax, qword ptr [rbp + 9976]
 mov qword ptr [rbp + 10040], rax
# marshal arg2 = producer-box slot [zr+9856] -> [zr+10048]
 mov rax, qword ptr [rbp + 9856]
 mov qword ptr [rbp + 10048], rax
 mov rax, qword ptr [rbp + 9864]
 mov qword ptr [rbp + 10056], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10016]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10000], rax
 mov qword ptr [rbp + 10008], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n274_α
 xchain294_n273_β:
 jmp proc_define$2F2_ω
 xchain294_n274_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10224] -> [zr+10160]
 mov rax, qword ptr [rbp + 10224]
 mov qword ptr [rbp + 10160], rax
 mov rax, qword ptr [rbp + 10232]
 mov qword ptr [rbp + 10168], rax
# marshal arg1 = producer-box slot [zr+10112] -> [zr+10176]
 mov rax, qword ptr [rbp + 10112]
 mov qword ptr [rbp + 10176], rax
 mov rax, qword ptr [rbp + 10120]
 mov qword ptr [rbp + 10184], rax
# marshal arg2 = producer-box slot [zr+10000] -> [zr+10192]
 mov rax, qword ptr [rbp + 10000]
 mov qword ptr [rbp + 10192], rax
 mov rax, qword ptr [rbp + 10008]
 mov qword ptr [rbp + 10200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10160]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10144], rax
 mov qword ptr [rbp + 10152], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n275_α
 xchain294_n274_β:
 jmp proc_define$2F2_ω
 xchain294_n275_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10368] -> [zr+10304]
 mov rax, qword ptr [rbp + 10368]
 mov qword ptr [rbp + 10304], rax
 mov rax, qword ptr [rbp + 10376]
 mov qword ptr [rbp + 10312], rax
# marshal arg1 = producer-box slot [zr+10256] -> [zr+10320]
 mov rax, qword ptr [rbp + 10256]
 mov qword ptr [rbp + 10320], rax
 mov rax, qword ptr [rbp + 10264]
 mov qword ptr [rbp + 10328], rax
# marshal arg2 = producer-box slot [zr+10144] -> [zr+10336]
 mov rax, qword ptr [rbp + 10144]
 mov qword ptr [rbp + 10336], rax
 mov rax, qword ptr [rbp + 10152]
 mov qword ptr [rbp + 10344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10304]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10288], rax
 mov qword ptr [rbp + 10296], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n276_α
 xchain294_n275_β:
 jmp proc_define$2F2_ω
 xchain294_n276_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10512] -> [zr+10448]
 mov rax, qword ptr [rbp + 10512]
 mov qword ptr [rbp + 10448], rax
 mov rax, qword ptr [rbp + 10520]
 mov qword ptr [rbp + 10456], rax
# marshal arg1 = producer-box slot [zr+10400] -> [zr+10464]
 mov rax, qword ptr [rbp + 10400]
 mov qword ptr [rbp + 10464], rax
 mov rax, qword ptr [rbp + 10408]
 mov qword ptr [rbp + 10472], rax
# marshal arg2 = producer-box slot [zr+10288] -> [zr+10480]
 mov rax, qword ptr [rbp + 10288]
 mov qword ptr [rbp + 10480], rax
 mov rax, qword ptr [rbp + 10296]
 mov qword ptr [rbp + 10488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10448]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10432], rax
 mov qword ptr [rbp + 10440], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n277_α
 xchain294_n276_β:
 jmp proc_define$2F2_ω
 xchain294_n277_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10656] -> [zr+10592]
 mov rax, qword ptr [rbp + 10656]
 mov qword ptr [rbp + 10592], rax
 mov rax, qword ptr [rbp + 10664]
 mov qword ptr [rbp + 10600], rax
# marshal arg1 = producer-box slot [zr+10544] -> [zr+10608]
 mov rax, qword ptr [rbp + 10544]
 mov qword ptr [rbp + 10608], rax
 mov rax, qword ptr [rbp + 10552]
 mov qword ptr [rbp + 10616], rax
# marshal arg2 = producer-box slot [zr+10432] -> [zr+10624]
 mov rax, qword ptr [rbp + 10432]
 mov qword ptr [rbp + 10624], rax
 mov rax, qword ptr [rbp + 10440]
 mov qword ptr [rbp + 10632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10592]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10576], rax
 mov qword ptr [rbp + 10584], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n278_α
 xchain294_n277_β:
 jmp proc_define$2F2_ω
 xchain294_n278_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10800] -> [zr+10736]
 mov rax, qword ptr [rbp + 10800]
 mov qword ptr [rbp + 10736], rax
 mov rax, qword ptr [rbp + 10808]
 mov qword ptr [rbp + 10744], rax
# marshal arg1 = producer-box slot [zr+10688] -> [zr+10752]
 mov rax, qword ptr [rbp + 10688]
 mov qword ptr [rbp + 10752], rax
 mov rax, qword ptr [rbp + 10696]
 mov qword ptr [rbp + 10760], rax
# marshal arg2 = producer-box slot [zr+10576] -> [zr+10768]
 mov rax, qword ptr [rbp + 10576]
 mov qword ptr [rbp + 10768], rax
 mov rax, qword ptr [rbp + 10584]
 mov qword ptr [rbp + 10776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10736]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10720], rax
 mov qword ptr [rbp + 10728], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n279_α
 xchain294_n278_β:
 jmp proc_define$2F2_ω
 xchain294_n279_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10944] -> [zr+10880]
 mov rax, qword ptr [rbp + 10944]
 mov qword ptr [rbp + 10880], rax
 mov rax, qword ptr [rbp + 10952]
 mov qword ptr [rbp + 10888], rax
# marshal arg1 = producer-box slot [zr+10832] -> [zr+10896]
 mov rax, qword ptr [rbp + 10832]
 mov qword ptr [rbp + 10896], rax
 mov rax, qword ptr [rbp + 10840]
 mov qword ptr [rbp + 10904], rax
# marshal arg2 = producer-box slot [zr+10720] -> [zr+10912]
 mov rax, qword ptr [rbp + 10720]
 mov qword ptr [rbp + 10912], rax
 mov rax, qword ptr [rbp + 10728]
 mov qword ptr [rbp + 10920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10880]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10864], rax
 mov qword ptr [rbp + 10872], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n280_α
 xchain294_n279_β:
 jmp proc_define$2F2_ω
 xchain294_n280_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11088] -> [zr+11024]
 mov rax, qword ptr [rbp + 11088]
 mov qword ptr [rbp + 11024], rax
 mov rax, qword ptr [rbp + 11096]
 mov qword ptr [rbp + 11032], rax
# marshal arg1 = producer-box slot [zr+10976] -> [zr+11040]
 mov rax, qword ptr [rbp + 10976]
 mov qword ptr [rbp + 11040], rax
 mov rax, qword ptr [rbp + 10984]
 mov qword ptr [rbp + 11048], rax
# marshal arg2 = producer-box slot [zr+10864] -> [zr+11056]
 mov rax, qword ptr [rbp + 10864]
 mov qword ptr [rbp + 11056], rax
 mov rax, qword ptr [rbp + 10872]
 mov qword ptr [rbp + 11064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11024]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11008], rax
 mov qword ptr [rbp + 11016], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n281_α
 xchain294_n280_β:
 jmp proc_define$2F2_ω
 xchain294_n281_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11232] -> [zr+11168]
 mov rax, qword ptr [rbp + 11232]
 mov qword ptr [rbp + 11168], rax
 mov rax, qword ptr [rbp + 11240]
 mov qword ptr [rbp + 11176], rax
# marshal arg1 = producer-box slot [zr+11120] -> [zr+11184]
 mov rax, qword ptr [rbp + 11120]
 mov qword ptr [rbp + 11184], rax
 mov rax, qword ptr [rbp + 11128]
 mov qword ptr [rbp + 11192], rax
# marshal arg2 = producer-box slot [zr+11008] -> [zr+11200]
 mov rax, qword ptr [rbp + 11008]
 mov qword ptr [rbp + 11200], rax
 mov rax, qword ptr [rbp + 11016]
 mov qword ptr [rbp + 11208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11168]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11152], rax
 mov qword ptr [rbp + 11160], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n282_α
 xchain294_n281_β:
 jmp proc_define$2F2_ω
 xchain294_n282_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11376] -> [zr+11312]
 mov rax, qword ptr [rbp + 11376]
 mov qword ptr [rbp + 11312], rax
 mov rax, qword ptr [rbp + 11384]
 mov qword ptr [rbp + 11320], rax
# marshal arg1 = producer-box slot [zr+11264] -> [zr+11328]
 mov rax, qword ptr [rbp + 11264]
 mov qword ptr [rbp + 11328], rax
 mov rax, qword ptr [rbp + 11272]
 mov qword ptr [rbp + 11336], rax
# marshal arg2 = producer-box slot [zr+11152] -> [zr+11344]
 mov rax, qword ptr [rbp + 11152]
 mov qword ptr [rbp + 11344], rax
 mov rax, qword ptr [rbp + 11160]
 mov qword ptr [rbp + 11352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11312]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11296], rax
 mov qword ptr [rbp + 11304], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n283_α
 xchain294_n282_β:
 jmp proc_define$2F2_ω
 xchain294_n283_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11520] -> [zr+11456]
 mov rax, qword ptr [rbp + 11520]
 mov qword ptr [rbp + 11456], rax
 mov rax, qword ptr [rbp + 11528]
 mov qword ptr [rbp + 11464], rax
# marshal arg1 = producer-box slot [zr+11408] -> [zr+11472]
 mov rax, qword ptr [rbp + 11408]
 mov qword ptr [rbp + 11472], rax
 mov rax, qword ptr [rbp + 11416]
 mov qword ptr [rbp + 11480], rax
# marshal arg2 = producer-box slot [zr+11296] -> [zr+11488]
 mov rax, qword ptr [rbp + 11296]
 mov qword ptr [rbp + 11488], rax
 mov rax, qword ptr [rbp + 11304]
 mov qword ptr [rbp + 11496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11456]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11440], rax
 mov qword ptr [rbp + 11448], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n284_α
 xchain294_n283_β:
 jmp proc_define$2F2_ω
 xchain294_n284_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11664] -> [zr+11600]
 mov rax, qword ptr [rbp + 11664]
 mov qword ptr [rbp + 11600], rax
 mov rax, qword ptr [rbp + 11672]
 mov qword ptr [rbp + 11608], rax
# marshal arg1 = producer-box slot [zr+11552] -> [zr+11616]
 mov rax, qword ptr [rbp + 11552]
 mov qword ptr [rbp + 11616], rax
 mov rax, qword ptr [rbp + 11560]
 mov qword ptr [rbp + 11624], rax
# marshal arg2 = producer-box slot [zr+11440] -> [zr+11632]
 mov rax, qword ptr [rbp + 11440]
 mov qword ptr [rbp + 11632], rax
 mov rax, qword ptr [rbp + 11448]
 mov qword ptr [rbp + 11640], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11600]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11584], rax
 mov qword ptr [rbp + 11592], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n285_α
 xchain294_n284_β:
 jmp proc_define$2F2_ω
 xchain294_n285_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11808] -> [zr+11744]
 mov rax, qword ptr [rbp + 11808]
 mov qword ptr [rbp + 11744], rax
 mov rax, qword ptr [rbp + 11816]
 mov qword ptr [rbp + 11752], rax
# marshal arg1 = producer-box slot [zr+11696] -> [zr+11760]
 mov rax, qword ptr [rbp + 11696]
 mov qword ptr [rbp + 11760], rax
 mov rax, qword ptr [rbp + 11704]
 mov qword ptr [rbp + 11768], rax
# marshal arg2 = producer-box slot [zr+11584] -> [zr+11776]
 mov rax, qword ptr [rbp + 11584]
 mov qword ptr [rbp + 11776], rax
 mov rax, qword ptr [rbp + 11592]
 mov qword ptr [rbp + 11784], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11744]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11728], rax
 mov qword ptr [rbp + 11736], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n286_α
 xchain294_n285_β:
 jmp proc_define$2F2_ω
 xchain294_n286_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11952] -> [zr+11888]
 mov rax, qword ptr [rbp + 11952]
 mov qword ptr [rbp + 11888], rax
 mov rax, qword ptr [rbp + 11960]
 mov qword ptr [rbp + 11896], rax
# marshal arg1 = producer-box slot [zr+11840] -> [zr+11904]
 mov rax, qword ptr [rbp + 11840]
 mov qword ptr [rbp + 11904], rax
 mov rax, qword ptr [rbp + 11848]
 mov qword ptr [rbp + 11912], rax
# marshal arg2 = producer-box slot [zr+11728] -> [zr+11920]
 mov rax, qword ptr [rbp + 11728]
 mov qword ptr [rbp + 11920], rax
 mov rax, qword ptr [rbp + 11736]
 mov qword ptr [rbp + 11928], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11888]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11872], rax
 mov qword ptr [rbp + 11880], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n287_α
 xchain294_n286_β:
 jmp proc_define$2F2_ω
 xchain294_n287_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12096] -> [zr+12032]
 mov rax, qword ptr [rbp + 12096]
 mov qword ptr [rbp + 12032], rax
 mov rax, qword ptr [rbp + 12104]
 mov qword ptr [rbp + 12040], rax
# marshal arg1 = producer-box slot [zr+11984] -> [zr+12048]
 mov rax, qword ptr [rbp + 11984]
 mov qword ptr [rbp + 12048], rax
 mov rax, qword ptr [rbp + 11992]
 mov qword ptr [rbp + 12056], rax
# marshal arg2 = producer-box slot [zr+11872] -> [zr+12064]
 mov rax, qword ptr [rbp + 11872]
 mov qword ptr [rbp + 12064], rax
 mov rax, qword ptr [rbp + 11880]
 mov qword ptr [rbp + 12072], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12032]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12016], rax
 mov qword ptr [rbp + 12024], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n288_α
 xchain294_n287_β:
 jmp proc_define$2F2_ω
 xchain294_n288_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12240] -> [zr+12176]
 mov rax, qword ptr [rbp + 12240]
 mov qword ptr [rbp + 12176], rax
 mov rax, qword ptr [rbp + 12248]
 mov qword ptr [rbp + 12184], rax
# marshal arg1 = producer-box slot [zr+12128] -> [zr+12192]
 mov rax, qword ptr [rbp + 12128]
 mov qword ptr [rbp + 12192], rax
 mov rax, qword ptr [rbp + 12136]
 mov qword ptr [rbp + 12200], rax
# marshal arg2 = producer-box slot [zr+12016] -> [zr+12208]
 mov rax, qword ptr [rbp + 12016]
 mov qword ptr [rbp + 12208], rax
 mov rax, qword ptr [rbp + 12024]
 mov qword ptr [rbp + 12216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12176]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12160], rax
 mov qword ptr [rbp + 12168], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n289_α
 xchain294_n288_β:
 jmp proc_define$2F2_ω
 xchain294_n289_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12384] -> [zr+12320]
 mov rax, qword ptr [rbp + 12384]
 mov qword ptr [rbp + 12320], rax
 mov rax, qword ptr [rbp + 12392]
 mov qword ptr [rbp + 12328], rax
# marshal arg1 = producer-box slot [zr+12272] -> [zr+12336]
 mov rax, qword ptr [rbp + 12272]
 mov qword ptr [rbp + 12336], rax
 mov rax, qword ptr [rbp + 12280]
 mov qword ptr [rbp + 12344], rax
# marshal arg2 = producer-box slot [zr+12160] -> [zr+12352]
 mov rax, qword ptr [rbp + 12160]
 mov qword ptr [rbp + 12352], rax
 mov rax, qword ptr [rbp + 12168]
 mov qword ptr [rbp + 12360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12320]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12304], rax
 mov qword ptr [rbp + 12312], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n290_α
 xchain294_n289_β:
 jmp proc_define$2F2_ω
 xchain294_n290_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12528] -> [zr+12464]
 mov rax, qword ptr [rbp + 12528]
 mov qword ptr [rbp + 12464], rax
 mov rax, qword ptr [rbp + 12536]
 mov qword ptr [rbp + 12472], rax
# marshal arg1 = producer-box slot [zr+12416] -> [zr+12480]
 mov rax, qword ptr [rbp + 12416]
 mov qword ptr [rbp + 12480], rax
 mov rax, qword ptr [rbp + 12424]
 mov qword ptr [rbp + 12488], rax
# marshal arg2 = producer-box slot [zr+12304] -> [zr+12496]
 mov rax, qword ptr [rbp + 12304]
 mov qword ptr [rbp + 12496], rax
 mov rax, qword ptr [rbp + 12312]
 mov qword ptr [rbp + 12504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12464]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12448], rax
 mov qword ptr [rbp + 12456], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n291_α
 xchain294_n290_β:
 jmp proc_define$2F2_ω
 xchain294_n291_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12672] -> [zr+12608]
 mov rax, qword ptr [rbp + 12672]
 mov qword ptr [rbp + 12608], rax
 mov rax, qword ptr [rbp + 12680]
 mov qword ptr [rbp + 12616], rax
# marshal arg1 = producer-box slot [zr+12560] -> [zr+12624]
 mov rax, qword ptr [rbp + 12560]
 mov qword ptr [rbp + 12624], rax
 mov rax, qword ptr [rbp + 12568]
 mov qword ptr [rbp + 12632], rax
# marshal arg2 = producer-box slot [zr+12448] -> [zr+12640]
 mov rax, qword ptr [rbp + 12448]
 mov qword ptr [rbp + 12640], rax
 mov rax, qword ptr [rbp + 12456]
 mov qword ptr [rbp + 12648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12608]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12592], rax
 mov qword ptr [rbp + 12600], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n292_α
 xchain294_n291_β:
 jmp proc_define$2F2_ω
 xchain294_n292_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12816] -> [zr+12752]
 mov rax, qword ptr [rbp + 12816]
 mov qword ptr [rbp + 12752], rax
 mov rax, qword ptr [rbp + 12824]
 mov qword ptr [rbp + 12760], rax
# marshal arg1 = producer-box slot [zr+12704] -> [zr+12768]
 mov rax, qword ptr [rbp + 12704]
 mov qword ptr [rbp + 12768], rax
 mov rax, qword ptr [rbp + 12712]
 mov qword ptr [rbp + 12776], rax
# marshal arg2 = producer-box slot [zr+12592] -> [zr+12784]
 mov rax, qword ptr [rbp + 12592]
 mov qword ptr [rbp + 12784], rax
 mov rax, qword ptr [rbp + 12600]
 mov qword ptr [rbp + 12792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12752]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12736], rax
 mov qword ptr [rbp + 12744], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n293_α
 xchain294_n292_β:
 jmp proc_define$2F2_ω
 xchain294_n293_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12960] -> [zr+12896]
 mov rax, qword ptr [rbp + 12960]
 mov qword ptr [rbp + 12896], rax
 mov rax, qword ptr [rbp + 12968]
 mov qword ptr [rbp + 12904], rax
# marshal arg1 = producer-box slot [zr+12848] -> [zr+12912]
 mov rax, qword ptr [rbp + 12848]
 mov qword ptr [rbp + 12912], rax
 mov rax, qword ptr [rbp + 12856]
 mov qword ptr [rbp + 12920], rax
# marshal arg2 = producer-box slot [zr+12736] -> [zr+12928]
 mov rax, qword ptr [rbp + 12736]
 mov qword ptr [rbp + 12928], rax
 mov rax, qword ptr [rbp + 12744]
 mov qword ptr [rbp + 12936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12896]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12880], rax
 mov qword ptr [rbp + 12888], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n294_α
 xchain294_n293_β:
 jmp proc_define$2F2_ω
 xchain294_n294_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13104] -> [zr+13040]
 mov rax, qword ptr [rbp + 13104]
 mov qword ptr [rbp + 13040], rax
 mov rax, qword ptr [rbp + 13112]
 mov qword ptr [rbp + 13048], rax
# marshal arg1 = producer-box slot [zr+12992] -> [zr+13056]
 mov rax, qword ptr [rbp + 12992]
 mov qword ptr [rbp + 13056], rax
 mov rax, qword ptr [rbp + 13000]
 mov qword ptr [rbp + 13064], rax
# marshal arg2 = producer-box slot [zr+12880] -> [zr+13072]
 mov rax, qword ptr [rbp + 12880]
 mov qword ptr [rbp + 13072], rax
 mov rax, qword ptr [rbp + 12888]
 mov qword ptr [rbp + 13080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13040]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13024], rax
 mov qword ptr [rbp + 13032], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n295_α
 xchain294_n294_β:
 jmp proc_define$2F2_ω
 xchain294_n295_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13248] -> [zr+13184]
 mov rax, qword ptr [rbp + 13248]
 mov qword ptr [rbp + 13184], rax
 mov rax, qword ptr [rbp + 13256]
 mov qword ptr [rbp + 13192], rax
# marshal arg1 = producer-box slot [zr+13136] -> [zr+13200]
 mov rax, qword ptr [rbp + 13136]
 mov qword ptr [rbp + 13200], rax
 mov rax, qword ptr [rbp + 13144]
 mov qword ptr [rbp + 13208], rax
# marshal arg2 = producer-box slot [zr+13024] -> [zr+13216]
 mov rax, qword ptr [rbp + 13024]
 mov qword ptr [rbp + 13216], rax
 mov rax, qword ptr [rbp + 13032]
 mov qword ptr [rbp + 13224], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13184]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13168], rax
 mov qword ptr [rbp + 13176], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n296_α
 xchain294_n295_β:
 jmp proc_define$2F2_ω
 xchain294_n296_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13392] -> [zr+13328]
 mov rax, qword ptr [rbp + 13392]
 mov qword ptr [rbp + 13328], rax
 mov rax, qword ptr [rbp + 13400]
 mov qword ptr [rbp + 13336], rax
# marshal arg1 = producer-box slot [zr+13280] -> [zr+13344]
 mov rax, qword ptr [rbp + 13280]
 mov qword ptr [rbp + 13344], rax
 mov rax, qword ptr [rbp + 13288]
 mov qword ptr [rbp + 13352], rax
# marshal arg2 = producer-box slot [zr+13168] -> [zr+13360]
 mov rax, qword ptr [rbp + 13168]
 mov qword ptr [rbp + 13360], rax
 mov rax, qword ptr [rbp + 13176]
 mov qword ptr [rbp + 13368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13328]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13312], rax
 mov qword ptr [rbp + 13320], rdx
 cmp eax, 99
 je proc_define$2F2_ω
 jmp xchain294_n297_α
 xchain294_n296_β:
 jmp proc_define$2F2_ω
# IR_VAR_REF
 xchain294_n297_α:
 mov rax, 4294967305
 lea rdx, [rbp + 13760]
 mov qword ptr [rbp + 13424], rax
 mov qword ptr [rbp + 13432], rdx
 jmp xchain294_n298_α
# IR_LIT_STRING
 xchain294_n298_α:
 mov qword ptr [rbp + 13456], 1
 mov rax, qword ptr [rip + .Lx656_0]
 mov qword ptr [rbp + 13464], rax
 jmp xchain294_n299_α
.Lx656_0:
 .quad .Lx656_0_s
.Lx656_0_s:
 .string "[]"
 xchain294_n299_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13584] -> [zr+13504]
 mov rax, qword ptr [rbp + 13584]
 mov qword ptr [rbp + 13504], rax
 mov rax, qword ptr [rbp + 13592]
 mov qword ptr [rbp + 13512], rax
# marshal arg1 = producer-box slot [zr+13312] -> [zr+13520]
 mov rax, qword ptr [rbp + 13312]
 mov qword ptr [rbp + 13520], rax
 mov rax, qword ptr [rbp + 13320]
 mov qword ptr [rbp + 13528], rax
# marshal arg2 = producer-box slot [zr+13424] -> [zr+13536]
 mov rax, qword ptr [rbp + 13424]
 mov qword ptr [rbp + 13536], rax
 mov rax, qword ptr [rbp + 13432]
 mov qword ptr [rbp + 13544], rax
# marshal arg3 = producer-box slot [zr+13456] -> [zr+13552]
 mov rax, qword ptr [rbp + 13456]
 mov qword ptr [rbp + 13552], rax
 mov rax, qword ptr [rbp + 13464]
 mov qword ptr [rbp + 13560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13504]
 mov esi, 4
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13488], rax
 mov qword ptr [rbp + 13496], rdx
 cmp eax, 99
 je xchain294_n5_α
 jmp xchain294_n300_α
 xchain294_n299_β:
 jmp xchain294_n5_α
 xchain294_n300_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6160] -> [zr+6128]
 mov rax, qword ptr [rbp + 6160]
 mov qword ptr [rbp + 6128], rax
 mov rax, qword ptr [rbp + 6168]
 mov qword ptr [rbp + 6136], rax
# marshal arg1 = producer-box slot [zr+13488] -> [zr+6144]
 mov rax, qword ptr [rbp + 13488]
 mov qword ptr [rbp + 6144], rax
 mov rax, qword ptr [rbp + 13496]
 mov qword ptr [rbp + 6152], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 6128]
 lea r8, [rbp + 6128]
.Lx658_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx658_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx658_41
 cmp esi, 1
 jne .Lx658_55
 mov r8, rax
 jmp .Lx658_40
.Lx658_55:
 cmp esi, 2
 jne .Lx658_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx658_41
 mov r8, rax
 jmp .Lx658_40
.Lx658_56:
 cmp eax, 13
 jne .Lx658_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx658_41
 cmp rax, r8
 je .Lx658_41
 mov r8, rax
 jmp .Lx658_40
.Lx658_41:
 lea r9, [rbp + 6144]
.Lx658_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx658_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx658_43
 cmp esi, 1
 jne .Lx658_57
 mov r9, rax
 jmp .Lx658_42
.Lx658_57:
 cmp esi, 2
 jne .Lx658_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx658_43
 mov r9, rax
 jmp .Lx658_42
.Lx658_58:
 cmp eax, 13
 jne .Lx658_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx658_43
 cmp rax, r9
 je .Lx658_43
 mov r9, rax
 jmp .Lx658_42
.Lx658_43:
 cmp r8, r9
 je .Lx658_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx658_44
 cmp eax, 99
 je .Lx658_44
 cmp eax, 13
 jne .Lx658_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx658_44
 jmp .Lx658_45
.Lx658_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx658_53
 cmp eax, 99
 je .Lx658_53
 cmp eax, 13
 jne .Lx658_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx658_53
 jmp .Lx658_46
.Lx658_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx658_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx658_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx658_51
.Lx658_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx658_47
 cmp eax, 99
 je .Lx658_47
 cmp eax, 13
 jne .Lx658_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx658_47
 jmp .Lx658_48
.Lx658_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx658_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx658_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx658_51
.Lx658_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx658_49
 cmp edx, 14
 je .Lx658_53
 jmp .Lx658_52
.Lx658_49:
 cmp edx, 14
 je .Lx658_52
 cmp ecx, 7
 je .Lx658_53
 cmp edx, 7
 je .Lx658_53
 cmp ecx, 6
 jne .Lx658_50
 cmp edx, 6
 jne .Lx658_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx658_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx658_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx658_51
 jmp .Lx658_52
.Lx658_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx658_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx658_53
.Lx658_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx658_54
.Lx658_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx658_54
.Lx658_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx658_54:
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 cmp eax, 99
 je xchain294_n5_α
 jmp xchain294_n301_α
 xchain294_n300_β:
 jmp xchain294_n5_α
# IR_SUSPEND yield+resume
 xchain294_n301_α:
 lea rax, [rip + xchain294_n301_β]
 mov qword ptr [rbp + 13728], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_define$2F2_γ
 xchain294_n301_β:
 jmp xchain294_n5_α
proc_define$2F2_res:
add rsp, 8
pop rbp
proc_define$2F2_β:
jmp qword ptr [rbp + 13728]
proc_define$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_define$2F2_res]
push rax
mov rax, [rbp + 13880]
mov rbp, [rbp + 13896]
jmp rax
proc_define$2F2_ω:
mov rax, [rbp + 13888]
lea rsp, [rbp + 13904]
mov rbp, [rbp + 13896]
jmp rax
  .globl proc_interpret_built_in$2F1_α
proc_interpret_built_in$2F1_α:
#=======================================================================================================================
    .global proc_interpret_built_in$2F1_α
    .global proc_interpret_built_in$2F1_β
    .global proc_interpret_built_in$2F1_γ
    .global proc_interpret_built_in$2F1_ω
  sub rsp, 928
  mov [rsp + 904], rcx
  mov [rsp + 912], rdx
  mov [rsp + 920], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 856], rsp
  mov rdi, rsp
  mov esi, 832
  mov edx, 896
  call rt_jmp_frame_lexprep2@PLT
proc_interpret_built_in$2F1_α_body:
lea rax, [rip + xchain661_n4_β]
mov qword ptr [rbp + 832], rax
 xchain661_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_interpret_built_in$2F1_ω
 jmp xchain661_n1_α
 xchain661_n0_β:
 jmp proc_interpret_built_in$2F1_ω
# IR_VAR_REF
 xchain661_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain661_n2_α
# IR_LIT_STRING
 xchain661_n2_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx665_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain661_n3_α
.Lx665_0:
 .quad .Lx665_0_s
.Lx665_0_s:
 .string "true"
 xchain661_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+736]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 736]
 mov rsi, qword ptr [rip + .Lx666_2]
 jmp .Lx666_3
.Lx666_2:
 .quad .Lx666_2_s
.Lx666_2_s:
 .string "true"
.Lx666_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain661_n5_α
 jmp xchain661_n4_α
 xchain661_n3_β:
 jmp xchain661_n5_α
# IR_SUSPEND yield+resume
 xchain661_n4_α:
 lea rax, [rip + xchain661_n4_β]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_built_in$2F1_γ
 xchain661_n4_β:
 jmp xchain661_n5_α
 xchain661_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+688]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 688]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je proc_interpret_built_in$2F1_ω
 jmp xchain661_n6_α
 xchain661_n5_β:
 jmp proc_interpret_built_in$2F1_ω
# IR_VAR_REF
 xchain661_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain661_n7_α
# IR_LIT_INTEGER
 xchain661_n7_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx672_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain661_n8_α
.Lx672_0:
 .quad 516
# IR_LIT_STRING
 xchain661_n8_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx673_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain661_n9_α
.Lx673_0:
 .quad .Lx673_0_s
.Lx673_0_s:
 .string "=<"
 xchain661_n9_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+544]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 552], rax
# marshal arg2 = producer-box slot [zr+640] -> [zr+560]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain661_n11_α
 jmp xchain661_n10_α
 xchain661_n9_β:
 jmp xchain661_n11_α
# IR_VAR_REF
 xchain661_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain661_n12_α
 xchain661_n11_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_interpret_built_in$2F1_ω
 jmp proc_interpret_built_in$2F1_ω
 xchain661_n11_β:
 jmp proc_interpret_built_in$2F1_ω
# IR_LIT_STRING
 xchain661_n12_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx678_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain661_n13_α
.Lx678_0:
 .quad .Lx678_0_s
.Lx678_0_s:
 .string "=<"
# IR_VAR_REF
 xchain661_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 864]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain661_n14_α
# IR_VAR_REF
 xchain661_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 880]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain661_n15_α
 xchain661_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+416]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+432]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 440], rax
# marshal arg2 = producer-box slot [zr+368] -> [zr+448]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 416]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain661_n11_α
 jmp xchain661_n16_α
 xchain661_n15_β:
 jmp xchain661_n11_α
 xchain661_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 280], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+288]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 296], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 272]
 lea r8, [rbp + 272]
.Lx684_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx684_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx684_41
 cmp esi, 1
 jne .Lx684_55
 mov r8, rax
 jmp .Lx684_40
.Lx684_55:
 cmp esi, 2
 jne .Lx684_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx684_41
 mov r8, rax
 jmp .Lx684_40
.Lx684_56:
 cmp eax, 13
 jne .Lx684_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx684_41
 cmp rax, r8
 je .Lx684_41
 mov r8, rax
 jmp .Lx684_40
.Lx684_41:
 lea r9, [rbp + 288]
.Lx684_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx684_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx684_43
 cmp esi, 1
 jne .Lx684_57
 mov r9, rax
 jmp .Lx684_42
.Lx684_57:
 cmp esi, 2
 jne .Lx684_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx684_43
 mov r9, rax
 jmp .Lx684_42
.Lx684_58:
 cmp eax, 13
 jne .Lx684_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx684_43
 cmp rax, r9
 je .Lx684_43
 mov r9, rax
 jmp .Lx684_42
.Lx684_43:
 cmp r8, r9
 je .Lx684_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx684_44
 cmp eax, 99
 je .Lx684_44
 cmp eax, 13
 jne .Lx684_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx684_44
 jmp .Lx684_45
.Lx684_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx684_53
 cmp eax, 99
 je .Lx684_53
 cmp eax, 13
 jne .Lx684_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx684_53
 jmp .Lx684_46
.Lx684_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx684_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx684_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx684_51
.Lx684_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx684_47
 cmp eax, 99
 je .Lx684_47
 cmp eax, 13
 jne .Lx684_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx684_47
 jmp .Lx684_48
.Lx684_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx684_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx684_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx684_51
.Lx684_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx684_49
 cmp edx, 14
 je .Lx684_53
 jmp .Lx684_52
.Lx684_49:
 cmp edx, 14
 je .Lx684_52
 cmp ecx, 7
 je .Lx684_53
 cmp edx, 7
 je .Lx684_53
 cmp ecx, 6
 jne .Lx684_50
 cmp edx, 6
 jne .Lx684_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx684_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx684_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx684_51
 jmp .Lx684_52
.Lx684_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx684_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx684_53
.Lx684_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx684_54
.Lx684_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx684_54
.Lx684_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx684_54:
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain661_n11_α
 jmp xchain661_n17_α
 xchain661_n16_β:
 jmp xchain661_n11_α
# IR_VAR
 xchain661_n17_α:
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 200], rax
 jmp xchain661_n18_α
# IR_VAR
 xchain661_n18_α:
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 232], rax
 jmp xchain661_n19_α
 xchain661_n19_α:
# BOX IR_CALL $cmp_le(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_le (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 2
 call rt_pl_dop_cmp_le@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain661_n11_α
 jmp xchain661_n20_α
 xchain661_n19_β:
 jmp xchain661_n11_α
# IR_SUSPEND yield+resume
 xchain661_n20_α:
 lea rax, [rip + xchain661_n20_β]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_built_in$2F1_γ
 xchain661_n20_β:
 jmp xchain661_n11_α
proc_interpret_built_in$2F1_res:
add rsp, 8
pop rbp
proc_interpret_built_in$2F1_β:
jmp qword ptr [rbp + 832]
proc_interpret_built_in$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_interpret_built_in$2F1_res]
push rax
mov rax, [rbp + 904]
mov rbp, [rbp + 920]
jmp rax
proc_interpret_built_in$2F1_ω:
mov rax, [rbp + 912]
lea rsp, [rbp + 928]
mov rbp, [rbp + 920]
jmp rax
  .globl proc_interpret_disjunction$2F3_α
proc_interpret_disjunction$2F3_α:
#=======================================================================================================================
    .global proc_interpret_disjunction$2F3_α
    .global proc_interpret_disjunction$2F3_β
    .global proc_interpret_disjunction$2F3_γ
    .global proc_interpret_disjunction$2F3_ω
  sub rsp, 3440
  mov [rsp + 3416], rcx
  mov [rsp + 3424], rdx
  mov [rsp + 3432], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3288], rsp
  mov rdi, rsp
  mov esi, 3264
  mov edx, 3408
  call rt_jmp_frame_lexprep2@PLT
proc_interpret_disjunction$2F3_α_body:
lea rax, [rip + xchain692_n63_β]
mov qword ptr [rbp + 3264], rax
 xchain692_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_interpret_disjunction$2F3_ω
 jmp xchain692_n1_α
 xchain692_n0_β:
 jmp proc_interpret_disjunction$2F3_ω
# IR_VAR_REF
 xchain692_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain692_n2_α
# IR_LIT_INTEGER
 xchain692_n2_α:
 mov qword ptr [rbp + 3200], 6
 mov rax, qword ptr [rip + .Lx696_0]
 mov qword ptr [rbp + 3208], rax
 jmp xchain692_n3_α
.Lx696_0:
 .quad 516
# IR_LIT_STRING
 xchain692_n3_α:
 mov qword ptr [rbp + 3232], 1
 mov rax, qword ptr [rip + .Lx697_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain692_n4_α
.Lx697_0:
 .quad .Lx697_0_s
.Lx697_0_s:
 .string "->"
 xchain692_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3168] -> [zr+3120]
 mov rax, qword ptr [rbp + 3168]
 mov qword ptr [rbp + 3120], rax
 mov rax, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 3128], rax
# marshal arg1 = producer-box slot [zr+3200] -> [zr+3136]
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3144], rax
# marshal arg2 = producer-box slot [zr+3232] -> [zr+3152]
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 3120]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 cmp eax, 99
 je xchain692_n6_α
 jmp xchain692_n5_α
 xchain692_n4_β:
 jmp xchain692_n6_α
# IR_VAR_REF
 xchain692_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain692_n7_α
# IR_VAR_REF
 xchain692_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain692_n8_α
# IR_LIT_STRING
 xchain692_n7_α:
 mov qword ptr [rbp + 3072], 1
 mov rax, qword ptr [rip + .Lx703_0]
 mov qword ptr [rbp + 3080], rax
 jmp xchain692_n9_α
.Lx703_0:
 .quad .Lx703_0_s
.Lx703_0_s:
 .string "->"
# IR_LIT_INTEGER
 xchain692_n8_α:
 mov qword ptr [rbp + 1904], 6
 mov rax, qword ptr [rip + .Lx704_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain692_n10_α
.Lx704_0:
 .quad 516
# IR_VAR_REF
 xchain692_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain692_n11_α
# IR_LIT_STRING
 xchain692_n10_α:
 mov qword ptr [rbp + 1936], 1
 mov rax, qword ptr [rip + .Lx707_0]
 mov qword ptr [rbp + 1944], rax
 jmp xchain692_n12_α
.Lx707_0:
 .quad .Lx707_0_s
.Lx707_0_s:
 .string "->"
# IR_VAR_REF
 xchain692_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3360]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain692_n13_α
 xchain692_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1872] -> [zr+1824]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1832], rax
# marshal arg1 = producer-box slot [zr+1904] -> [zr+1840]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1848], rax
# marshal arg2 = producer-box slot [zr+1936] -> [zr+1856]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1824]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je xchain692_n15_α
 jmp xchain692_n14_α
 xchain692_n12_β:
 jmp xchain692_n15_α
 xchain692_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3072] -> [zr+3008]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3016], rax
# marshal arg1 = producer-box slot [zr+2928] -> [zr+3024]
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 3032], rax
# marshal arg2 = producer-box slot [zr+2960] -> [zr+3040]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 3048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3008]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 cmp eax, 99
 je xchain692_n17_α
 jmp xchain692_n16_α
 xchain692_n13_β:
 jmp xchain692_n17_α
# IR_VAR_REF
 xchain692_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain692_n18_α
# IR_VAR_REF
 xchain692_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain692_n19_α
 xchain692_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2896] -> [zr+2864]
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 2872], rax
# marshal arg1 = producer-box slot [zr+2992] -> [zr+2880]
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2888], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2864]
 lea r8, [rbp + 2864]
.Lx716_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx716_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx716_41
 cmp esi, 1
 jne .Lx716_55
 mov r8, rax
 jmp .Lx716_40
.Lx716_55:
 cmp esi, 2
 jne .Lx716_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx716_41
 mov r8, rax
 jmp .Lx716_40
.Lx716_56:
 cmp eax, 13
 jne .Lx716_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx716_41
 cmp rax, r8
 je .Lx716_41
 mov r8, rax
 jmp .Lx716_40
.Lx716_41:
 lea r9, [rbp + 2880]
.Lx716_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx716_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx716_43
 cmp esi, 1
 jne .Lx716_57
 mov r9, rax
 jmp .Lx716_42
.Lx716_57:
 cmp esi, 2
 jne .Lx716_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx716_43
 mov r9, rax
 jmp .Lx716_42
.Lx716_58:
 cmp eax, 13
 jne .Lx716_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx716_43
 cmp rax, r9
 je .Lx716_43
 mov r9, rax
 jmp .Lx716_42
.Lx716_43:
 cmp r8, r9
 je .Lx716_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx716_44
 cmp eax, 99
 je .Lx716_44
 cmp eax, 13
 jne .Lx716_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx716_44
 jmp .Lx716_45
.Lx716_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx716_53
 cmp eax, 99
 je .Lx716_53
 cmp eax, 13
 jne .Lx716_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx716_53
 jmp .Lx716_46
.Lx716_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx716_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx716_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx716_51
.Lx716_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx716_47
 cmp eax, 99
 je .Lx716_47
 cmp eax, 13
 jne .Lx716_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx716_47
 jmp .Lx716_48
.Lx716_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx716_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx716_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx716_51
.Lx716_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx716_49
 cmp edx, 14
 je .Lx716_53
 jmp .Lx716_52
.Lx716_49:
 cmp edx, 14
 je .Lx716_52
 cmp ecx, 7
 je .Lx716_53
 cmp edx, 7
 je .Lx716_53
 cmp ecx, 6
 jne .Lx716_50
 cmp edx, 6
 jne .Lx716_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx716_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx716_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx716_51
 jmp .Lx716_52
.Lx716_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx716_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx716_53
.Lx716_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx716_54
.Lx716_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx716_54
.Lx716_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx716_54:
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 cmp eax, 99
 je xchain692_n17_α
 jmp xchain692_n20_α
 xchain692_n16_β:
 jmp xchain692_n17_α
 xchain692_n17_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1984]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1984]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 cmp eax, 99
 je proc_interpret_disjunction$2F3_ω
 jmp xchain692_n6_α
 xchain692_n17_β:
 jmp proc_interpret_disjunction$2F3_ω
# IR_LIT_STRING
 xchain692_n18_α:
 mov qword ptr [rbp + 1776], 1
 mov rax, qword ptr [rip + .Lx718_0]
 mov qword ptr [rbp + 1784], rax
 jmp xchain692_n21_α
.Lx718_0:
 .quad .Lx718_0_s
.Lx718_0_s:
 .string "->"
# IR_VAR_REF
 xchain692_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3344]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain692_n22_α
# IR_VAR_REF
 xchain692_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain692_n23_α
# IR_VAR_REF
 xchain692_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain692_n24_α
 xchain692_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1056]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1064], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1072]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1080], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1056]
 lea r8, [rbp + 1056]
.Lx725_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx725_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx725_41
 cmp esi, 1
 jne .Lx725_55
 mov r8, rax
 jmp .Lx725_40
.Lx725_55:
 cmp esi, 2
 jne .Lx725_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx725_41
 mov r8, rax
 jmp .Lx725_40
.Lx725_56:
 cmp eax, 13
 jne .Lx725_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx725_41
 cmp rax, r8
 je .Lx725_41
 mov r8, rax
 jmp .Lx725_40
.Lx725_41:
 lea r9, [rbp + 1072]
.Lx725_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx725_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx725_43
 cmp esi, 1
 jne .Lx725_57
 mov r9, rax
 jmp .Lx725_42
.Lx725_57:
 cmp esi, 2
 jne .Lx725_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx725_43
 mov r9, rax
 jmp .Lx725_42
.Lx725_58:
 cmp eax, 13
 jne .Lx725_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx725_43
 cmp rax, r9
 je .Lx725_43
 mov r9, rax
 jmp .Lx725_42
.Lx725_43:
 cmp r8, r9
 je .Lx725_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx725_44
 cmp eax, 99
 je .Lx725_44
 cmp eax, 13
 jne .Lx725_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx725_44
 jmp .Lx725_45
.Lx725_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx725_53
 cmp eax, 99
 je .Lx725_53
 cmp eax, 13
 jne .Lx725_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx725_53
 jmp .Lx725_46
.Lx725_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx725_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx725_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx725_51
.Lx725_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx725_47
 cmp eax, 99
 je .Lx725_47
 cmp eax, 13
 jne .Lx725_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx725_47
 jmp .Lx725_48
.Lx725_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx725_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx725_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx725_51
.Lx725_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx725_49
 cmp edx, 14
 je .Lx725_53
 jmp .Lx725_52
.Lx725_49:
 cmp edx, 14
 je .Lx725_52
 cmp ecx, 7
 je .Lx725_53
 cmp edx, 7
 je .Lx725_53
 cmp ecx, 6
 jne .Lx725_50
 cmp edx, 6
 jne .Lx725_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx725_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx725_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx725_51
 jmp .Lx725_52
.Lx725_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx725_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx725_53
.Lx725_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx725_54
.Lx725_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx725_54
.Lx725_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx725_54:
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain692_n26_α
 jmp xchain692_n25_α
 xchain692_n22_β:
 jmp xchain692_n26_α
# IR_VAR_REF
 xchain692_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3392]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 jmp xchain692_n27_α
# IR_VAR_REF
 xchain692_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3360]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain692_n28_α
# IR_VAR_REF
 xchain692_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain692_n29_α
 xchain692_n26_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+656]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je proc_interpret_disjunction$2F3_ω
 jmp xchain692_n30_α
 xchain692_n26_β:
 jmp proc_interpret_disjunction$2F3_ω
 xchain692_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2784] -> [zr+2752]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2760], rax
# marshal arg1 = producer-box slot [zr+2816] -> [zr+2768]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2776], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2752]
 lea r8, [rbp + 2752]
.Lx733_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx733_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx733_41
 cmp esi, 1
 jne .Lx733_55
 mov r8, rax
 jmp .Lx733_40
.Lx733_55:
 cmp esi, 2
 jne .Lx733_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx733_41
 mov r8, rax
 jmp .Lx733_40
.Lx733_56:
 cmp eax, 13
 jne .Lx733_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx733_41
 cmp rax, r8
 je .Lx733_41
 mov r8, rax
 jmp .Lx733_40
.Lx733_41:
 lea r9, [rbp + 2768]
.Lx733_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx733_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx733_43
 cmp esi, 1
 jne .Lx733_57
 mov r9, rax
 jmp .Lx733_42
.Lx733_57:
 cmp esi, 2
 jne .Lx733_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx733_43
 mov r9, rax
 jmp .Lx733_42
.Lx733_58:
 cmp eax, 13
 jne .Lx733_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx733_43
 cmp rax, r9
 je .Lx733_43
 mov r9, rax
 jmp .Lx733_42
.Lx733_43:
 cmp r8, r9
 je .Lx733_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx733_44
 cmp eax, 99
 je .Lx733_44
 cmp eax, 13
 jne .Lx733_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx733_44
 jmp .Lx733_45
.Lx733_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx733_53
 cmp eax, 99
 je .Lx733_53
 cmp eax, 13
 jne .Lx733_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx733_53
 jmp .Lx733_46
.Lx733_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx733_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx733_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx733_51
.Lx733_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx733_47
 cmp eax, 99
 je .Lx733_47
 cmp eax, 13
 jne .Lx733_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx733_47
 jmp .Lx733_48
.Lx733_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx733_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx733_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx733_51
.Lx733_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx733_49
 cmp edx, 14
 je .Lx733_53
 jmp .Lx733_52
.Lx733_49:
 cmp edx, 14
 je .Lx733_52
 cmp ecx, 7
 je .Lx733_53
 cmp edx, 7
 je .Lx733_53
 cmp ecx, 6
 jne .Lx733_50
 cmp edx, 6
 jne .Lx733_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx733_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx733_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx733_51
 jmp .Lx733_52
.Lx733_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx733_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx733_53
.Lx733_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx733_54
.Lx733_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx733_54
.Lx733_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx733_54:
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 cmp eax, 99
 je xchain692_n17_α
 jmp xchain692_n31_α
 xchain692_n27_β:
 jmp xchain692_n17_α
 xchain692_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1776] -> [zr+1712]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1720], rax
# marshal arg1 = producer-box slot [zr+1632] -> [zr+1728]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1736], rax
# marshal arg2 = producer-box slot [zr+1664] -> [zr+1744]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1752], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1712]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain692_n33_α
 jmp xchain692_n32_α
 xchain692_n28_β:
 jmp xchain692_n33_α
# IR_VAR_REF
 xchain692_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain692_n34_α
# IR_VAR_REF
 xchain692_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain692_n35_α
# IR_VAR_REF
 xchain692_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain692_n36_α
 xchain692_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1568]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1576], rax
# marshal arg1 = producer-box slot [zr+1696] -> [zr+1584]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1592], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1568]
 lea r8, [rbp + 1568]
.Lx741_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx741_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx741_41
 cmp esi, 1
 jne .Lx741_55
 mov r8, rax
 jmp .Lx741_40
.Lx741_55:
 cmp esi, 2
 jne .Lx741_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx741_41
 mov r8, rax
 jmp .Lx741_40
.Lx741_56:
 cmp eax, 13
 jne .Lx741_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx741_41
 cmp rax, r8
 je .Lx741_41
 mov r8, rax
 jmp .Lx741_40
.Lx741_41:
 lea r9, [rbp + 1584]
.Lx741_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx741_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx741_43
 cmp esi, 1
 jne .Lx741_57
 mov r9, rax
 jmp .Lx741_42
.Lx741_57:
 cmp esi, 2
 jne .Lx741_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx741_43
 mov r9, rax
 jmp .Lx741_42
.Lx741_58:
 cmp eax, 13
 jne .Lx741_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx741_43
 cmp rax, r9
 je .Lx741_43
 mov r9, rax
 jmp .Lx741_42
.Lx741_43:
 cmp r8, r9
 je .Lx741_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx741_44
 cmp eax, 99
 je .Lx741_44
 cmp eax, 13
 jne .Lx741_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx741_44
 jmp .Lx741_45
.Lx741_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx741_53
 cmp eax, 99
 je .Lx741_53
 cmp eax, 13
 jne .Lx741_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx741_53
 jmp .Lx741_46
.Lx741_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx741_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx741_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx741_51
.Lx741_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx741_47
 cmp eax, 99
 je .Lx741_47
 cmp eax, 13
 jne .Lx741_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx741_47
 jmp .Lx741_48
.Lx741_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx741_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx741_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx741_51
.Lx741_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx741_49
 cmp edx, 14
 je .Lx741_53
 jmp .Lx741_52
.Lx741_49:
 cmp edx, 14
 je .Lx741_52
 cmp ecx, 7
 je .Lx741_53
 cmp edx, 7
 je .Lx741_53
 cmp ecx, 6
 jne .Lx741_50
 cmp edx, 6
 jne .Lx741_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx741_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx741_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx741_51
 jmp .Lx741_52
.Lx741_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx741_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx741_53
.Lx741_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx741_54
.Lx741_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx741_54
.Lx741_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx741_54:
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain692_n33_α
 jmp xchain692_n37_α
 xchain692_n32_β:
 jmp xchain692_n33_α
 xchain692_n33_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1168]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_interpret_disjunction$2F3_ω
 jmp xchain692_n15_α
 xchain692_n33_β:
 jmp proc_interpret_disjunction$2F3_ω
 xchain692_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+944]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+1008] -> [zr+960]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 968], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 944]
 lea r8, [rbp + 944]
.Lx743_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx743_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx743_41
 cmp esi, 1
 jne .Lx743_55
 mov r8, rax
 jmp .Lx743_40
.Lx743_55:
 cmp esi, 2
 jne .Lx743_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx743_41
 mov r8, rax
 jmp .Lx743_40
.Lx743_56:
 cmp eax, 13
 jne .Lx743_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx743_41
 cmp rax, r8
 je .Lx743_41
 mov r8, rax
 jmp .Lx743_40
.Lx743_41:
 lea r9, [rbp + 960]
.Lx743_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx743_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx743_43
 cmp esi, 1
 jne .Lx743_57
 mov r9, rax
 jmp .Lx743_42
.Lx743_57:
 cmp esi, 2
 jne .Lx743_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx743_43
 mov r9, rax
 jmp .Lx743_42
.Lx743_58:
 cmp eax, 13
 jne .Lx743_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx743_43
 cmp rax, r9
 je .Lx743_43
 mov r9, rax
 jmp .Lx743_42
.Lx743_43:
 cmp r8, r9
 je .Lx743_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx743_44
 cmp eax, 99
 je .Lx743_44
 cmp eax, 13
 jne .Lx743_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx743_44
 jmp .Lx743_45
.Lx743_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx743_53
 cmp eax, 99
 je .Lx743_53
 cmp eax, 13
 jne .Lx743_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx743_53
 jmp .Lx743_46
.Lx743_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx743_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx743_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx743_51
.Lx743_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx743_47
 cmp eax, 99
 je .Lx743_47
 cmp eax, 13
 jne .Lx743_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx743_47
 jmp .Lx743_48
.Lx743_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx743_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx743_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx743_51
.Lx743_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx743_49
 cmp edx, 14
 je .Lx743_53
 jmp .Lx743_52
.Lx743_49:
 cmp edx, 14
 je .Lx743_52
 cmp ecx, 7
 je .Lx743_53
 cmp edx, 7
 je .Lx743_53
 cmp ecx, 6
 jne .Lx743_50
 cmp edx, 6
 jne .Lx743_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx743_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx743_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx743_51
 jmp .Lx743_52
.Lx743_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx743_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx743_53
.Lx743_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx743_54
.Lx743_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx743_54
.Lx743_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx743_54:
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain692_n26_α
 jmp xchain692_n38_α
 xchain692_n34_β:
 jmp xchain692_n26_α
# IR_VAR_REF
 xchain692_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain692_n39_α
# IR_VAR_REF
 xchain692_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain692_n40_α
# IR_VAR_REF
 xchain692_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain692_n41_α
# IR_VAR_REF
 xchain692_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain692_n42_α
 xchain692_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+560]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 568], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 544]
 lea r8, [rbp + 544]
.Lx752_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx752_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx752_41
 cmp esi, 1
 jne .Lx752_55
 mov r8, rax
 jmp .Lx752_40
.Lx752_55:
 cmp esi, 2
 jne .Lx752_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx752_41
 mov r8, rax
 jmp .Lx752_40
.Lx752_56:
 cmp eax, 13
 jne .Lx752_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx752_41
 cmp rax, r8
 je .Lx752_41
 mov r8, rax
 jmp .Lx752_40
.Lx752_41:
 lea r9, [rbp + 560]
.Lx752_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx752_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx752_43
 cmp esi, 1
 jne .Lx752_57
 mov r9, rax
 jmp .Lx752_42
.Lx752_57:
 cmp esi, 2
 jne .Lx752_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx752_43
 mov r9, rax
 jmp .Lx752_42
.Lx752_58:
 cmp eax, 13
 jne .Lx752_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx752_43
 cmp rax, r9
 je .Lx752_43
 mov r9, rax
 jmp .Lx752_42
.Lx752_43:
 cmp r8, r9
 je .Lx752_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx752_44
 cmp eax, 99
 je .Lx752_44
 cmp eax, 13
 jne .Lx752_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx752_44
 jmp .Lx752_45
.Lx752_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx752_53
 cmp eax, 99
 je .Lx752_53
 cmp eax, 13
 jne .Lx752_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx752_53
 jmp .Lx752_46
.Lx752_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx752_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx752_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx752_51
.Lx752_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx752_47
 cmp eax, 99
 je .Lx752_47
 cmp eax, 13
 jne .Lx752_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx752_47
 jmp .Lx752_48
.Lx752_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx752_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx752_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx752_51
.Lx752_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx752_49
 cmp edx, 14
 je .Lx752_53
 jmp .Lx752_52
.Lx752_49:
 cmp edx, 14
 je .Lx752_52
 cmp ecx, 7
 je .Lx752_53
 cmp edx, 7
 je .Lx752_53
 cmp ecx, 6
 jne .Lx752_50
 cmp edx, 6
 jne .Lx752_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx752_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx752_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx752_51
 jmp .Lx752_52
.Lx752_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx752_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx752_53
.Lx752_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx752_54
.Lx752_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx752_54
.Lx752_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx752_54:
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain692_n44_α
 jmp xchain692_n43_α
 xchain692_n39_β:
 jmp xchain692_n44_α
 xchain692_n40_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2672] -> [zr+2640]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2648], rax
# marshal arg1 = producer-box slot [zr+2704] -> [zr+2656]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2664], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2640]
 lea r8, [rbp + 2640]
.Lx753_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx753_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx753_41
 cmp esi, 1
 jne .Lx753_55
 mov r8, rax
 jmp .Lx753_40
.Lx753_55:
 cmp esi, 2
 jne .Lx753_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx753_41
 mov r8, rax
 jmp .Lx753_40
.Lx753_56:
 cmp eax, 13
 jne .Lx753_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx753_41
 cmp rax, r8
 je .Lx753_41
 mov r8, rax
 jmp .Lx753_40
.Lx753_41:
 lea r9, [rbp + 2656]
.Lx753_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx753_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx753_43
 cmp esi, 1
 jne .Lx753_57
 mov r9, rax
 jmp .Lx753_42
.Lx753_57:
 cmp esi, 2
 jne .Lx753_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx753_43
 mov r9, rax
 jmp .Lx753_42
.Lx753_58:
 cmp eax, 13
 jne .Lx753_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx753_43
 cmp rax, r9
 je .Lx753_43
 mov r9, rax
 jmp .Lx753_42
.Lx753_43:
 cmp r8, r9
 je .Lx753_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx753_44
 cmp eax, 99
 je .Lx753_44
 cmp eax, 13
 jne .Lx753_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx753_44
 jmp .Lx753_45
.Lx753_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx753_53
 cmp eax, 99
 je .Lx753_53
 cmp eax, 13
 jne .Lx753_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx753_53
 jmp .Lx753_46
.Lx753_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx753_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx753_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx753_51
.Lx753_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx753_47
 cmp eax, 99
 je .Lx753_47
 cmp eax, 13
 jne .Lx753_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx753_47
 jmp .Lx753_48
.Lx753_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx753_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx753_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx753_51
.Lx753_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx753_49
 cmp edx, 14
 je .Lx753_53
 jmp .Lx753_52
.Lx753_49:
 cmp edx, 14
 je .Lx753_52
 cmp ecx, 7
 je .Lx753_53
 cmp edx, 7
 je .Lx753_53
 cmp ecx, 6
 jne .Lx753_50
 cmp edx, 6
 jne .Lx753_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx753_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx753_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx753_51
 jmp .Lx753_52
.Lx753_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx753_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx753_53
.Lx753_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx753_54
.Lx753_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx753_54
.Lx753_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx753_54:
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 cmp eax, 99
 je xchain692_n17_α
 jmp xchain692_n45_α
 xchain692_n40_β:
 jmp xchain692_n17_α
# IR_VAR_REF
 xchain692_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3296]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain692_n46_α
# IR_VAR_REF
 xchain692_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain692_n47_α
# IR_VAR_REF
 xchain692_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain692_n48_α
 xchain692_n44_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 144]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_interpret_disjunction$2F3_ω
 jmp proc_interpret_disjunction$2F3_ω
 xchain692_n44_β:
 jmp proc_interpret_disjunction$2F3_ω
# IR_VAR_REF
 xchain692_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain692_n49_α
 xchain692_n46_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1456]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1464], rax
# marshal arg1 = producer-box slot [zr+1520] -> [zr+1472]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1480], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1456]
 lea r8, [rbp + 1456]
.Lx763_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx763_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx763_41
 cmp esi, 1
 jne .Lx763_55
 mov r8, rax
 jmp .Lx763_40
.Lx763_55:
 cmp esi, 2
 jne .Lx763_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx763_41
 mov r8, rax
 jmp .Lx763_40
.Lx763_56:
 cmp eax, 13
 jne .Lx763_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx763_41
 cmp rax, r8
 je .Lx763_41
 mov r8, rax
 jmp .Lx763_40
.Lx763_41:
 lea r9, [rbp + 1472]
.Lx763_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx763_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx763_43
 cmp esi, 1
 jne .Lx763_57
 mov r9, rax
 jmp .Lx763_42
.Lx763_57:
 cmp esi, 2
 jne .Lx763_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx763_43
 mov r9, rax
 jmp .Lx763_42
.Lx763_58:
 cmp eax, 13
 jne .Lx763_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx763_43
 cmp rax, r9
 je .Lx763_43
 mov r9, rax
 jmp .Lx763_42
.Lx763_43:
 cmp r8, r9
 je .Lx763_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx763_44
 cmp eax, 99
 je .Lx763_44
 cmp eax, 13
 jne .Lx763_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx763_44
 jmp .Lx763_45
.Lx763_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx763_53
 cmp eax, 99
 je .Lx763_53
 cmp eax, 13
 jne .Lx763_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx763_53
 jmp .Lx763_46
.Lx763_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx763_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx763_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx763_51
.Lx763_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx763_47
 cmp eax, 99
 je .Lx763_47
 cmp eax, 13
 jne .Lx763_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx763_47
 jmp .Lx763_48
.Lx763_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx763_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx763_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx763_51
.Lx763_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx763_49
 cmp edx, 14
 je .Lx763_53
 jmp .Lx763_52
.Lx763_49:
 cmp edx, 14
 je .Lx763_52
 cmp ecx, 7
 je .Lx763_53
 cmp edx, 7
 je .Lx763_53
 cmp ecx, 6
 jne .Lx763_50
 cmp edx, 6
 jne .Lx763_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx763_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx763_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx763_51
 jmp .Lx763_52
.Lx763_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx763_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx763_53
.Lx763_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx763_54
.Lx763_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx763_54
.Lx763_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx763_54:
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain692_n33_α
 jmp xchain692_n50_α
 xchain692_n46_β:
 jmp xchain692_n33_α
 xchain692_n47_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+848]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 856], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 832]
 lea r8, [rbp + 832]
.Lx764_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx764_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx764_41
 cmp esi, 1
 jne .Lx764_55
 mov r8, rax
 jmp .Lx764_40
.Lx764_55:
 cmp esi, 2
 jne .Lx764_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx764_41
 mov r8, rax
 jmp .Lx764_40
.Lx764_56:
 cmp eax, 13
 jne .Lx764_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx764_41
 cmp rax, r8
 je .Lx764_41
 mov r8, rax
 jmp .Lx764_40
.Lx764_41:
 lea r9, [rbp + 848]
.Lx764_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx764_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx764_43
 cmp esi, 1
 jne .Lx764_57
 mov r9, rax
 jmp .Lx764_42
.Lx764_57:
 cmp esi, 2
 jne .Lx764_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx764_43
 mov r9, rax
 jmp .Lx764_42
.Lx764_58:
 cmp eax, 13
 jne .Lx764_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx764_43
 cmp rax, r9
 je .Lx764_43
 mov r9, rax
 jmp .Lx764_42
.Lx764_43:
 cmp r8, r9
 je .Lx764_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx764_44
 cmp eax, 99
 je .Lx764_44
 cmp eax, 13
 jne .Lx764_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx764_44
 jmp .Lx764_45
.Lx764_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx764_53
 cmp eax, 99
 je .Lx764_53
 cmp eax, 13
 jne .Lx764_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx764_53
 jmp .Lx764_46
.Lx764_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx764_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx764_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx764_51
.Lx764_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx764_47
 cmp eax, 99
 je .Lx764_47
 cmp eax, 13
 jne .Lx764_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx764_47
 jmp .Lx764_48
.Lx764_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx764_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx764_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx764_51
.Lx764_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx764_49
 cmp edx, 14
 je .Lx764_53
 jmp .Lx764_52
.Lx764_49:
 cmp edx, 14
 je .Lx764_52
 cmp ecx, 7
 je .Lx764_53
 cmp edx, 7
 je .Lx764_53
 cmp ecx, 6
 jne .Lx764_50
 cmp edx, 6
 jne .Lx764_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx764_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx764_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx764_51
 jmp .Lx764_52
.Lx764_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx764_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx764_53
.Lx764_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx764_54
.Lx764_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx764_54
.Lx764_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx764_54:
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain692_n26_α
 jmp xchain692_n51_α
 xchain692_n47_β:
 jmp xchain692_n26_α
# IR_VAR_REF
 xchain692_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3296]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain692_n52_α
# IR_VAR_REF
 xchain692_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3376]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain692_n53_α
# IR_VAR_REF
 xchain692_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain692_n54_α
# IR_VAR_REF
 xchain692_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3344]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain692_n55_α
 xchain692_n52_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 432]
 lea r8, [rbp + 432]
.Lx773_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx773_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx773_41
 cmp esi, 1
 jne .Lx773_55
 mov r8, rax
 jmp .Lx773_40
.Lx773_55:
 cmp esi, 2
 jne .Lx773_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx773_41
 mov r8, rax
 jmp .Lx773_40
.Lx773_56:
 cmp eax, 13
 jne .Lx773_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx773_41
 cmp rax, r8
 je .Lx773_41
 mov r8, rax
 jmp .Lx773_40
.Lx773_41:
 lea r9, [rbp + 448]
.Lx773_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx773_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx773_43
 cmp esi, 1
 jne .Lx773_57
 mov r9, rax
 jmp .Lx773_42
.Lx773_57:
 cmp esi, 2
 jne .Lx773_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx773_43
 mov r9, rax
 jmp .Lx773_42
.Lx773_58:
 cmp eax, 13
 jne .Lx773_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx773_43
 cmp rax, r9
 je .Lx773_43
 mov r9, rax
 jmp .Lx773_42
.Lx773_43:
 cmp r8, r9
 je .Lx773_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx773_44
 cmp eax, 99
 je .Lx773_44
 cmp eax, 13
 jne .Lx773_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx773_44
 jmp .Lx773_45
.Lx773_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx773_53
 cmp eax, 99
 je .Lx773_53
 cmp eax, 13
 jne .Lx773_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx773_53
 jmp .Lx773_46
.Lx773_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx773_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx773_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx773_51
.Lx773_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx773_47
 cmp eax, 99
 je .Lx773_47
 cmp eax, 13
 jne .Lx773_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx773_47
 jmp .Lx773_48
.Lx773_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx773_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx773_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx773_51
.Lx773_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx773_49
 cmp edx, 14
 je .Lx773_53
 jmp .Lx773_52
.Lx773_49:
 cmp edx, 14
 je .Lx773_52
 cmp ecx, 7
 je .Lx773_53
 cmp edx, 7
 je .Lx773_53
 cmp ecx, 6
 jne .Lx773_50
 cmp edx, 6
 jne .Lx773_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx773_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx773_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx773_51
 jmp .Lx773_52
.Lx773_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx773_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx773_53
.Lx773_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx773_54
.Lx773_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx773_54
.Lx773_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx773_54:
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain692_n44_α
 jmp xchain692_n56_α
 xchain692_n52_β:
 jmp xchain692_n44_α
 xchain692_n53_α:
 mov qword ptr [rbp + 2528], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx775_20
 mov rax, qword ptr [rbp + 2560]
 mov rdx, qword ptr [rbp + 2568]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx775_21
.Lx775_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2560]
 mov rdx, qword ptr [rbp + 2568]
 call rt_arg_stage@PLT
.Lx775_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx775_22
 mov rax, qword ptr [rbp + 2592]
 mov rdx, qword ptr [rbp + 2600]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx775_23
.Lx775_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 2592]
 mov rdx, qword ptr [rbp + 2600]
 call rt_arg_stage@PLT
.Lx775_23:
 mov rdi, qword ptr [rip + .Lx775_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx775_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx775_3]
 lea rdx, [rip + .Lx775_4]
 jmp rax
.Lx775_3:
 mov qword ptr [rbp + 2536], rsp
 mov rax, qword ptr [rbp + 2528]
 test rax, rax
 jne .Lx775_5
 mov qword ptr [rbp + 2528], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx775_2
.Lx775_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx775_2
.Lx775_4:
 mov rax, qword ptr [rbp + 2528]
 test rax, rax
 jne .Lx775_6
 mov qword ptr [rbp + 2528], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx775_2
.Lx775_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx775_2
.Lx775_1:
 call rt_faildescr@PLT
.Lx775_2:
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain692_n17_α
 jmp xchain692_n57_α
 xchain692_n53_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2536]
 jmp qword ptr [rsp]
.Lx775_0:
 .quad .Lx775_0_s
.Lx775_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain692_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain692_n58_α
# IR_VAR_REF
 xchain692_n55_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain692_n59_α
# IR_VAR_REF
 xchain692_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain692_n60_α
 xchain692_n57_α:
# IR_CUT
 jmp xchain692_n61_α
 xchain692_n58_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1344]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1368], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1344]
 lea r8, [rbp + 1344]
.Lx783_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx783_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx783_41
 cmp esi, 1
 jne .Lx783_55
 mov r8, rax
 jmp .Lx783_40
.Lx783_55:
 cmp esi, 2
 jne .Lx783_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx783_41
 mov r8, rax
 jmp .Lx783_40
.Lx783_56:
 cmp eax, 13
 jne .Lx783_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx783_41
 cmp rax, r8
 je .Lx783_41
 mov r8, rax
 jmp .Lx783_40
.Lx783_41:
 lea r9, [rbp + 1360]
.Lx783_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx783_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx783_43
 cmp esi, 1
 jne .Lx783_57
 mov r9, rax
 jmp .Lx783_42
.Lx783_57:
 cmp esi, 2
 jne .Lx783_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx783_43
 mov r9, rax
 jmp .Lx783_42
.Lx783_58:
 cmp eax, 13
 jne .Lx783_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx783_43
 cmp rax, r9
 je .Lx783_43
 mov r9, rax
 jmp .Lx783_42
.Lx783_43:
 cmp r8, r9
 je .Lx783_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx783_44
 cmp eax, 99
 je .Lx783_44
 cmp eax, 13
 jne .Lx783_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx783_44
 jmp .Lx783_45
.Lx783_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx783_53
 cmp eax, 99
 je .Lx783_53
 cmp eax, 13
 jne .Lx783_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx783_53
 jmp .Lx783_46
.Lx783_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx783_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx783_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx783_51
.Lx783_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx783_47
 cmp eax, 99
 je .Lx783_47
 cmp eax, 13
 jne .Lx783_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx783_47
 jmp .Lx783_48
.Lx783_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx783_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx783_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx783_51
.Lx783_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx783_49
 cmp edx, 14
 je .Lx783_53
 jmp .Lx783_52
.Lx783_49:
 cmp edx, 14
 je .Lx783_52
 cmp ecx, 7
 je .Lx783_53
 cmp edx, 7
 je .Lx783_53
 cmp ecx, 6
 jne .Lx783_50
 cmp edx, 6
 jne .Lx783_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx783_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx783_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx783_51
 jmp .Lx783_52
.Lx783_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx783_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx783_53
.Lx783_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx783_54
.Lx783_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx783_54
.Lx783_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx783_54:
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain692_n33_α
 jmp xchain692_n62_α
 xchain692_n58_β:
 jmp xchain692_n33_α
 xchain692_n59_α:
 mov qword ptr [rbp + 720], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx785_20
 mov rax, qword ptr [rbp + 752]
 mov rdx, qword ptr [rbp + 760]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx785_21
.Lx785_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 752]
 mov rdx, qword ptr [rbp + 760]
 call rt_arg_stage@PLT
.Lx785_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx785_22
 mov rax, qword ptr [rbp + 784]
 mov rdx, qword ptr [rbp + 792]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx785_23
.Lx785_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 784]
 mov rdx, qword ptr [rbp + 792]
 call rt_arg_stage@PLT
.Lx785_23:
 mov rdi, qword ptr [rip + .Lx785_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx785_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx785_3]
 lea rdx, [rip + .Lx785_4]
 jmp rax
.Lx785_3:
 mov qword ptr [rbp + 728], rsp
 mov rax, qword ptr [rbp + 720]
 test rax, rax
 jne .Lx785_5
 mov qword ptr [rbp + 720], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx785_2
.Lx785_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx785_2
.Lx785_4:
 mov rax, qword ptr [rbp + 720]
 test rax, rax
 jne .Lx785_6
 mov qword ptr [rbp + 720], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx785_2
.Lx785_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx785_2
.Lx785_1:
 call rt_faildescr@PLT
.Lx785_2:
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain692_n26_α
 jmp xchain692_n63_α
 xchain692_n59_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 728]
 jmp qword ptr [rsp]
.Lx785_0:
 .quad .Lx785_0_s
.Lx785_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain692_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain692_n64_α
# IR_VAR_REF
 xchain692_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3376]
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain692_n65_α
 xchain692_n62_α:
# IR_CUT
 jmp xchain692_n66_α
# IR_SUSPEND yield+resume
 xchain692_n63_α:
 lea rax, [rip + xchain692_n63_β]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_disjunction$2F3_γ
 xchain692_n63_β:
 jmp xchain692_n59_β
 xchain692_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 320]
 lea r8, [rbp + 320]
.Lx793_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx793_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx793_41
 cmp esi, 1
 jne .Lx793_55
 mov r8, rax
 jmp .Lx793_40
.Lx793_55:
 cmp esi, 2
 jne .Lx793_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx793_41
 mov r8, rax
 jmp .Lx793_40
.Lx793_56:
 cmp eax, 13
 jne .Lx793_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx793_41
 cmp rax, r8
 je .Lx793_41
 mov r8, rax
 jmp .Lx793_40
.Lx793_41:
 lea r9, [rbp + 336]
.Lx793_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx793_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx793_43
 cmp esi, 1
 jne .Lx793_57
 mov r9, rax
 jmp .Lx793_42
.Lx793_57:
 cmp esi, 2
 jne .Lx793_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx793_43
 mov r9, rax
 jmp .Lx793_42
.Lx793_58:
 cmp eax, 13
 jne .Lx793_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx793_43
 cmp rax, r9
 je .Lx793_43
 mov r9, rax
 jmp .Lx793_42
.Lx793_43:
 cmp r8, r9
 je .Lx793_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx793_44
 cmp eax, 99
 je .Lx793_44
 cmp eax, 13
 jne .Lx793_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx793_44
 jmp .Lx793_45
.Lx793_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx793_53
 cmp eax, 99
 je .Lx793_53
 cmp eax, 13
 jne .Lx793_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx793_53
 jmp .Lx793_46
.Lx793_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx793_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx793_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx793_51
.Lx793_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx793_47
 cmp eax, 99
 je .Lx793_47
 cmp eax, 13
 jne .Lx793_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx793_47
 jmp .Lx793_48
.Lx793_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx793_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx793_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx793_51
.Lx793_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx793_49
 cmp edx, 14
 je .Lx793_53
 jmp .Lx793_52
.Lx793_49:
 cmp edx, 14
 je .Lx793_52
 cmp ecx, 7
 je .Lx793_53
 cmp edx, 7
 je .Lx793_53
 cmp ecx, 6
 jne .Lx793_50
 cmp edx, 6
 jne .Lx793_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx793_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx793_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx793_51
 jmp .Lx793_52
.Lx793_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx793_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx793_53
.Lx793_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx793_54
.Lx793_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx793_54
.Lx793_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx793_54:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain692_n44_α
 jmp xchain692_n67_α
 xchain692_n64_β:
 jmp xchain692_n44_α
 xchain692_n65_α:
# BOX IR_CALL $tt_nonvar(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2448] -> [zr+2432]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2440], rax
  .section .rodata
  .Lrkfn795: .string "$tt_nonvar"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn795]
 lea rsi, [rbp + 2432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 cmp eax, 99
 je xchain692_n69_α
 jmp xchain692_n68_α
 xchain692_n65_β:
 jmp xchain692_n69_α
# IR_VAR_REF
 xchain692_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3296]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain692_n70_α
# IR_VAR_REF
 xchain692_n67_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3296]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain692_n71_α
# IR_VAR_REF
 xchain692_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain692_n72_α
# IR_VAR_REF
 xchain692_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3360]
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain692_n73_α
# IR_VAR_REF
 xchain692_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain692_n74_α
# IR_VAR_REF
 xchain692_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain692_n75_α
# IR_LIT_STRING
 xchain692_n72_α:
 mov qword ptr [rbp + 2240], 1
 mov rax, qword ptr [rip + .Lx808_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain692_n76_α
.Lx808_0:
 .quad .Lx808_0_s
.Lx808_0_s:
 .string "->"
# IR_VAR_REF
 xchain692_n73_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3312]
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 jmp xchain692_n77_α
 xchain692_n74_α:
 mov qword ptr [rbp + 1232], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx812_20
 mov rax, qword ptr [rbp + 1264]
 mov rdx, qword ptr [rbp + 1272]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx812_21
.Lx812_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1264]
 mov rdx, qword ptr [rbp + 1272]
 call rt_arg_stage@PLT
.Lx812_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx812_22
 mov rax, qword ptr [rbp + 1296]
 mov rdx, qword ptr [rbp + 1304]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx812_23
.Lx812_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 1296]
 mov rdx, qword ptr [rbp + 1304]
 call rt_arg_stage@PLT
.Lx812_23:
 mov rdi, qword ptr [rip + .Lx812_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx812_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx812_3]
 lea rdx, [rip + .Lx812_4]
 jmp rax
.Lx812_3:
 mov qword ptr [rbp + 1240], rsp
 mov rax, qword ptr [rbp + 1232]
 test rax, rax
 jne .Lx812_5
 mov qword ptr [rbp + 1232], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx812_2
.Lx812_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx812_2
.Lx812_4:
 mov rax, qword ptr [rbp + 1232]
 test rax, rax
 jne .Lx812_6
 mov qword ptr [rbp + 1232], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx812_2
.Lx812_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx812_2
.Lx812_1:
 call rt_faildescr@PLT
.Lx812_2:
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain692_n44_α
 jmp xchain692_n78_α
 xchain692_n74_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1240]
 jmp qword ptr [rsp]
.Lx812_0:
 .quad .Lx812_0_s
.Lx812_0_s:
 .string "interpret/2"
 xchain692_n75_α:
 mov qword ptr [rbp + 208], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx814_20
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx814_21
.Lx814_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
.Lx814_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx814_22
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx814_23
.Lx814_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
.Lx814_23:
 mov rdi, qword ptr [rip + .Lx814_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx814_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx814_3]
 lea rdx, [rip + .Lx814_4]
 jmp rax
.Lx814_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx814_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx814_2
.Lx814_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx814_2
.Lx814_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx814_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx814_2
.Lx814_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx814_2
.Lx814_1:
 call rt_faildescr@PLT
.Lx814_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain692_n44_α
 jmp xchain692_n79_α
 xchain692_n75_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx814_0:
 .quad .Lx814_0_s
.Lx814_0_s:
 .string "interpret/2"
# IR_VAR_REF
 xchain692_n76_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3376]
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain692_n80_α
 xchain692_n77_α:
 mov qword ptr [rbp + 2320], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx818_20
 mov rax, qword ptr [rbp + 2352]
 mov rdx, qword ptr [rbp + 2360]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx818_21
.Lx818_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2352]
 mov rdx, qword ptr [rbp + 2360]
 call rt_arg_stage@PLT
.Lx818_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx818_22
 mov rax, qword ptr [rbp + 2384]
 mov rdx, qword ptr [rbp + 2392]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx818_23
.Lx818_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 2384]
 mov rdx, qword ptr [rbp + 2392]
 call rt_arg_stage@PLT
.Lx818_23:
 mov rdi, qword ptr [rip + .Lx818_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx818_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx818_3]
 lea rdx, [rip + .Lx818_4]
 jmp rax
.Lx818_3:
 mov qword ptr [rbp + 2328], rsp
 mov rax, qword ptr [rbp + 2320]
 test rax, rax
 jne .Lx818_5
 mov qword ptr [rbp + 2320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx818_2
.Lx818_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx818_2
.Lx818_4:
 mov rax, qword ptr [rbp + 2320]
 test rax, rax
 jne .Lx818_6
 mov qword ptr [rbp + 2320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx818_2
.Lx818_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx818_2
.Lx818_1:
 call rt_faildescr@PLT
.Lx818_2:
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain692_n44_α
 jmp xchain692_n81_α
 xchain692_n77_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2328]
 jmp qword ptr [rsp]
.Lx818_0:
 .quad .Lx818_0_s
.Lx818_0_s:
 .string "interpret/2"
# IR_SUSPEND yield+resume
 xchain692_n78_α:
 lea rax, [rip + xchain692_n78_β]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_disjunction$2F3_γ
 xchain692_n78_β:
 jmp xchain692_n74_β
# IR_SUSPEND yield+resume
 xchain692_n79_α:
 lea rax, [rip + xchain692_n79_β]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_disjunction$2F3_γ
 xchain692_n79_β:
 jmp xchain692_n75_β
# IR_VAR_REF
 xchain692_n80_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3360]
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain692_n82_α
# IR_SUSPEND yield+resume
 xchain692_n81_α:
 lea rax, [rip + xchain692_n81_β]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_interpret_disjunction$2F3_γ
 xchain692_n81_β:
 jmp xchain692_n17_α
 xchain692_n82_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2240] -> [zr+2176]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2184], rax
# marshal arg1 = producer-box slot [zr+2096] -> [zr+2192]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2200], rax
# marshal arg2 = producer-box slot [zr+2128] -> [zr+2208]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2176]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 cmp eax, 99
 je xchain692_n44_α
 jmp xchain692_n83_α
 xchain692_n82_β:
 jmp xchain692_n44_α
 xchain692_n83_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2064] -> [zr+2032]
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 2040], rax
# marshal arg1 = producer-box slot [zr+2160] -> [zr+2048]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2056], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2032]
 lea r8, [rbp + 2032]
.Lx828_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx828_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx828_41
 cmp esi, 1
 jne .Lx828_55
 mov r8, rax
 jmp .Lx828_40
.Lx828_55:
 cmp esi, 2
 jne .Lx828_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx828_41
 mov r8, rax
 jmp .Lx828_40
.Lx828_56:
 cmp eax, 13
 jne .Lx828_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx828_41
 cmp rax, r8
 je .Lx828_41
 mov r8, rax
 jmp .Lx828_40
.Lx828_41:
 lea r9, [rbp + 2048]
.Lx828_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx828_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx828_43
 cmp esi, 1
 jne .Lx828_57
 mov r9, rax
 jmp .Lx828_42
.Lx828_57:
 cmp esi, 2
 jne .Lx828_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx828_43
 mov r9, rax
 jmp .Lx828_42
.Lx828_58:
 cmp eax, 13
 jne .Lx828_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx828_43
 cmp rax, r9
 je .Lx828_43
 mov r9, rax
 jmp .Lx828_42
.Lx828_43:
 cmp r8, r9
 je .Lx828_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx828_44
 cmp eax, 99
 je .Lx828_44
 cmp eax, 13
 jne .Lx828_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx828_44
 jmp .Lx828_45
.Lx828_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx828_53
 cmp eax, 99
 je .Lx828_53
 cmp eax, 13
 jne .Lx828_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx828_53
 jmp .Lx828_46
.Lx828_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx828_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx828_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx828_51
.Lx828_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx828_47
 cmp eax, 99
 je .Lx828_47
 cmp eax, 13
 jne .Lx828_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx828_47
 jmp .Lx828_48
.Lx828_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx828_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx828_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx828_51
.Lx828_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx828_49
 cmp edx, 14
 je .Lx828_53
 jmp .Lx828_52
.Lx828_49:
 cmp edx, 14
 je .Lx828_52
 cmp ecx, 7
 je .Lx828_53
 cmp edx, 7
 je .Lx828_53
 cmp ecx, 6
 jne .Lx828_50
 cmp edx, 6
 jne .Lx828_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx828_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx828_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx828_51
 jmp .Lx828_52
.Lx828_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx828_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx828_53
.Lx828_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx828_54
.Lx828_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx828_54
.Lx828_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx828_54:
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain692_n44_α
 jmp xchain692_n81_α
 xchain692_n83_β:
 jmp xchain692_n44_α
proc_interpret_disjunction$2F3_res:
add rsp, 8
pop rbp
proc_interpret_disjunction$2F3_β:
jmp qword ptr [rbp + 3264]
proc_interpret_disjunction$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_interpret_disjunction$2F3_res]
push rax
mov rax, [rbp + 3416]
mov rbp, [rbp + 3432]
jmp rax
proc_interpret_disjunction$2F3_ω:
mov rax, [rbp + 3424]
lea rsp, [rbp + 3440]
mov rbp, [rbp + 3432]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "interpret/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_interpret$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 608
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "interpret/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_interpret$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 5776
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "is_built_in/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_is_built_in$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 784
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "meta_qsort/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_meta_qsort$2F0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 240
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname4: .string "define/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_define$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 13872
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "interpret_built_in/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_interpret_built_in$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 896
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname6: .string "interpret_disjunction/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_interpret_disjunction$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 3408
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_generator@PLT
  add rsp, 8
  ret
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  xor esi, esi
  call main_α
  xor eax, eax
  add rsp, 24
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 360], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain829_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain829_n1_α
 xchain829_n0_β:
 jmp main_ω
 xchain829_n1_α:
 mov qword ptr [rbp + 320], 0
 mov rdi, qword ptr [rip + .Lx832_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx832_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx832_3]
 lea rdx, [rip + .Lx832_4]
 jmp rax
.Lx832_3:
 mov qword ptr [rbp + 328], rsp
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx832_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx832_2
.Lx832_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx832_2
.Lx832_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx832_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx832_2
.Lx832_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx832_2
.Lx832_1:
 call rt_faildescr@PLT
.Lx832_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain829_n3_α
 jmp xchain829_n2_α
 xchain829_n1_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 328]
 jmp qword ptr [rsp]
.Lx832_0:
 .quad .Lx832_0_s
.Lx832_0_s:
 .string "meta_qsort/0"
# IR_LIT_STRING
 xchain829_n2_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx833_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain829_n4_α
.Lx833_0:
 .quad .Lx833_0_s
.Lx833_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain829_n3_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx834_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain829_n5_α
.Lx834_0:
 .quad .Lx834_0_s
.Lx834_0_s:
 .string "failed"
 xchain829_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn836: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn836]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain829_n7_α
 jmp xchain829_n6_α
 xchain829_n4_β:
 jmp xchain829_n7_α
 xchain829_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+256]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn838: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn838]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain829_n7_α
 jmp xchain829_n6_α
 xchain829_n5_β:
 jmp xchain829_n7_α
# IR_LIT_STRING
 xchain829_n6_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx839_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain829_n8_α
.Lx839_0:
 .quad .Lx839_0_s
.Lx839_0_s:
 .string ""
 xchain829_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain829_n7_β:
 jmp main_ω
 xchain829_n8_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn842: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn842]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain829_n7_α
 jmp xchain829_n9_α
 xchain829_n8_β:
 jmp xchain829_n7_α
# IR_MOVE_LABEL
 xchain829_n9_α:
 lea rax, [rip + xchain829_n7_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain829_n10_α:
 jmp qword ptr [rbp + 32]
 xchain829_n10_β:
 jmp main_ω
main_β:
jmp xchain829_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 360]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 360]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
