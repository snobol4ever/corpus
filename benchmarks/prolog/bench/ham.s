  .intel_syntax noprefix
  .text
  .globl proc_del$2F3_α
proc_del$2F3_α:
#=======================================================================================================================
    .global proc_del$2F3_α
    .global proc_del$2F3_β
    .global proc_del$2F3_γ
    .global proc_del$2F3_ω
  sub rsp, 1360
  mov [rsp + 1336], rcx
  mov [rsp + 1344], rdx
  mov [rsp + 1352], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1240], rsp
  mov rdi, rsp
  mov esi, 1216
  mov edx, 1328
  call rt_jmp_frame_lexprep2@PLT
proc_del$2F3_α_body:
lea rax, [rip + xchain0_n19_β]
mov qword ptr [rbp + 1216], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_del$2F3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_del$2F3_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain0_n3_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1120]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1128], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1136]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1144], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1120]
 lea r8, [rbp + 1120]
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
 lea r9, [rbp + 1136]
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
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+800]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 800]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je proc_del$2F3_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_del$2F3_ω
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain0_n8_α
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain0_n9_α
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain0_n10_α
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain0_n11_α
 xchain0_n10_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+992]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+1008]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1016], rax
# marshal arg2 = producer-box slot [zr+1072] -> [zr+1024]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n5_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+688]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+704]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 712], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 688]
 lea r8, [rbp + 688]
.Lx19_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx19_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx19_41
 cmp esi, 1
 jne .Lx19_55
 mov r8, rax
 jmp .Lx19_40
.Lx19_55:
 cmp esi, 2
 jne .Lx19_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx19_41
 mov r8, rax
 jmp .Lx19_40
.Lx19_56:
 cmp eax, 13
 jne .Lx19_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx19_41
 cmp rax, r8
 je .Lx19_41
 mov r8, rax
 jmp .Lx19_40
.Lx19_41:
 lea r9, [rbp + 704]
.Lx19_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx19_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx19_43
 cmp esi, 1
 jne .Lx19_57
 mov r9, rax
 jmp .Lx19_42
.Lx19_57:
 cmp esi, 2
 jne .Lx19_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx19_43
 mov r9, rax
 jmp .Lx19_42
.Lx19_58:
 cmp eax, 13
 jne .Lx19_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx19_43
 cmp rax, r9
 je .Lx19_43
 mov r9, rax
 jmp .Lx19_42
.Lx19_43:
 cmp r8, r9
 je .Lx19_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx19_44
 cmp eax, 99
 je .Lx19_44
 cmp eax, 13
 jne .Lx19_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx19_44
 jmp .Lx19_45
.Lx19_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx19_53
 cmp eax, 99
 je .Lx19_53
 cmp eax, 13
 jne .Lx19_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx19_53
 jmp .Lx19_46
.Lx19_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx19_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx19_53
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
 jmp .Lx19_51
.Lx19_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx19_47
 cmp eax, 99
 je .Lx19_47
 cmp eax, 13
 jne .Lx19_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx19_47
 jmp .Lx19_48
.Lx19_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx19_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx19_53
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
 jmp .Lx19_51
.Lx19_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx19_49
 cmp edx, 14
 je .Lx19_53
 jmp .Lx19_52
.Lx19_49:
 cmp edx, 14
 je .Lx19_52
 cmp ecx, 7
 je .Lx19_53
 cmp edx, 7
 je .Lx19_53
 cmp ecx, 6
 jne .Lx19_50
 cmp edx, 6
 jne .Lx19_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx19_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx19_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx19_51
 jmp .Lx19_52
.Lx19_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx19_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx19_53
.Lx19_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx19_54
.Lx19_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx19_54
.Lx19_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx19_54:
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain0_n15_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain0_n16_α
 xchain0_n14_α:
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
 je proc_del$2F3_ω
 jmp proc_del$2F3_ω
 xchain0_n14_β:
 jmp proc_del$2F3_ω
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain0_n17_α
# IR_VAR_REF
 xchain0_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain0_n18_α
 xchain0_n17_α:
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
.Lx29_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx29_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx29_41
 cmp esi, 1
 jne .Lx29_55
 mov r8, rax
 jmp .Lx29_40
.Lx29_55:
 cmp esi, 2
 jne .Lx29_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx29_41
 mov r8, rax
 jmp .Lx29_40
.Lx29_56:
 cmp eax, 13
 jne .Lx29_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx29_41
 cmp rax, r8
 je .Lx29_41
 mov r8, rax
 jmp .Lx29_40
.Lx29_41:
 lea r9, [rbp + 864]
.Lx29_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx29_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx29_43
 cmp esi, 1
 jne .Lx29_57
 mov r9, rax
 jmp .Lx29_42
.Lx29_57:
 cmp esi, 2
 jne .Lx29_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx29_43
 mov r9, rax
 jmp .Lx29_42
.Lx29_58:
 cmp eax, 13
 jne .Lx29_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx29_43
 cmp rax, r9
 je .Lx29_43
 mov r9, rax
 jmp .Lx29_42
.Lx29_43:
 cmp r8, r9
 je .Lx29_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx29_44
 cmp eax, 99
 je .Lx29_44
 cmp eax, 13
 jne .Lx29_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx29_44
 jmp .Lx29_45
.Lx29_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx29_53
 cmp eax, 99
 je .Lx29_53
 cmp eax, 13
 jne .Lx29_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx29_53
 jmp .Lx29_46
.Lx29_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx29_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx29_53
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
 jmp .Lx29_51
.Lx29_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx29_47
 cmp eax, 99
 je .Lx29_47
 cmp eax, 13
 jne .Lx29_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx29_47
 jmp .Lx29_48
.Lx29_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx29_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx29_53
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
 jmp .Lx29_51
.Lx29_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx29_49
 cmp edx, 14
 je .Lx29_53
 jmp .Lx29_52
.Lx29_49:
 cmp edx, 14
 je .Lx29_52
 cmp ecx, 7
 je .Lx29_53
 cmp edx, 7
 je .Lx29_53
 cmp ecx, 6
 jne .Lx29_50
 cmp edx, 6
 jne .Lx29_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx29_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx29_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx29_51
 jmp .Lx29_52
.Lx29_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx29_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx29_53
.Lx29_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx29_54
.Lx29_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx29_54
.Lx29_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx29_54:
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n20_α
# IR_SUSPEND yield+resume
 xchain0_n19_α:
 lea rax, [rip + xchain0_n19_β]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_del$2F3_γ
 xchain0_n19_β:
 jmp xchain0_n5_α
 xchain0_n20_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+560]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+576]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 584], rax
# marshal arg2 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain0_n22_α
# IR_VAR_REF
 xchain0_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain0_n23_α
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain0_n24_α
 xchain0_n24_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+400]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
# marshal arg2 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 400]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain0_n26_α
# IR_VAR_REF
 xchain0_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain0_n28_α
 xchain0_n28_α:
 mov qword ptr [rbp + 224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx49_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx49_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx49_3]
 lea rdx, [rip + .Lx49_4]
 jmp rax
.Lx49_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx49_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx49_2
.Lx49_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx49_2
.Lx49_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx49_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx49_2
.Lx49_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx49_2
.Lx49_1:
 call rt_faildescr@PLT
.Lx49_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n29_α
 xchain0_n28_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "del/3"
# IR_SUSPEND yield+resume
 xchain0_n29_α:
 lea rax, [rip + xchain0_n29_β]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_del$2F3_γ
 xchain0_n29_β:
 jmp xchain0_n28_β
proc_del$2F3_res:
add rsp, 8
pop rbp
proc_del$2F3_β:
jmp qword ptr [rbp + 1216]
proc_del$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_del$2F3_res]
push rax
mov rax, [rbp + 1336]
mov rbp, [rbp + 1352]
jmp rax
proc_del$2F3_ω:
mov rax, [rbp + 1344]
lea rsp, [rbp + 1360]
mov rbp, [rbp + 1352]
jmp rax
  .globl proc_el$2F2_α
proc_el$2F2_α:
#=======================================================================================================================
    .global proc_el$2F2_α
    .global proc_el$2F2_β
    .global proc_el$2F2_γ
    .global proc_el$2F2_ω
  sub rsp, 992
  mov [rsp + 968], rcx
  mov [rsp + 976], rdx
  mov [rsp + 984], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 904], rsp
  mov rdi, rsp
  mov esi, 880
  mov edx, 960
  call rt_jmp_frame_lexprep2@PLT
proc_el$2F2_α_body:
lea rax, [rip + xchain52_n12_β]
mov qword ptr [rbp + 880], rax
 xchain52_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_el$2F2_ω
 jmp xchain52_n1_α
 xchain52_n0_β:
 jmp proc_el$2F2_ω
# IR_VAR_REF
 xchain52_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain52_n2_α
# IR_VAR_REF
 xchain52_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 912]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain52_n3_α
 xchain52_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+784]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 808], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 784]
 lea r8, [rbp + 784]
.Lx58_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx58_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx58_41
 cmp esi, 1
 jne .Lx58_55
 mov r8, rax
 jmp .Lx58_40
.Lx58_55:
 cmp esi, 2
 jne .Lx58_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx58_41
 mov r8, rax
 jmp .Lx58_40
.Lx58_56:
 cmp eax, 13
 jne .Lx58_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx58_41
 cmp rax, r8
 je .Lx58_41
 mov r8, rax
 jmp .Lx58_40
.Lx58_41:
 lea r9, [rbp + 800]
.Lx58_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx58_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx58_43
 cmp esi, 1
 jne .Lx58_57
 mov r9, rax
 jmp .Lx58_42
.Lx58_57:
 cmp esi, 2
 jne .Lx58_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx58_43
 mov r9, rax
 jmp .Lx58_42
.Lx58_58:
 cmp eax, 13
 jne .Lx58_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx58_43
 cmp rax, r9
 je .Lx58_43
 mov r9, rax
 jmp .Lx58_42
.Lx58_43:
 cmp r8, r9
 je .Lx58_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx58_44
 cmp eax, 99
 je .Lx58_44
 cmp eax, 13
 jne .Lx58_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx58_44
 jmp .Lx58_45
.Lx58_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx58_53
 cmp eax, 99
 je .Lx58_53
 cmp eax, 13
 jne .Lx58_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx58_53
 jmp .Lx58_46
.Lx58_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx58_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx58_53
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
 jmp .Lx58_51
.Lx58_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx58_47
 cmp eax, 99
 je .Lx58_47
 cmp eax, 13
 jne .Lx58_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx58_47
 jmp .Lx58_48
.Lx58_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx58_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx58_53
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
 jmp .Lx58_51
.Lx58_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx58_49
 cmp edx, 14
 je .Lx58_53
 jmp .Lx58_52
.Lx58_49:
 cmp edx, 14
 je .Lx58_52
 cmp ecx, 7
 je .Lx58_53
 cmp edx, 7
 je .Lx58_53
 cmp ecx, 6
 jne .Lx58_50
 cmp edx, 6
 jne .Lx58_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx58_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx58_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx58_51
 jmp .Lx58_52
.Lx58_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx58_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx58_53
.Lx58_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx58_54
.Lx58_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx58_54
.Lx58_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx58_54:
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n4_α
 xchain52_n3_β:
 jmp xchain52_n5_α
# IR_VAR_REF
 xchain52_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain52_n6_α
 xchain52_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+576]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_el$2F2_ω
 jmp xchain52_n7_α
 xchain52_n5_β:
 jmp proc_el$2F2_ω
# IR_VAR_REF
 xchain52_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 912]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain52_n8_α
# IR_VAR_REF
 xchain52_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain52_n9_α
# IR_VAR_REF
 xchain52_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 944]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain52_n10_α
# IR_VAR_REF
 xchain52_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 912]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain52_n11_α
 xchain52_n10_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+656]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+672]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 680], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n12_α
 xchain52_n10_β:
 jmp xchain52_n5_α
 xchain52_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+464]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 472], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+480]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 488], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 464]
 lea r8, [rbp + 464]
.Lx71_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx71_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx71_41
 cmp esi, 1
 jne .Lx71_55
 mov r8, rax
 jmp .Lx71_40
.Lx71_55:
 cmp esi, 2
 jne .Lx71_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx71_41
 mov r8, rax
 jmp .Lx71_40
.Lx71_56:
 cmp eax, 13
 jne .Lx71_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx71_41
 cmp rax, r8
 je .Lx71_41
 mov r8, rax
 jmp .Lx71_40
.Lx71_41:
 lea r9, [rbp + 480]
.Lx71_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx71_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx71_43
 cmp esi, 1
 jne .Lx71_57
 mov r9, rax
 jmp .Lx71_42
.Lx71_57:
 cmp esi, 2
 jne .Lx71_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx71_43
 mov r9, rax
 jmp .Lx71_42
.Lx71_58:
 cmp eax, 13
 jne .Lx71_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx71_43
 cmp rax, r9
 je .Lx71_43
 mov r9, rax
 jmp .Lx71_42
.Lx71_43:
 cmp r8, r9
 je .Lx71_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx71_44
 cmp eax, 99
 je .Lx71_44
 cmp eax, 13
 jne .Lx71_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx71_44
 jmp .Lx71_45
.Lx71_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx71_53
 cmp eax, 99
 je .Lx71_53
 cmp eax, 13
 jne .Lx71_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx71_53
 jmp .Lx71_46
.Lx71_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx71_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx71_53
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
 jmp .Lx71_51
.Lx71_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx71_47
 cmp eax, 99
 je .Lx71_47
 cmp eax, 13
 jne .Lx71_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx71_47
 jmp .Lx71_48
.Lx71_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx71_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx71_53
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
 jmp .Lx71_51
.Lx71_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx71_49
 cmp edx, 14
 je .Lx71_53
 jmp .Lx71_52
.Lx71_49:
 cmp edx, 14
 je .Lx71_52
 cmp ecx, 7
 je .Lx71_53
 cmp edx, 7
 je .Lx71_53
 cmp ecx, 6
 jne .Lx71_50
 cmp edx, 6
 jne .Lx71_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx71_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx71_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx71_51
 jmp .Lx71_52
.Lx71_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx71_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx71_53
.Lx71_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx71_54
.Lx71_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx71_54
.Lx71_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx71_54:
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain52_n14_α
 jmp xchain52_n13_α
 xchain52_n11_β:
 jmp xchain52_n14_α
# IR_SUSPEND yield+resume
 xchain52_n12_α:
 lea rax, [rip + xchain52_n12_β]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_el$2F2_γ
 xchain52_n12_β:
 jmp xchain52_n5_α
# IR_VAR_REF
 xchain52_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain52_n15_α
 xchain52_n14_α:
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
 je proc_el$2F2_ω
 jmp proc_el$2F2_ω
 xchain52_n14_β:
 jmp proc_el$2F2_ω
# IR_VAR_REF
 xchain52_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 944]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain52_n16_α
# IR_VAR_REF
 xchain52_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 928]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain52_n17_α
 xchain52_n17_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+336]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 360], rax
# marshal arg2 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain52_n14_α
 jmp xchain52_n18_α
 xchain52_n17_β:
 jmp xchain52_n14_α
# IR_VAR_REF
 xchain52_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 912]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain52_n19_α
# IR_VAR_REF
 xchain52_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 928]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain52_n20_α
 xchain52_n20_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx87_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx87_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx87_3]
 lea rdx, [rip + .Lx87_4]
 jmp rax
.Lx87_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx87_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx87_2
.Lx87_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx87_2
.Lx87_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx87_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx87_2
.Lx87_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx87_2
.Lx87_1:
 call rt_faildescr@PLT
.Lx87_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain52_n14_α
 jmp xchain52_n21_α
 xchain52_n20_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "el/2"
# IR_SUSPEND yield+resume
 xchain52_n21_α:
 lea rax, [rip + xchain52_n21_β]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_el$2F2_γ
 xchain52_n21_β:
 jmp xchain52_n20_β
proc_el$2F2_res:
add rsp, 8
pop rbp
proc_el$2F2_β:
jmp qword ptr [rbp + 880]
proc_el$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_el$2F2_res]
push rax
mov rax, [rbp + 968]
mov rbp, [rbp + 984]
jmp rax
proc_el$2F2_ω:
mov rax, [rbp + 976]
lea rsp, [rbp + 992]
mov rbp, [rbp + 984]
jmp rax
  .globl proc_connect$2F2_α
proc_connect$2F2_α:
#=======================================================================================================================
    .global proc_connect$2F2_α
    .global proc_connect$2F2_β
    .global proc_connect$2F2_γ
    .global proc_connect$2F2_ω
  sub rsp, 14256
  mov [rsp + 14232], rcx
  mov [rsp + 14240], rdx
  mov [rsp + 14248], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 14216], rsp
  mov rdi, rsp
  mov esi, 14192
  mov edx, 14224
  call rt_jmp_frame_lexprep2@PLT
proc_connect$2F2_α_body:
lea rax, [rip + xchain90_n40_β]
mov qword ptr [rbp + 14192], rax
 xchain90_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n1_α
 xchain90_n0_β:
 jmp proc_connect$2F2_ω
# IR_VAR_REF
 xchain90_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 14128], rax
 mov qword ptr [rbp + 14136], rdx
 jmp xchain90_n2_α
# IR_LIT_STRING
 xchain90_n2_α:
 mov qword ptr [rbp + 14160], 1
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [rbp + 14168], rax
 jmp xchain90_n3_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "a"
 xchain90_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14128] -> [zr+14096]
 mov rax, qword ptr [rbp + 14128]
 mov qword ptr [rbp + 14096], rax
 mov rax, qword ptr [rbp + 14136]
 mov qword ptr [rbp + 14104], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 14096]
 mov rsi, qword ptr [rip + .Lx95_2]
 jmp .Lx95_3
.Lx95_2:
 .quad .Lx95_2_s
.Lx95_2_s:
 .string "a"
.Lx95_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 14080], rax
 mov qword ptr [rbp + 14088], rdx
 cmp eax, 99
 je xchain90_n5_α
 jmp xchain90_n4_α
 xchain90_n3_β:
 jmp xchain90_n5_α
# IR_VAR_REF
 xchain90_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 13584], rax
 mov qword ptr [rbp + 13592], rdx
 jmp xchain90_n6_α
 xchain90_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+13504]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 13504], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 13512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 13504]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 13488], rax
 mov qword ptr [rbp + 13496], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n7_α
 xchain90_n5_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n6_α:
 mov qword ptr [rbp + 14048], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rbp + 14056], rax
 jmp xchain90_n8_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 13424], rax
 mov qword ptr [rbp + 13432], rdx
 jmp xchain90_n9_α
# IR_LIT_STRING
 xchain90_n8_α:
 mov qword ptr [rbp + 13936], 1
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [rbp + 13944], rax
 jmp xchain90_n10_α
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string "b"
# IR_LIT_STRING
 xchain90_n9_α:
 mov qword ptr [rbp + 13456], 1
 mov rax, qword ptr [rip + .Lx103_0]
 mov qword ptr [rbp + 13464], rax
 jmp xchain90_n11_α
.Lx103_0:
 .quad .Lx103_0_s
.Lx103_0_s:
 .string "b"
# IR_LIT_STRING
 xchain90_n10_α:
 mov qword ptr [rbp + 13904], 1
 mov rax, qword ptr [rip + .Lx104_0]
 mov qword ptr [rbp + 13912], rax
 jmp xchain90_n12_α
.Lx104_0:
 .quad .Lx104_0_s
.Lx104_0_s:
 .string "."
 xchain90_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13424] -> [zr+13392]
 mov rax, qword ptr [rbp + 13424]
 mov qword ptr [rbp + 13392], rax
 mov rax, qword ptr [rbp + 13432]
 mov qword ptr [rbp + 13400], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 13392]
 mov rsi, qword ptr [rip + .Lx105_2]
 jmp .Lx105_3
.Lx105_2:
 .quad .Lx105_2_s
.Lx105_2_s:
 .string "b"
.Lx105_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 13376], rax
 mov qword ptr [rbp + 13384], rdx
 cmp eax, 99
 je xchain90_n14_α
 jmp xchain90_n13_α
 xchain90_n11_β:
 jmp xchain90_n14_α
# IR_LIT_STRING
 xchain90_n12_α:
 mov qword ptr [rbp + 13792], 1
 mov rax, qword ptr [rip + .Lx106_0]
 mov qword ptr [rbp + 13800], rax
 jmp xchain90_n15_α
.Lx106_0:
 .quad .Lx106_0_s
.Lx106_0_s:
 .string "j"
# IR_VAR_REF
 xchain90_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 12880], rax
 mov qword ptr [rbp + 12888], rdx
 jmp xchain90_n16_α
 xchain90_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+12800]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 12800], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 12808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 12800]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 12784], rax
 mov qword ptr [rbp + 12792], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n17_α
 xchain90_n14_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n15_α:
 mov qword ptr [rbp + 13760], 1
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [rbp + 13768], rax
 jmp xchain90_n18_α
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n16_α:
 mov qword ptr [rbp + 13344], 1
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [rbp + 13352], rax
 jmp xchain90_n19_α
.Lx111_0:
 .quad .Lx111_0_s
.Lx111_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 12720], rax
 mov qword ptr [rbp + 12728], rdx
 jmp xchain90_n20_α
# IR_LIT_STRING
 xchain90_n18_α:
 mov qword ptr [rbp + 13648], 1
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [rbp + 13656], rax
 jmp xchain90_n21_α
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "k"
# IR_LIT_STRING
 xchain90_n19_α:
 mov qword ptr [rbp + 13232], 1
 mov rax, qword ptr [rip + .Lx115_0]
 mov qword ptr [rbp + 13240], rax
 jmp xchain90_n22_α
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "a"
# IR_LIT_STRING
 xchain90_n20_α:
 mov qword ptr [rbp + 12752], 1
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [rbp + 12760], rax
 jmp xchain90_n23_α
.Lx116_0:
 .quad .Lx116_0_s
.Lx116_0_s:
 .string "c"
# IR_LIT_STRING
 xchain90_n21_α:
 mov qword ptr [rbp + 13616], 1
 mov rax, qword ptr [rip + .Lx117_0]
 mov qword ptr [rbp + 13624], rax
 jmp xchain90_n24_α
.Lx117_0:
 .quad .Lx117_0_s
.Lx117_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n22_α:
 mov qword ptr [rbp + 13200], 1
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [rbp + 13208], rax
 jmp xchain90_n25_α
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "."
 xchain90_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12720] -> [zr+12688]
 mov rax, qword ptr [rbp + 12720]
 mov qword ptr [rbp + 12688], rax
 mov rax, qword ptr [rbp + 12728]
 mov qword ptr [rbp + 12696], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 12688]
 mov rsi, qword ptr [rip + .Lx119_2]
 jmp .Lx119_3
.Lx119_2:
 .quad .Lx119_2_s
.Lx119_2_s:
 .string "c"
.Lx119_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 12672], rax
 mov qword ptr [rbp + 12680], rdx
 cmp eax, 99
 je xchain90_n27_α
 jmp xchain90_n26_α
 xchain90_n23_β:
 jmp xchain90_n27_α
 xchain90_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13760] -> [zr+13696]
 mov rax, qword ptr [rbp + 13760]
 mov qword ptr [rbp + 13696], rax
 mov rax, qword ptr [rbp + 13768]
 mov qword ptr [rbp + 13704], rax
# marshal arg1 = producer-box slot [zr+13648] -> [zr+13712]
 mov rax, qword ptr [rbp + 13648]
 mov qword ptr [rbp + 13712], rax
 mov rax, qword ptr [rbp + 13656]
 mov qword ptr [rbp + 13720], rax
# marshal arg2 = producer-box slot [zr+13616] -> [zr+13728]
 mov rax, qword ptr [rbp + 13616]
 mov qword ptr [rbp + 13728], rax
 mov rax, qword ptr [rbp + 13624]
 mov qword ptr [rbp + 13736], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13696]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13680], rax
 mov qword ptr [rbp + 13688], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n28_α
 xchain90_n24_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n25_α:
 mov qword ptr [rbp + 13088], 1
 mov rax, qword ptr [rip + .Lx121_0]
 mov qword ptr [rbp + 13096], rax
 jmp xchain90_n29_α
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string "c"
# IR_VAR_REF
 xchain90_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 12176], rax
 mov qword ptr [rbp + 12184], rdx
 jmp xchain90_n30_α
 xchain90_n27_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+12096]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 12096], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 12104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 12096]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 12080], rax
 mov qword ptr [rbp + 12088], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n31_α
 xchain90_n27_β:
 jmp proc_connect$2F2_ω
 xchain90_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13904] -> [zr+13840]
 mov rax, qword ptr [rbp + 13904]
 mov qword ptr [rbp + 13840], rax
 mov rax, qword ptr [rbp + 13912]
 mov qword ptr [rbp + 13848], rax
# marshal arg1 = producer-box slot [zr+13792] -> [zr+13856]
 mov rax, qword ptr [rbp + 13792]
 mov qword ptr [rbp + 13856], rax
 mov rax, qword ptr [rbp + 13800]
 mov qword ptr [rbp + 13864], rax
# marshal arg2 = producer-box slot [zr+13680] -> [zr+13872]
 mov rax, qword ptr [rbp + 13680]
 mov qword ptr [rbp + 13872], rax
 mov rax, qword ptr [rbp + 13688]
 mov qword ptr [rbp + 13880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13840]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13824], rax
 mov qword ptr [rbp + 13832], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n32_α
 xchain90_n28_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n29_α:
 mov qword ptr [rbp + 13056], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [rbp + 13064], rax
 jmp xchain90_n33_α
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n30_α:
 mov qword ptr [rbp + 12640], 1
 mov rax, qword ptr [rip + .Lx127_0]
 mov qword ptr [rbp + 12648], rax
 jmp xchain90_n34_α
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 12016], rax
 mov qword ptr [rbp + 12024], rdx
 jmp xchain90_n35_α
 xchain90_n32_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14048] -> [zr+13984]
 mov rax, qword ptr [rbp + 14048]
 mov qword ptr [rbp + 13984], rax
 mov rax, qword ptr [rbp + 14056]
 mov qword ptr [rbp + 13992], rax
# marshal arg1 = producer-box slot [zr+13936] -> [zr+14000]
 mov rax, qword ptr [rbp + 13936]
 mov qword ptr [rbp + 14000], rax
 mov rax, qword ptr [rbp + 13944]
 mov qword ptr [rbp + 14008], rax
# marshal arg2 = producer-box slot [zr+13824] -> [zr+14016]
 mov rax, qword ptr [rbp + 13824]
 mov qword ptr [rbp + 14016], rax
 mov rax, qword ptr [rbp + 13832]
 mov qword ptr [rbp + 14024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13984]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13968], rax
 mov qword ptr [rbp + 13976], rdx
 cmp eax, 99
 je xchain90_n5_α
 jmp xchain90_n36_α
 xchain90_n32_β:
 jmp xchain90_n5_α
# IR_LIT_STRING
 xchain90_n33_α:
 mov qword ptr [rbp + 12944], 1
 mov rax, qword ptr [rip + .Lx131_0]
 mov qword ptr [rbp + 12952], rax
 jmp xchain90_n37_α
.Lx131_0:
 .quad .Lx131_0_s
.Lx131_0_s:
 .string "p"
# IR_LIT_STRING
 xchain90_n34_α:
 mov qword ptr [rbp + 12528], 1
 mov rax, qword ptr [rip + .Lx132_0]
 mov qword ptr [rbp + 12536], rax
 jmp xchain90_n38_α
.Lx132_0:
 .quad .Lx132_0_s
.Lx132_0_s:
 .string "b"
# IR_LIT_STRING
 xchain90_n35_α:
 mov qword ptr [rbp + 12048], 1
 mov rax, qword ptr [rip + .Lx133_0]
 mov qword ptr [rbp + 12056], rax
 jmp xchain90_n39_α
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "d"
 xchain90_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13584] -> [zr+13552]
 mov rax, qword ptr [rbp + 13584]
 mov qword ptr [rbp + 13552], rax
 mov rax, qword ptr [rbp + 13592]
 mov qword ptr [rbp + 13560], rax
# marshal arg1 = producer-box slot [zr+13968] -> [zr+13568]
 mov rax, qword ptr [rbp + 13968]
 mov qword ptr [rbp + 13568], rax
 mov rax, qword ptr [rbp + 13976]
 mov qword ptr [rbp + 13576], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 13552]
 lea r8, [rbp + 13552]
.Lx134_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx134_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx134_41
 cmp esi, 1
 jne .Lx134_55
 mov r8, rax
 jmp .Lx134_40
.Lx134_55:
 cmp esi, 2
 jne .Lx134_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx134_41
 mov r8, rax
 jmp .Lx134_40
.Lx134_56:
 cmp eax, 13
 jne .Lx134_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx134_41
 cmp rax, r8
 je .Lx134_41
 mov r8, rax
 jmp .Lx134_40
.Lx134_41:
 lea r9, [rbp + 13568]
.Lx134_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx134_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx134_43
 cmp esi, 1
 jne .Lx134_57
 mov r9, rax
 jmp .Lx134_42
.Lx134_57:
 cmp esi, 2
 jne .Lx134_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx134_43
 mov r9, rax
 jmp .Lx134_42
.Lx134_58:
 cmp eax, 13
 jne .Lx134_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx134_43
 cmp rax, r9
 je .Lx134_43
 mov r9, rax
 jmp .Lx134_42
.Lx134_43:
 cmp r8, r9
 je .Lx134_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx134_44
 cmp eax, 99
 je .Lx134_44
 cmp eax, 13
 jne .Lx134_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx134_44
 jmp .Lx134_45
.Lx134_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx134_53
 cmp eax, 99
 je .Lx134_53
 cmp eax, 13
 jne .Lx134_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx134_53
 jmp .Lx134_46
.Lx134_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx134_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx134_53
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
 jmp .Lx134_51
.Lx134_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx134_47
 cmp eax, 99
 je .Lx134_47
 cmp eax, 13
 jne .Lx134_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx134_47
 jmp .Lx134_48
.Lx134_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx134_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx134_53
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
 jmp .Lx134_51
.Lx134_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx134_49
 cmp edx, 14
 je .Lx134_53
 jmp .Lx134_52
.Lx134_49:
 cmp edx, 14
 je .Lx134_52
 cmp ecx, 7
 je .Lx134_53
 cmp edx, 7
 je .Lx134_53
 cmp ecx, 6
 jne .Lx134_50
 cmp edx, 6
 jne .Lx134_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx134_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx134_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx134_51
 jmp .Lx134_52
.Lx134_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx134_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx134_53
.Lx134_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx134_54
.Lx134_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx134_54
.Lx134_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx134_54:
 mov qword ptr [rbp + 13536], rax
 mov qword ptr [rbp + 13544], rdx
 cmp eax, 99
 je xchain90_n5_α
 jmp xchain90_n40_α
 xchain90_n36_β:
 jmp xchain90_n5_α
# IR_LIT_STRING
 xchain90_n37_α:
 mov qword ptr [rbp + 12912], 1
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [rbp + 12920], rax
 jmp xchain90_n41_α
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n38_α:
 mov qword ptr [rbp + 12496], 1
 mov rax, qword ptr [rip + .Lx136_0]
 mov qword ptr [rbp + 12504], rax
 jmp xchain90_n42_α
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
 .string "."
 xchain90_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12016] -> [zr+11984]
 mov rax, qword ptr [rbp + 12016]
 mov qword ptr [rbp + 11984], rax
 mov rax, qword ptr [rbp + 12024]
 mov qword ptr [rbp + 11992], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 11984]
 mov rsi, qword ptr [rip + .Lx137_2]
 jmp .Lx137_3
.Lx137_2:
 .quad .Lx137_2_s
.Lx137_2_s:
 .string "d"
.Lx137_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 11968], rax
 mov qword ptr [rbp + 11976], rdx
 cmp eax, 99
 je xchain90_n44_α
 jmp xchain90_n43_α
 xchain90_n39_β:
 jmp xchain90_n44_α
# IR_SUSPEND yield+resume
 xchain90_n40_α:
 lea rax, [rip + xchain90_n40_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n40_β:
 jmp xchain90_n5_α
 xchain90_n41_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13056] -> [zr+12992]
 mov rax, qword ptr [rbp + 13056]
 mov qword ptr [rbp + 12992], rax
 mov rax, qword ptr [rbp + 13064]
 mov qword ptr [rbp + 13000], rax
# marshal arg1 = producer-box slot [zr+12944] -> [zr+13008]
 mov rax, qword ptr [rbp + 12944]
 mov qword ptr [rbp + 13008], rax
 mov rax, qword ptr [rbp + 12952]
 mov qword ptr [rbp + 13016], rax
# marshal arg2 = producer-box slot [zr+12912] -> [zr+13024]
 mov rax, qword ptr [rbp + 12912]
 mov qword ptr [rbp + 13024], rax
 mov rax, qword ptr [rbp + 12920]
 mov qword ptr [rbp + 13032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12992]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12976], rax
 mov qword ptr [rbp + 12984], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n45_α
 xchain90_n41_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n42_α:
 mov qword ptr [rbp + 12384], 1
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [rbp + 12392], rax
 jmp xchain90_n46_α
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string "d"
# IR_VAR_REF
 xchain90_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 11472], rax
 mov qword ptr [rbp + 11480], rdx
 jmp xchain90_n47_α
 xchain90_n44_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+11392]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 11392], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 11400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 11392]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 11376], rax
 mov qword ptr [rbp + 11384], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n48_α
 xchain90_n44_β:
 jmp proc_connect$2F2_ω
 xchain90_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13200] -> [zr+13136]
 mov rax, qword ptr [rbp + 13200]
 mov qword ptr [rbp + 13136], rax
 mov rax, qword ptr [rbp + 13208]
 mov qword ptr [rbp + 13144], rax
# marshal arg1 = producer-box slot [zr+13088] -> [zr+13152]
 mov rax, qword ptr [rbp + 13088]
 mov qword ptr [rbp + 13152], rax
 mov rax, qword ptr [rbp + 13096]
 mov qword ptr [rbp + 13160], rax
# marshal arg2 = producer-box slot [zr+12976] -> [zr+13168]
 mov rax, qword ptr [rbp + 12976]
 mov qword ptr [rbp + 13168], rax
 mov rax, qword ptr [rbp + 12984]
 mov qword ptr [rbp + 13176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13136]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13120], rax
 mov qword ptr [rbp + 13128], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n49_α
 xchain90_n45_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n46_α:
 mov qword ptr [rbp + 12352], 1
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [rbp + 12360], rax
 jmp xchain90_n50_α
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n47_α:
 mov qword ptr [rbp + 11936], 1
 mov rax, qword ptr [rip + .Lx147_0]
 mov qword ptr [rbp + 11944], rax
 jmp xchain90_n51_α
.Lx147_0:
 .quad .Lx147_0_s
.Lx147_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11312], rax
 mov qword ptr [rbp + 11320], rdx
 jmp xchain90_n52_α
 xchain90_n49_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13344] -> [zr+13280]
 mov rax, qword ptr [rbp + 13344]
 mov qword ptr [rbp + 13280], rax
 mov rax, qword ptr [rbp + 13352]
 mov qword ptr [rbp + 13288], rax
# marshal arg1 = producer-box slot [zr+13232] -> [zr+13296]
 mov rax, qword ptr [rbp + 13232]
 mov qword ptr [rbp + 13296], rax
 mov rax, qword ptr [rbp + 13240]
 mov qword ptr [rbp + 13304], rax
# marshal arg2 = producer-box slot [zr+13120] -> [zr+13312]
 mov rax, qword ptr [rbp + 13120]
 mov qword ptr [rbp + 13312], rax
 mov rax, qword ptr [rbp + 13128]
 mov qword ptr [rbp + 13320], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13280]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13264], rax
 mov qword ptr [rbp + 13272], rdx
 cmp eax, 99
 je xchain90_n14_α
 jmp xchain90_n53_α
 xchain90_n49_β:
 jmp xchain90_n14_α
# IR_LIT_STRING
 xchain90_n50_α:
 mov qword ptr [rbp + 12240], 1
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [rbp + 12248], rax
 jmp xchain90_n54_α
.Lx151_0:
 .quad .Lx151_0_s
.Lx151_0_s:
 .string "l"
# IR_LIT_STRING
 xchain90_n51_α:
 mov qword ptr [rbp + 11824], 1
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [rbp + 11832], rax
 jmp xchain90_n55_α
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "c"
# IR_LIT_STRING
 xchain90_n52_α:
 mov qword ptr [rbp + 11344], 1
 mov rax, qword ptr [rip + .Lx153_0]
 mov qword ptr [rbp + 11352], rax
 jmp xchain90_n56_α
.Lx153_0:
 .quad .Lx153_0_s
.Lx153_0_s:
 .string "e"
 xchain90_n53_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12880] -> [zr+12848]
 mov rax, qword ptr [rbp + 12880]
 mov qword ptr [rbp + 12848], rax
 mov rax, qword ptr [rbp + 12888]
 mov qword ptr [rbp + 12856], rax
# marshal arg1 = producer-box slot [zr+13264] -> [zr+12864]
 mov rax, qword ptr [rbp + 13264]
 mov qword ptr [rbp + 12864], rax
 mov rax, qword ptr [rbp + 13272]
 mov qword ptr [rbp + 12872], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 12848]
 lea r8, [rbp + 12848]
.Lx154_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx154_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx154_41
 cmp esi, 1
 jne .Lx154_55
 mov r8, rax
 jmp .Lx154_40
.Lx154_55:
 cmp esi, 2
 jne .Lx154_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx154_41
 mov r8, rax
 jmp .Lx154_40
.Lx154_56:
 cmp eax, 13
 jne .Lx154_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx154_41
 cmp rax, r8
 je .Lx154_41
 mov r8, rax
 jmp .Lx154_40
.Lx154_41:
 lea r9, [rbp + 12864]
.Lx154_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx154_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx154_43
 cmp esi, 1
 jne .Lx154_57
 mov r9, rax
 jmp .Lx154_42
.Lx154_57:
 cmp esi, 2
 jne .Lx154_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx154_43
 mov r9, rax
 jmp .Lx154_42
.Lx154_58:
 cmp eax, 13
 jne .Lx154_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx154_43
 cmp rax, r9
 je .Lx154_43
 mov r9, rax
 jmp .Lx154_42
.Lx154_43:
 cmp r8, r9
 je .Lx154_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx154_44
 cmp eax, 99
 je .Lx154_44
 cmp eax, 13
 jne .Lx154_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx154_44
 jmp .Lx154_45
.Lx154_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx154_53
 cmp eax, 99
 je .Lx154_53
 cmp eax, 13
 jne .Lx154_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx154_53
 jmp .Lx154_46
.Lx154_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx154_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx154_53
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
 jmp .Lx154_51
.Lx154_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx154_47
 cmp eax, 99
 je .Lx154_47
 cmp eax, 13
 jne .Lx154_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx154_47
 jmp .Lx154_48
.Lx154_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx154_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx154_53
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
 jmp .Lx154_51
.Lx154_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx154_49
 cmp edx, 14
 je .Lx154_53
 jmp .Lx154_52
.Lx154_49:
 cmp edx, 14
 je .Lx154_52
 cmp ecx, 7
 je .Lx154_53
 cmp edx, 7
 je .Lx154_53
 cmp ecx, 6
 jne .Lx154_50
 cmp edx, 6
 jne .Lx154_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx154_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx154_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx154_51
 jmp .Lx154_52
.Lx154_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx154_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx154_53
.Lx154_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx154_54
.Lx154_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx154_54
.Lx154_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx154_54:
 mov qword ptr [rbp + 12832], rax
 mov qword ptr [rbp + 12840], rdx
 cmp eax, 99
 je xchain90_n14_α
 jmp xchain90_n57_α
 xchain90_n53_β:
 jmp xchain90_n14_α
# IR_LIT_STRING
 xchain90_n54_α:
 mov qword ptr [rbp + 12208], 1
 mov rax, qword ptr [rip + .Lx155_0]
 mov qword ptr [rbp + 12216], rax
 jmp xchain90_n58_α
.Lx155_0:
 .quad .Lx155_0_s
.Lx155_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n55_α:
 mov qword ptr [rbp + 11792], 1
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [rbp + 11800], rax
 jmp xchain90_n59_α
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "."
 xchain90_n56_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11312] -> [zr+11280]
 mov rax, qword ptr [rbp + 11312]
 mov qword ptr [rbp + 11280], rax
 mov rax, qword ptr [rbp + 11320]
 mov qword ptr [rbp + 11288], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 11280]
 mov rsi, qword ptr [rip + .Lx157_2]
 jmp .Lx157_3
.Lx157_2:
 .quad .Lx157_2_s
.Lx157_2_s:
 .string "e"
.Lx157_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 11264], rax
 mov qword ptr [rbp + 11272], rdx
 cmp eax, 99
 je xchain90_n61_α
 jmp xchain90_n60_α
 xchain90_n56_β:
 jmp xchain90_n61_α
# IR_SUSPEND yield+resume
 xchain90_n57_α:
 lea rax, [rip + xchain90_n57_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n57_β:
 jmp xchain90_n14_α
 xchain90_n58_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12352] -> [zr+12288]
 mov rax, qword ptr [rbp + 12352]
 mov qword ptr [rbp + 12288], rax
 mov rax, qword ptr [rbp + 12360]
 mov qword ptr [rbp + 12296], rax
# marshal arg1 = producer-box slot [zr+12240] -> [zr+12304]
 mov rax, qword ptr [rbp + 12240]
 mov qword ptr [rbp + 12304], rax
 mov rax, qword ptr [rbp + 12248]
 mov qword ptr [rbp + 12312], rax
# marshal arg2 = producer-box slot [zr+12208] -> [zr+12320]
 mov rax, qword ptr [rbp + 12208]
 mov qword ptr [rbp + 12320], rax
 mov rax, qword ptr [rbp + 12216]
 mov qword ptr [rbp + 12328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12288]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12272], rax
 mov qword ptr [rbp + 12280], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n62_α
 xchain90_n58_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n59_α:
 mov qword ptr [rbp + 11680], 1
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [rbp + 11688], rax
 jmp xchain90_n63_α
.Lx161_0:
 .quad .Lx161_0_s
.Lx161_0_s:
 .string "e"
# IR_VAR_REF
 xchain90_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 10768], rax
 mov qword ptr [rbp + 10776], rdx
 jmp xchain90_n64_α
 xchain90_n61_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+10688]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 10688], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 10696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 10688]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 10672], rax
 mov qword ptr [rbp + 10680], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n65_α
 xchain90_n61_β:
 jmp proc_connect$2F2_ω
 xchain90_n62_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12496] -> [zr+12432]
 mov rax, qword ptr [rbp + 12496]
 mov qword ptr [rbp + 12432], rax
 mov rax, qword ptr [rbp + 12504]
 mov qword ptr [rbp + 12440], rax
# marshal arg1 = producer-box slot [zr+12384] -> [zr+12448]
 mov rax, qword ptr [rbp + 12384]
 mov qword ptr [rbp + 12448], rax
 mov rax, qword ptr [rbp + 12392]
 mov qword ptr [rbp + 12456], rax
# marshal arg2 = producer-box slot [zr+12272] -> [zr+12464]
 mov rax, qword ptr [rbp + 12272]
 mov qword ptr [rbp + 12464], rax
 mov rax, qword ptr [rbp + 12280]
 mov qword ptr [rbp + 12472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12432]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12416], rax
 mov qword ptr [rbp + 12424], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n66_α
 xchain90_n62_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n63_α:
 mov qword ptr [rbp + 11648], 1
 mov rax, qword ptr [rip + .Lx166_0]
 mov qword ptr [rbp + 11656], rax
 jmp xchain90_n67_α
.Lx166_0:
 .quad .Lx166_0_s
.Lx166_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n64_α:
 mov qword ptr [rbp + 11232], 1
 mov rax, qword ptr [rip + .Lx167_0]
 mov qword ptr [rbp + 11240], rax
 jmp xchain90_n68_α
.Lx167_0:
 .quad .Lx167_0_s
.Lx167_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10608], rax
 mov qword ptr [rbp + 10616], rdx
 jmp xchain90_n69_α
 xchain90_n66_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12640] -> [zr+12576]
 mov rax, qword ptr [rbp + 12640]
 mov qword ptr [rbp + 12576], rax
 mov rax, qword ptr [rbp + 12648]
 mov qword ptr [rbp + 12584], rax
# marshal arg1 = producer-box slot [zr+12528] -> [zr+12592]
 mov rax, qword ptr [rbp + 12528]
 mov qword ptr [rbp + 12592], rax
 mov rax, qword ptr [rbp + 12536]
 mov qword ptr [rbp + 12600], rax
# marshal arg2 = producer-box slot [zr+12416] -> [zr+12608]
 mov rax, qword ptr [rbp + 12416]
 mov qword ptr [rbp + 12608], rax
 mov rax, qword ptr [rbp + 12424]
 mov qword ptr [rbp + 12616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12576]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12560], rax
 mov qword ptr [rbp + 12568], rdx
 cmp eax, 99
 je xchain90_n27_α
 jmp xchain90_n70_α
 xchain90_n66_β:
 jmp xchain90_n27_α
# IR_LIT_STRING
 xchain90_n67_α:
 mov qword ptr [rbp + 11536], 1
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [rbp + 11544], rax
 jmp xchain90_n71_α
.Lx171_0:
 .quad .Lx171_0_s
.Lx171_0_s:
 .string "q"
# IR_LIT_STRING
 xchain90_n68_α:
 mov qword ptr [rbp + 11120], 1
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [rbp + 11128], rax
 jmp xchain90_n72_α
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
 .string "d"
# IR_LIT_STRING
 xchain90_n69_α:
 mov qword ptr [rbp + 10640], 1
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [rbp + 10648], rax
 jmp xchain90_n73_α
.Lx173_0:
 .quad .Lx173_0_s
.Lx173_0_s:
 .string "f"
 xchain90_n70_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12176] -> [zr+12144]
 mov rax, qword ptr [rbp + 12176]
 mov qword ptr [rbp + 12144], rax
 mov rax, qword ptr [rbp + 12184]
 mov qword ptr [rbp + 12152], rax
# marshal arg1 = producer-box slot [zr+12560] -> [zr+12160]
 mov rax, qword ptr [rbp + 12560]
 mov qword ptr [rbp + 12160], rax
 mov rax, qword ptr [rbp + 12568]
 mov qword ptr [rbp + 12168], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 12144]
 lea r8, [rbp + 12144]
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
 lea r9, [rbp + 12160]
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
 mov qword ptr [rbp + 12128], rax
 mov qword ptr [rbp + 12136], rdx
 cmp eax, 99
 je xchain90_n27_α
 jmp xchain90_n74_α
 xchain90_n70_β:
 jmp xchain90_n27_α
# IR_LIT_STRING
 xchain90_n71_α:
 mov qword ptr [rbp + 11504], 1
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [rbp + 11512], rax
 jmp xchain90_n75_α
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n72_α:
 mov qword ptr [rbp + 11088], 1
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [rbp + 11096], rax
 jmp xchain90_n76_α
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "."
 xchain90_n73_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10608] -> [zr+10576]
 mov rax, qword ptr [rbp + 10608]
 mov qword ptr [rbp + 10576], rax
 mov rax, qword ptr [rbp + 10616]
 mov qword ptr [rbp + 10584], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 10576]
 mov rsi, qword ptr [rip + .Lx177_2]
 jmp .Lx177_3
.Lx177_2:
 .quad .Lx177_2_s
.Lx177_2_s:
 .string "f"
.Lx177_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 10560], rax
 mov qword ptr [rbp + 10568], rdx
 cmp eax, 99
 je xchain90_n78_α
 jmp xchain90_n77_α
 xchain90_n73_β:
 jmp xchain90_n78_α
# IR_SUSPEND yield+resume
 xchain90_n74_α:
 lea rax, [rip + xchain90_n74_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n74_β:
 jmp xchain90_n27_α
 xchain90_n75_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11648] -> [zr+11584]
 mov rax, qword ptr [rbp + 11648]
 mov qword ptr [rbp + 11584], rax
 mov rax, qword ptr [rbp + 11656]
 mov qword ptr [rbp + 11592], rax
# marshal arg1 = producer-box slot [zr+11536] -> [zr+11600]
 mov rax, qword ptr [rbp + 11536]
 mov qword ptr [rbp + 11600], rax
 mov rax, qword ptr [rbp + 11544]
 mov qword ptr [rbp + 11608], rax
# marshal arg2 = producer-box slot [zr+11504] -> [zr+11616]
 mov rax, qword ptr [rbp + 11504]
 mov qword ptr [rbp + 11616], rax
 mov rax, qword ptr [rbp + 11512]
 mov qword ptr [rbp + 11624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11584]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11568], rax
 mov qword ptr [rbp + 11576], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n79_α
 xchain90_n75_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n76_α:
 mov qword ptr [rbp + 10976], 1
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [rbp + 10984], rax
 jmp xchain90_n80_α
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "f"
# IR_VAR_REF
 xchain90_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 10064], rax
 mov qword ptr [rbp + 10072], rdx
 jmp xchain90_n81_α
 xchain90_n78_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+9984]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 9984], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 9992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 9984]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 9968], rax
 mov qword ptr [rbp + 9976], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n82_α
 xchain90_n78_β:
 jmp proc_connect$2F2_ω
 xchain90_n79_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11792] -> [zr+11728]
 mov rax, qword ptr [rbp + 11792]
 mov qword ptr [rbp + 11728], rax
 mov rax, qword ptr [rbp + 11800]
 mov qword ptr [rbp + 11736], rax
# marshal arg1 = producer-box slot [zr+11680] -> [zr+11744]
 mov rax, qword ptr [rbp + 11680]
 mov qword ptr [rbp + 11744], rax
 mov rax, qword ptr [rbp + 11688]
 mov qword ptr [rbp + 11752], rax
# marshal arg2 = producer-box slot [zr+11568] -> [zr+11760]
 mov rax, qword ptr [rbp + 11568]
 mov qword ptr [rbp + 11760], rax
 mov rax, qword ptr [rbp + 11576]
 mov qword ptr [rbp + 11768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11728]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11712], rax
 mov qword ptr [rbp + 11720], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n83_α
 xchain90_n79_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n80_α:
 mov qword ptr [rbp + 10944], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [rbp + 10952], rax
 jmp xchain90_n84_α
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n81_α:
 mov qword ptr [rbp + 10528], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [rbp + 10536], rax
 jmp xchain90_n85_α
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n82_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9904], rax
 mov qword ptr [rbp + 9912], rdx
 jmp xchain90_n86_α
 xchain90_n83_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11936] -> [zr+11872]
 mov rax, qword ptr [rbp + 11936]
 mov qword ptr [rbp + 11872], rax
 mov rax, qword ptr [rbp + 11944]
 mov qword ptr [rbp + 11880], rax
# marshal arg1 = producer-box slot [zr+11824] -> [zr+11888]
 mov rax, qword ptr [rbp + 11824]
 mov qword ptr [rbp + 11888], rax
 mov rax, qword ptr [rbp + 11832]
 mov qword ptr [rbp + 11896], rax
# marshal arg2 = producer-box slot [zr+11712] -> [zr+11904]
 mov rax, qword ptr [rbp + 11712]
 mov qword ptr [rbp + 11904], rax
 mov rax, qword ptr [rbp + 11720]
 mov qword ptr [rbp + 11912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11872]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11856], rax
 mov qword ptr [rbp + 11864], rdx
 cmp eax, 99
 je xchain90_n44_α
 jmp xchain90_n87_α
 xchain90_n83_β:
 jmp xchain90_n44_α
# IR_LIT_STRING
 xchain90_n84_α:
 mov qword ptr [rbp + 10832], 1
 mov rax, qword ptr [rip + .Lx191_0]
 mov qword ptr [rbp + 10840], rax
 jmp xchain90_n88_α
.Lx191_0:
 .quad .Lx191_0_s
.Lx191_0_s:
 .string "m"
# IR_LIT_STRING
 xchain90_n85_α:
 mov qword ptr [rbp + 10416], 1
 mov rax, qword ptr [rip + .Lx192_0]
 mov qword ptr [rbp + 10424], rax
 jmp xchain90_n89_α
.Lx192_0:
 .quad .Lx192_0_s
.Lx192_0_s:
 .string "e"
# IR_LIT_STRING
 xchain90_n86_α:
 mov qword ptr [rbp + 9936], 1
 mov rax, qword ptr [rip + .Lx193_0]
 mov qword ptr [rbp + 9944], rax
 jmp xchain90_n90_α
.Lx193_0:
 .quad .Lx193_0_s
.Lx193_0_s:
 .string "g"
 xchain90_n87_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11472] -> [zr+11440]
 mov rax, qword ptr [rbp + 11472]
 mov qword ptr [rbp + 11440], rax
 mov rax, qword ptr [rbp + 11480]
 mov qword ptr [rbp + 11448], rax
# marshal arg1 = producer-box slot [zr+11856] -> [zr+11456]
 mov rax, qword ptr [rbp + 11856]
 mov qword ptr [rbp + 11456], rax
 mov rax, qword ptr [rbp + 11864]
 mov qword ptr [rbp + 11464], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 11440]
 lea r8, [rbp + 11440]
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
 lea r9, [rbp + 11456]
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
 mov qword ptr [rbp + 11424], rax
 mov qword ptr [rbp + 11432], rdx
 cmp eax, 99
 je xchain90_n44_α
 jmp xchain90_n91_α
 xchain90_n87_β:
 jmp xchain90_n44_α
# IR_LIT_STRING
 xchain90_n88_α:
 mov qword ptr [rbp + 10800], 1
 mov rax, qword ptr [rip + .Lx195_0]
 mov qword ptr [rbp + 10808], rax
 jmp xchain90_n92_α
.Lx195_0:
 .quad .Lx195_0_s
.Lx195_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n89_α:
 mov qword ptr [rbp + 10384], 1
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [rbp + 10392], rax
 jmp xchain90_n93_α
.Lx196_0:
 .quad .Lx196_0_s
.Lx196_0_s:
 .string "."
 xchain90_n90_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9904] -> [zr+9872]
 mov rax, qword ptr [rbp + 9904]
 mov qword ptr [rbp + 9872], rax
 mov rax, qword ptr [rbp + 9912]
 mov qword ptr [rbp + 9880], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 9872]
 mov rsi, qword ptr [rip + .Lx197_2]
 jmp .Lx197_3
.Lx197_2:
 .quad .Lx197_2_s
.Lx197_2_s:
 .string "g"
.Lx197_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 9856], rax
 mov qword ptr [rbp + 9864], rdx
 cmp eax, 99
 je xchain90_n95_α
 jmp xchain90_n94_α
 xchain90_n90_β:
 jmp xchain90_n95_α
# IR_SUSPEND yield+resume
 xchain90_n91_α:
 lea rax, [rip + xchain90_n91_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n91_β:
 jmp xchain90_n44_α
 xchain90_n92_α:
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
# marshal arg2 = producer-box slot [zr+10800] -> [zr+10912]
 mov rax, qword ptr [rbp + 10800]
 mov qword ptr [rbp + 10912], rax
 mov rax, qword ptr [rbp + 10808]
 mov qword ptr [rbp + 10920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10880]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10864], rax
 mov qword ptr [rbp + 10872], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n96_α
 xchain90_n92_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n93_α:
 mov qword ptr [rbp + 10272], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 10280], rax
 jmp xchain90_n97_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "g"
# IR_VAR_REF
 xchain90_n94_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9360], rax
 mov qword ptr [rbp + 9368], rdx
 jmp xchain90_n98_α
 xchain90_n95_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+9280]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 9280], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 9288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 9280]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 9264], rax
 mov qword ptr [rbp + 9272], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n99_α
 xchain90_n95_β:
 jmp proc_connect$2F2_ω
 xchain90_n96_α:
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
 je proc_connect$2F2_ω
 jmp xchain90_n100_α
 xchain90_n96_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n97_α:
 mov qword ptr [rbp + 10240], 1
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 10248], rax
 jmp xchain90_n101_α
.Lx206_0:
 .quad .Lx206_0_s
.Lx206_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n98_α:
 mov qword ptr [rbp + 9824], 1
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 9832], rax
 jmp xchain90_n102_α
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n99_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 jmp xchain90_n103_α
 xchain90_n100_α:
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
 je xchain90_n61_α
 jmp xchain90_n104_α
 xchain90_n100_β:
 jmp xchain90_n61_α
# IR_LIT_STRING
 xchain90_n101_α:
 mov qword ptr [rbp + 10128], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 10136], rax
 jmp xchain90_n105_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "r"
# IR_LIT_STRING
 xchain90_n102_α:
 mov qword ptr [rbp + 9712], 1
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 9720], rax
 jmp xchain90_n106_α
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "f"
# IR_LIT_STRING
 xchain90_n103_α:
 mov qword ptr [rbp + 9232], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [rbp + 9240], rax
 jmp xchain90_n107_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "h"
 xchain90_n104_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10768] -> [zr+10736]
 mov rax, qword ptr [rbp + 10768]
 mov qword ptr [rbp + 10736], rax
 mov rax, qword ptr [rbp + 10776]
 mov qword ptr [rbp + 10744], rax
# marshal arg1 = producer-box slot [zr+11152] -> [zr+10752]
 mov rax, qword ptr [rbp + 11152]
 mov qword ptr [rbp + 10752], rax
 mov rax, qword ptr [rbp + 11160]
 mov qword ptr [rbp + 10760], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 10736]
 lea r8, [rbp + 10736]
.Lx214_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx214_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx214_41
 cmp esi, 1
 jne .Lx214_55
 mov r8, rax
 jmp .Lx214_40
.Lx214_55:
 cmp esi, 2
 jne .Lx214_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx214_41
 mov r8, rax
 jmp .Lx214_40
.Lx214_56:
 cmp eax, 13
 jne .Lx214_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx214_41
 cmp rax, r8
 je .Lx214_41
 mov r8, rax
 jmp .Lx214_40
.Lx214_41:
 lea r9, [rbp + 10752]
.Lx214_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx214_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx214_43
 cmp esi, 1
 jne .Lx214_57
 mov r9, rax
 jmp .Lx214_42
.Lx214_57:
 cmp esi, 2
 jne .Lx214_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx214_43
 mov r9, rax
 jmp .Lx214_42
.Lx214_58:
 cmp eax, 13
 jne .Lx214_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx214_43
 cmp rax, r9
 je .Lx214_43
 mov r9, rax
 jmp .Lx214_42
.Lx214_43:
 cmp r8, r9
 je .Lx214_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx214_44
 cmp eax, 99
 je .Lx214_44
 cmp eax, 13
 jne .Lx214_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx214_44
 jmp .Lx214_45
.Lx214_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx214_53
 cmp eax, 99
 je .Lx214_53
 cmp eax, 13
 jne .Lx214_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx214_53
 jmp .Lx214_46
.Lx214_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx214_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx214_53
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
 jmp .Lx214_51
.Lx214_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx214_47
 cmp eax, 99
 je .Lx214_47
 cmp eax, 13
 jne .Lx214_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx214_47
 jmp .Lx214_48
.Lx214_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx214_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx214_53
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
 jmp .Lx214_51
.Lx214_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx214_49
 cmp edx, 14
 je .Lx214_53
 jmp .Lx214_52
.Lx214_49:
 cmp edx, 14
 je .Lx214_52
 cmp ecx, 7
 je .Lx214_53
 cmp edx, 7
 je .Lx214_53
 cmp ecx, 6
 jne .Lx214_50
 cmp edx, 6
 jne .Lx214_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx214_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx214_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx214_51
 jmp .Lx214_52
.Lx214_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx214_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx214_53
.Lx214_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx214_54
.Lx214_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx214_54
.Lx214_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx214_54:
 mov qword ptr [rbp + 10720], rax
 mov qword ptr [rbp + 10728], rdx
 cmp eax, 99
 je xchain90_n61_α
 jmp xchain90_n108_α
 xchain90_n104_β:
 jmp xchain90_n61_α
# IR_LIT_STRING
 xchain90_n105_α:
 mov qword ptr [rbp + 10096], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [rbp + 10104], rax
 jmp xchain90_n109_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n106_α:
 mov qword ptr [rbp + 9680], 1
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 9688], rax
 jmp xchain90_n110_α
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string "."
 xchain90_n107_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9200] -> [zr+9168]
 mov rax, qword ptr [rbp + 9200]
 mov qword ptr [rbp + 9168], rax
 mov rax, qword ptr [rbp + 9208]
 mov qword ptr [rbp + 9176], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 9168]
 mov rsi, qword ptr [rip + .Lx217_2]
 jmp .Lx217_3
.Lx217_2:
 .quad .Lx217_2_s
.Lx217_2_s:
 .string "h"
.Lx217_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 9152], rax
 mov qword ptr [rbp + 9160], rdx
 cmp eax, 99
 je xchain90_n112_α
 jmp xchain90_n111_α
 xchain90_n107_β:
 jmp xchain90_n112_α
# IR_SUSPEND yield+resume
 xchain90_n108_α:
 lea rax, [rip + xchain90_n108_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n108_β:
 jmp xchain90_n61_α
 xchain90_n109_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10240] -> [zr+10176]
 mov rax, qword ptr [rbp + 10240]
 mov qword ptr [rbp + 10176], rax
 mov rax, qword ptr [rbp + 10248]
 mov qword ptr [rbp + 10184], rax
# marshal arg1 = producer-box slot [zr+10128] -> [zr+10192]
 mov rax, qword ptr [rbp + 10128]
 mov qword ptr [rbp + 10192], rax
 mov rax, qword ptr [rbp + 10136]
 mov qword ptr [rbp + 10200], rax
# marshal arg2 = producer-box slot [zr+10096] -> [zr+10208]
 mov rax, qword ptr [rbp + 10096]
 mov qword ptr [rbp + 10208], rax
 mov rax, qword ptr [rbp + 10104]
 mov qword ptr [rbp + 10216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10176]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10160], rax
 mov qword ptr [rbp + 10168], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n113_α
 xchain90_n109_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n110_α:
 mov qword ptr [rbp + 9568], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 9576], rax
 jmp xchain90_n114_α
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "h"
# IR_VAR_REF
 xchain90_n111_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8656], rax
 mov qword ptr [rbp + 8664], rdx
 jmp xchain90_n115_α
 xchain90_n112_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+8576]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 8576], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 8576]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 8560], rax
 mov qword ptr [rbp + 8568], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n116_α
 xchain90_n112_β:
 jmp proc_connect$2F2_ω
 xchain90_n113_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10384] -> [zr+10320]
 mov rax, qword ptr [rbp + 10384]
 mov qword ptr [rbp + 10320], rax
 mov rax, qword ptr [rbp + 10392]
 mov qword ptr [rbp + 10328], rax
# marshal arg1 = producer-box slot [zr+10272] -> [zr+10336]
 mov rax, qword ptr [rbp + 10272]
 mov qword ptr [rbp + 10336], rax
 mov rax, qword ptr [rbp + 10280]
 mov qword ptr [rbp + 10344], rax
# marshal arg2 = producer-box slot [zr+10160] -> [zr+10352]
 mov rax, qword ptr [rbp + 10160]
 mov qword ptr [rbp + 10352], rax
 mov rax, qword ptr [rbp + 10168]
 mov qword ptr [rbp + 10360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10320]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10304], rax
 mov qword ptr [rbp + 10312], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n117_α
 xchain90_n113_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n114_α:
 mov qword ptr [rbp + 9536], 1
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [rbp + 9544], rax
 jmp xchain90_n118_α
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n115_α:
 mov qword ptr [rbp + 9120], 1
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 9128], rax
 jmp xchain90_n119_α
.Lx227_0:
 .quad .Lx227_0_s
.Lx227_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n116_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8496], rax
 mov qword ptr [rbp + 8504], rdx
 jmp xchain90_n120_α
 xchain90_n117_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10528] -> [zr+10464]
 mov rax, qword ptr [rbp + 10528]
 mov qword ptr [rbp + 10464], rax
 mov rax, qword ptr [rbp + 10536]
 mov qword ptr [rbp + 10472], rax
# marshal arg1 = producer-box slot [zr+10416] -> [zr+10480]
 mov rax, qword ptr [rbp + 10416]
 mov qword ptr [rbp + 10480], rax
 mov rax, qword ptr [rbp + 10424]
 mov qword ptr [rbp + 10488], rax
# marshal arg2 = producer-box slot [zr+10304] -> [zr+10496]
 mov rax, qword ptr [rbp + 10304]
 mov qword ptr [rbp + 10496], rax
 mov rax, qword ptr [rbp + 10312]
 mov qword ptr [rbp + 10504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10464]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10448], rax
 mov qword ptr [rbp + 10456], rdx
 cmp eax, 99
 je xchain90_n78_α
 jmp xchain90_n121_α
 xchain90_n117_β:
 jmp xchain90_n78_α
# IR_LIT_STRING
 xchain90_n118_α:
 mov qword ptr [rbp + 9424], 1
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [rbp + 9432], rax
 jmp xchain90_n122_α
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "n"
# IR_LIT_STRING
 xchain90_n119_α:
 mov qword ptr [rbp + 9008], 1
 mov rax, qword ptr [rip + .Lx232_0]
 mov qword ptr [rbp + 9016], rax
 jmp xchain90_n123_α
.Lx232_0:
 .quad .Lx232_0_s
.Lx232_0_s:
 .string "i"
# IR_LIT_STRING
 xchain90_n120_α:
 mov qword ptr [rbp + 8528], 1
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [rbp + 8536], rax
 jmp xchain90_n124_α
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "i"
 xchain90_n121_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10064] -> [zr+10032]
 mov rax, qword ptr [rbp + 10064]
 mov qword ptr [rbp + 10032], rax
 mov rax, qword ptr [rbp + 10072]
 mov qword ptr [rbp + 10040], rax
# marshal arg1 = producer-box slot [zr+10448] -> [zr+10048]
 mov rax, qword ptr [rbp + 10448]
 mov qword ptr [rbp + 10048], rax
 mov rax, qword ptr [rbp + 10456]
 mov qword ptr [rbp + 10056], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 10032]
 lea r8, [rbp + 10032]
.Lx234_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx234_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx234_41
 cmp esi, 1
 jne .Lx234_55
 mov r8, rax
 jmp .Lx234_40
.Lx234_55:
 cmp esi, 2
 jne .Lx234_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx234_41
 mov r8, rax
 jmp .Lx234_40
.Lx234_56:
 cmp eax, 13
 jne .Lx234_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx234_41
 cmp rax, r8
 je .Lx234_41
 mov r8, rax
 jmp .Lx234_40
.Lx234_41:
 lea r9, [rbp + 10048]
.Lx234_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx234_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx234_43
 cmp esi, 1
 jne .Lx234_57
 mov r9, rax
 jmp .Lx234_42
.Lx234_57:
 cmp esi, 2
 jne .Lx234_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx234_43
 mov r9, rax
 jmp .Lx234_42
.Lx234_58:
 cmp eax, 13
 jne .Lx234_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx234_43
 cmp rax, r9
 je .Lx234_43
 mov r9, rax
 jmp .Lx234_42
.Lx234_43:
 cmp r8, r9
 je .Lx234_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx234_44
 cmp eax, 99
 je .Lx234_44
 cmp eax, 13
 jne .Lx234_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx234_44
 jmp .Lx234_45
.Lx234_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx234_53
 cmp eax, 99
 je .Lx234_53
 cmp eax, 13
 jne .Lx234_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx234_53
 jmp .Lx234_46
.Lx234_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx234_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx234_53
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
 jmp .Lx234_51
.Lx234_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx234_47
 cmp eax, 99
 je .Lx234_47
 cmp eax, 13
 jne .Lx234_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx234_47
 jmp .Lx234_48
.Lx234_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx234_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx234_53
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
 jmp .Lx234_51
.Lx234_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx234_49
 cmp edx, 14
 je .Lx234_53
 jmp .Lx234_52
.Lx234_49:
 cmp edx, 14
 je .Lx234_52
 cmp ecx, 7
 je .Lx234_53
 cmp edx, 7
 je .Lx234_53
 cmp ecx, 6
 jne .Lx234_50
 cmp edx, 6
 jne .Lx234_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx234_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx234_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx234_51
 jmp .Lx234_52
.Lx234_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx234_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx234_53
.Lx234_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx234_54
.Lx234_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx234_54
.Lx234_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx234_54:
 mov qword ptr [rbp + 10016], rax
 mov qword ptr [rbp + 10024], rdx
 cmp eax, 99
 je xchain90_n78_α
 jmp xchain90_n125_α
 xchain90_n121_β:
 jmp xchain90_n78_α
# IR_LIT_STRING
 xchain90_n122_α:
 mov qword ptr [rbp + 9392], 1
 mov rax, qword ptr [rip + .Lx235_0]
 mov qword ptr [rbp + 9400], rax
 jmp xchain90_n126_α
.Lx235_0:
 .quad .Lx235_0_s
.Lx235_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n123_α:
 mov qword ptr [rbp + 8976], 1
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 8984], rax
 jmp xchain90_n127_α
.Lx236_0:
 .quad .Lx236_0_s
.Lx236_0_s:
 .string "."
 xchain90_n124_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8496] -> [zr+8464]
 mov rax, qword ptr [rbp + 8496]
 mov qword ptr [rbp + 8464], rax
 mov rax, qword ptr [rbp + 8504]
 mov qword ptr [rbp + 8472], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 8464]
 mov rsi, qword ptr [rip + .Lx237_2]
 jmp .Lx237_3
.Lx237_2:
 .quad .Lx237_2_s
.Lx237_2_s:
 .string "i"
.Lx237_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 8448], rax
 mov qword ptr [rbp + 8456], rdx
 cmp eax, 99
 je xchain90_n129_α
 jmp xchain90_n128_α
 xchain90_n124_β:
 jmp xchain90_n129_α
# IR_SUSPEND yield+resume
 xchain90_n125_α:
 lea rax, [rip + xchain90_n125_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n125_β:
 jmp xchain90_n78_α
 xchain90_n126_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9536] -> [zr+9472]
 mov rax, qword ptr [rbp + 9536]
 mov qword ptr [rbp + 9472], rax
 mov rax, qword ptr [rbp + 9544]
 mov qword ptr [rbp + 9480], rax
# marshal arg1 = producer-box slot [zr+9424] -> [zr+9488]
 mov rax, qword ptr [rbp + 9424]
 mov qword ptr [rbp + 9488], rax
 mov rax, qword ptr [rbp + 9432]
 mov qword ptr [rbp + 9496], rax
# marshal arg2 = producer-box slot [zr+9392] -> [zr+9504]
 mov rax, qword ptr [rbp + 9392]
 mov qword ptr [rbp + 9504], rax
 mov rax, qword ptr [rbp + 9400]
 mov qword ptr [rbp + 9512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9472]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9456], rax
 mov qword ptr [rbp + 9464], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n130_α
 xchain90_n126_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n127_α:
 mov qword ptr [rbp + 8864], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [rbp + 8872], rax
 jmp xchain90_n131_α
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "g"
# IR_VAR_REF
 xchain90_n128_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 7952], rax
 mov qword ptr [rbp + 7960], rdx
 jmp xchain90_n132_α
 xchain90_n129_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+7872]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 7872], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 7880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 7872]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 7856], rax
 mov qword ptr [rbp + 7864], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n133_α
 xchain90_n129_β:
 jmp proc_connect$2F2_ω
 xchain90_n130_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9680] -> [zr+9616]
 mov rax, qword ptr [rbp + 9680]
 mov qword ptr [rbp + 9616], rax
 mov rax, qword ptr [rbp + 9688]
 mov qword ptr [rbp + 9624], rax
# marshal arg1 = producer-box slot [zr+9568] -> [zr+9632]
 mov rax, qword ptr [rbp + 9568]
 mov qword ptr [rbp + 9632], rax
 mov rax, qword ptr [rbp + 9576]
 mov qword ptr [rbp + 9640], rax
# marshal arg2 = producer-box slot [zr+9456] -> [zr+9648]
 mov rax, qword ptr [rbp + 9456]
 mov qword ptr [rbp + 9648], rax
 mov rax, qword ptr [rbp + 9464]
 mov qword ptr [rbp + 9656], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9616]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9600], rax
 mov qword ptr [rbp + 9608], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n134_α
 xchain90_n130_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n131_α:
 mov qword ptr [rbp + 8832], 1
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [rbp + 8840], rax
 jmp xchain90_n135_α
.Lx246_0:
 .quad .Lx246_0_s
.Lx246_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n132_α:
 mov qword ptr [rbp + 8416], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [rbp + 8424], rax
 jmp xchain90_n136_α
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n133_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 7792], rax
 mov qword ptr [rbp + 7800], rdx
 jmp xchain90_n137_α
 xchain90_n134_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9824] -> [zr+9760]
 mov rax, qword ptr [rbp + 9824]
 mov qword ptr [rbp + 9760], rax
 mov rax, qword ptr [rbp + 9832]
 mov qword ptr [rbp + 9768], rax
# marshal arg1 = producer-box slot [zr+9712] -> [zr+9776]
 mov rax, qword ptr [rbp + 9712]
 mov qword ptr [rbp + 9776], rax
 mov rax, qword ptr [rbp + 9720]
 mov qword ptr [rbp + 9784], rax
# marshal arg2 = producer-box slot [zr+9600] -> [zr+9792]
 mov rax, qword ptr [rbp + 9600]
 mov qword ptr [rbp + 9792], rax
 mov rax, qword ptr [rbp + 9608]
 mov qword ptr [rbp + 9800], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9760]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9744], rax
 mov qword ptr [rbp + 9752], rdx
 cmp eax, 99
 je xchain90_n95_α
 jmp xchain90_n138_α
 xchain90_n134_β:
 jmp xchain90_n95_α
# IR_LIT_STRING
 xchain90_n135_α:
 mov qword ptr [rbp + 8720], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 8728], rax
 jmp xchain90_n139_α
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "s"
# IR_LIT_STRING
 xchain90_n136_α:
 mov qword ptr [rbp + 8304], 1
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 8312], rax
 jmp xchain90_n140_α
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "j"
# IR_LIT_STRING
 xchain90_n137_α:
 mov qword ptr [rbp + 7824], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 7832], rax
 jmp xchain90_n141_α
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "j"
 xchain90_n138_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9360] -> [zr+9328]
 mov rax, qword ptr [rbp + 9360]
 mov qword ptr [rbp + 9328], rax
 mov rax, qword ptr [rbp + 9368]
 mov qword ptr [rbp + 9336], rax
# marshal arg1 = producer-box slot [zr+9744] -> [zr+9344]
 mov rax, qword ptr [rbp + 9744]
 mov qword ptr [rbp + 9344], rax
 mov rax, qword ptr [rbp + 9752]
 mov qword ptr [rbp + 9352], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 9328]
 lea r8, [rbp + 9328]
.Lx254_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx254_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx254_41
 cmp esi, 1
 jne .Lx254_55
 mov r8, rax
 jmp .Lx254_40
.Lx254_55:
 cmp esi, 2
 jne .Lx254_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx254_41
 mov r8, rax
 jmp .Lx254_40
.Lx254_56:
 cmp eax, 13
 jne .Lx254_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx254_41
 cmp rax, r8
 je .Lx254_41
 mov r8, rax
 jmp .Lx254_40
.Lx254_41:
 lea r9, [rbp + 9344]
.Lx254_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx254_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx254_43
 cmp esi, 1
 jne .Lx254_57
 mov r9, rax
 jmp .Lx254_42
.Lx254_57:
 cmp esi, 2
 jne .Lx254_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx254_43
 mov r9, rax
 jmp .Lx254_42
.Lx254_58:
 cmp eax, 13
 jne .Lx254_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx254_43
 cmp rax, r9
 je .Lx254_43
 mov r9, rax
 jmp .Lx254_42
.Lx254_43:
 cmp r8, r9
 je .Lx254_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx254_44
 cmp eax, 99
 je .Lx254_44
 cmp eax, 13
 jne .Lx254_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx254_44
 jmp .Lx254_45
.Lx254_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx254_53
 cmp eax, 99
 je .Lx254_53
 cmp eax, 13
 jne .Lx254_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx254_53
 jmp .Lx254_46
.Lx254_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx254_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx254_53
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
 jmp .Lx254_51
.Lx254_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx254_47
 cmp eax, 99
 je .Lx254_47
 cmp eax, 13
 jne .Lx254_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx254_47
 jmp .Lx254_48
.Lx254_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx254_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx254_53
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
 jmp .Lx254_51
.Lx254_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx254_49
 cmp edx, 14
 je .Lx254_53
 jmp .Lx254_52
.Lx254_49:
 cmp edx, 14
 je .Lx254_52
 cmp ecx, 7
 je .Lx254_53
 cmp edx, 7
 je .Lx254_53
 cmp ecx, 6
 jne .Lx254_50
 cmp edx, 6
 jne .Lx254_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx254_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx254_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx254_51
 jmp .Lx254_52
.Lx254_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx254_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx254_53
.Lx254_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx254_54
.Lx254_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx254_54
.Lx254_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx254_54:
 mov qword ptr [rbp + 9312], rax
 mov qword ptr [rbp + 9320], rdx
 cmp eax, 99
 je xchain90_n95_α
 jmp xchain90_n142_α
 xchain90_n138_β:
 jmp xchain90_n95_α
# IR_LIT_STRING
 xchain90_n139_α:
 mov qword ptr [rbp + 8688], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 8696], rax
 jmp xchain90_n143_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n140_α:
 mov qword ptr [rbp + 8272], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 8280], rax
 jmp xchain90_n144_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "."
 xchain90_n141_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7792] -> [zr+7760]
 mov rax, qword ptr [rbp + 7792]
 mov qword ptr [rbp + 7760], rax
 mov rax, qword ptr [rbp + 7800]
 mov qword ptr [rbp + 7768], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 7760]
 mov rsi, qword ptr [rip + .Lx257_2]
 jmp .Lx257_3
.Lx257_2:
 .quad .Lx257_2_s
.Lx257_2_s:
 .string "j"
.Lx257_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 7744], rax
 mov qword ptr [rbp + 7752], rdx
 cmp eax, 99
 je xchain90_n146_α
 jmp xchain90_n145_α
 xchain90_n141_β:
 jmp xchain90_n146_α
# IR_SUSPEND yield+resume
 xchain90_n142_α:
 lea rax, [rip + xchain90_n142_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n142_β:
 jmp xchain90_n95_α
 xchain90_n143_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8832] -> [zr+8768]
 mov rax, qword ptr [rbp + 8832]
 mov qword ptr [rbp + 8768], rax
 mov rax, qword ptr [rbp + 8840]
 mov qword ptr [rbp + 8776], rax
# marshal arg1 = producer-box slot [zr+8720] -> [zr+8784]
 mov rax, qword ptr [rbp + 8720]
 mov qword ptr [rbp + 8784], rax
 mov rax, qword ptr [rbp + 8728]
 mov qword ptr [rbp + 8792], rax
# marshal arg2 = producer-box slot [zr+8688] -> [zr+8800]
 mov rax, qword ptr [rbp + 8688]
 mov qword ptr [rbp + 8800], rax
 mov rax, qword ptr [rbp + 8696]
 mov qword ptr [rbp + 8808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8768]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8752], rax
 mov qword ptr [rbp + 8760], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n147_α
 xchain90_n143_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n144_α:
 mov qword ptr [rbp + 8160], 1
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [rbp + 8168], rax
 jmp xchain90_n148_α
.Lx261_0:
 .quad .Lx261_0_s
.Lx261_0_s:
 .string "h"
# IR_VAR_REF
 xchain90_n145_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 7248], rax
 mov qword ptr [rbp + 7256], rdx
 jmp xchain90_n149_α
 xchain90_n146_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+7168]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 7168], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 7176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 7168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n150_α
 xchain90_n146_β:
 jmp proc_connect$2F2_ω
 xchain90_n147_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8976] -> [zr+8912]
 mov rax, qword ptr [rbp + 8976]
 mov qword ptr [rbp + 8912], rax
 mov rax, qword ptr [rbp + 8984]
 mov qword ptr [rbp + 8920], rax
# marshal arg1 = producer-box slot [zr+8864] -> [zr+8928]
 mov rax, qword ptr [rbp + 8864]
 mov qword ptr [rbp + 8928], rax
 mov rax, qword ptr [rbp + 8872]
 mov qword ptr [rbp + 8936], rax
# marshal arg2 = producer-box slot [zr+8752] -> [zr+8944]
 mov rax, qword ptr [rbp + 8752]
 mov qword ptr [rbp + 8944], rax
 mov rax, qword ptr [rbp + 8760]
 mov qword ptr [rbp + 8952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8912]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8896], rax
 mov qword ptr [rbp + 8904], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n151_α
 xchain90_n147_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n148_α:
 mov qword ptr [rbp + 8128], 1
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [rbp + 8136], rax
 jmp xchain90_n152_α
.Lx266_0:
 .quad .Lx266_0_s
.Lx266_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n149_α:
 mov qword ptr [rbp + 7712], 1
 mov rax, qword ptr [rip + .Lx267_0]
 mov qword ptr [rbp + 7720], rax
 jmp xchain90_n153_α
.Lx267_0:
 .quad .Lx267_0_s
.Lx267_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n150_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 7088], rax
 mov qword ptr [rbp + 7096], rdx
 jmp xchain90_n154_α
 xchain90_n151_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9120] -> [zr+9056]
 mov rax, qword ptr [rbp + 9120]
 mov qword ptr [rbp + 9056], rax
 mov rax, qword ptr [rbp + 9128]
 mov qword ptr [rbp + 9064], rax
# marshal arg1 = producer-box slot [zr+9008] -> [zr+9072]
 mov rax, qword ptr [rbp + 9008]
 mov qword ptr [rbp + 9072], rax
 mov rax, qword ptr [rbp + 9016]
 mov qword ptr [rbp + 9080], rax
# marshal arg2 = producer-box slot [zr+8896] -> [zr+9088]
 mov rax, qword ptr [rbp + 8896]
 mov qword ptr [rbp + 9088], rax
 mov rax, qword ptr [rbp + 8904]
 mov qword ptr [rbp + 9096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9056]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9040], rax
 mov qword ptr [rbp + 9048], rdx
 cmp eax, 99
 je xchain90_n112_α
 jmp xchain90_n155_α
 xchain90_n151_β:
 jmp xchain90_n112_α
# IR_LIT_STRING
 xchain90_n152_α:
 mov qword ptr [rbp + 8016], 1
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [rbp + 8024], rax
 jmp xchain90_n156_α
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "o"
# IR_LIT_STRING
 xchain90_n153_α:
 mov qword ptr [rbp + 7600], 1
 mov rax, qword ptr [rip + .Lx272_0]
 mov qword ptr [rbp + 7608], rax
 jmp xchain90_n157_α
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
 .string "a"
# IR_LIT_STRING
 xchain90_n154_α:
 mov qword ptr [rbp + 7120], 1
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [rbp + 7128], rax
 jmp xchain90_n158_α
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "k"
 xchain90_n155_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8656] -> [zr+8624]
 mov rax, qword ptr [rbp + 8656]
 mov qword ptr [rbp + 8624], rax
 mov rax, qword ptr [rbp + 8664]
 mov qword ptr [rbp + 8632], rax
# marshal arg1 = producer-box slot [zr+9040] -> [zr+8640]
 mov rax, qword ptr [rbp + 9040]
 mov qword ptr [rbp + 8640], rax
 mov rax, qword ptr [rbp + 9048]
 mov qword ptr [rbp + 8648], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 8624]
 lea r8, [rbp + 8624]
.Lx274_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx274_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx274_41
 cmp esi, 1
 jne .Lx274_55
 mov r8, rax
 jmp .Lx274_40
.Lx274_55:
 cmp esi, 2
 jne .Lx274_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx274_41
 mov r8, rax
 jmp .Lx274_40
.Lx274_56:
 cmp eax, 13
 jne .Lx274_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx274_41
 cmp rax, r8
 je .Lx274_41
 mov r8, rax
 jmp .Lx274_40
.Lx274_41:
 lea r9, [rbp + 8640]
.Lx274_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx274_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx274_43
 cmp esi, 1
 jne .Lx274_57
 mov r9, rax
 jmp .Lx274_42
.Lx274_57:
 cmp esi, 2
 jne .Lx274_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx274_43
 mov r9, rax
 jmp .Lx274_42
.Lx274_58:
 cmp eax, 13
 jne .Lx274_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx274_43
 cmp rax, r9
 je .Lx274_43
 mov r9, rax
 jmp .Lx274_42
.Lx274_43:
 cmp r8, r9
 je .Lx274_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx274_44
 cmp eax, 99
 je .Lx274_44
 cmp eax, 13
 jne .Lx274_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx274_44
 jmp .Lx274_45
.Lx274_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx274_53
 cmp eax, 99
 je .Lx274_53
 cmp eax, 13
 jne .Lx274_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx274_53
 jmp .Lx274_46
.Lx274_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx274_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx274_53
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
 jmp .Lx274_51
.Lx274_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx274_47
 cmp eax, 99
 je .Lx274_47
 cmp eax, 13
 jne .Lx274_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx274_47
 jmp .Lx274_48
.Lx274_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx274_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx274_53
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
 jmp .Lx274_51
.Lx274_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx274_49
 cmp edx, 14
 je .Lx274_53
 jmp .Lx274_52
.Lx274_49:
 cmp edx, 14
 je .Lx274_52
 cmp ecx, 7
 je .Lx274_53
 cmp edx, 7
 je .Lx274_53
 cmp ecx, 6
 jne .Lx274_50
 cmp edx, 6
 jne .Lx274_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx274_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx274_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx274_51
 jmp .Lx274_52
.Lx274_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx274_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx274_53
.Lx274_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx274_54
.Lx274_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx274_54
.Lx274_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx274_54:
 mov qword ptr [rbp + 8608], rax
 mov qword ptr [rbp + 8616], rdx
 cmp eax, 99
 je xchain90_n112_α
 jmp xchain90_n159_α
 xchain90_n155_β:
 jmp xchain90_n112_α
# IR_LIT_STRING
 xchain90_n156_α:
 mov qword ptr [rbp + 7984], 1
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [rbp + 7992], rax
 jmp xchain90_n160_α
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n157_α:
 mov qword ptr [rbp + 7568], 1
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [rbp + 7576], rax
 jmp xchain90_n161_α
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string "."
 xchain90_n158_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7088] -> [zr+7056]
 mov rax, qword ptr [rbp + 7088]
 mov qword ptr [rbp + 7056], rax
 mov rax, qword ptr [rbp + 7096]
 mov qword ptr [rbp + 7064], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 7056]
 mov rsi, qword ptr [rip + .Lx277_2]
 jmp .Lx277_3
.Lx277_2:
 .quad .Lx277_2_s
.Lx277_2_s:
 .string "k"
.Lx277_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 7040], rax
 mov qword ptr [rbp + 7048], rdx
 cmp eax, 99
 je xchain90_n163_α
 jmp xchain90_n162_α
 xchain90_n158_β:
 jmp xchain90_n163_α
# IR_SUSPEND yield+resume
 xchain90_n159_α:
 lea rax, [rip + xchain90_n159_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n159_β:
 jmp xchain90_n112_α
 xchain90_n160_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8128] -> [zr+8064]
 mov rax, qword ptr [rbp + 8128]
 mov qword ptr [rbp + 8064], rax
 mov rax, qword ptr [rbp + 8136]
 mov qword ptr [rbp + 8072], rax
# marshal arg1 = producer-box slot [zr+8016] -> [zr+8080]
 mov rax, qword ptr [rbp + 8016]
 mov qword ptr [rbp + 8080], rax
 mov rax, qword ptr [rbp + 8024]
 mov qword ptr [rbp + 8088], rax
# marshal arg2 = producer-box slot [zr+7984] -> [zr+8096]
 mov rax, qword ptr [rbp + 7984]
 mov qword ptr [rbp + 8096], rax
 mov rax, qword ptr [rbp + 7992]
 mov qword ptr [rbp + 8104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8064]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8048], rax
 mov qword ptr [rbp + 8056], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n164_α
 xchain90_n160_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n161_α:
 mov qword ptr [rbp + 7456], 1
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [rbp + 7464], rax
 jmp xchain90_n165_α
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "i"
# IR_VAR_REF
 xchain90_n162_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6544], rax
 mov qword ptr [rbp + 6552], rdx
 jmp xchain90_n166_α
 xchain90_n163_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6464]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6464], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6464]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6448], rax
 mov qword ptr [rbp + 6456], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n167_α
 xchain90_n163_β:
 jmp proc_connect$2F2_ω
 xchain90_n164_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8272] -> [zr+8208]
 mov rax, qword ptr [rbp + 8272]
 mov qword ptr [rbp + 8208], rax
 mov rax, qword ptr [rbp + 8280]
 mov qword ptr [rbp + 8216], rax
# marshal arg1 = producer-box slot [zr+8160] -> [zr+8224]
 mov rax, qword ptr [rbp + 8160]
 mov qword ptr [rbp + 8224], rax
 mov rax, qword ptr [rbp + 8168]
 mov qword ptr [rbp + 8232], rax
# marshal arg2 = producer-box slot [zr+8048] -> [zr+8240]
 mov rax, qword ptr [rbp + 8048]
 mov qword ptr [rbp + 8240], rax
 mov rax, qword ptr [rbp + 8056]
 mov qword ptr [rbp + 8248], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8208]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8192], rax
 mov qword ptr [rbp + 8200], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n168_α
 xchain90_n164_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n165_α:
 mov qword ptr [rbp + 7424], 1
 mov rax, qword ptr [rip + .Lx286_0]
 mov qword ptr [rbp + 7432], rax
 jmp xchain90_n169_α
.Lx286_0:
 .quad .Lx286_0_s
.Lx286_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n166_α:
 mov qword ptr [rbp + 7008], 1
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [rbp + 7016], rax
 jmp xchain90_n170_α
.Lx287_0:
 .quad .Lx287_0_s
.Lx287_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n167_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6384], rax
 mov qword ptr [rbp + 6392], rdx
 jmp xchain90_n171_α
 xchain90_n168_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8416] -> [zr+8352]
 mov rax, qword ptr [rbp + 8416]
 mov qword ptr [rbp + 8352], rax
 mov rax, qword ptr [rbp + 8424]
 mov qword ptr [rbp + 8360], rax
# marshal arg1 = producer-box slot [zr+8304] -> [zr+8368]
 mov rax, qword ptr [rbp + 8304]
 mov qword ptr [rbp + 8368], rax
 mov rax, qword ptr [rbp + 8312]
 mov qword ptr [rbp + 8376], rax
# marshal arg2 = producer-box slot [zr+8192] -> [zr+8384]
 mov rax, qword ptr [rbp + 8192]
 mov qword ptr [rbp + 8384], rax
 mov rax, qword ptr [rbp + 8200]
 mov qword ptr [rbp + 8392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8352]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8336], rax
 mov qword ptr [rbp + 8344], rdx
 cmp eax, 99
 je xchain90_n129_α
 jmp xchain90_n172_α
 xchain90_n168_β:
 jmp xchain90_n129_α
# IR_LIT_STRING
 xchain90_n169_α:
 mov qword ptr [rbp + 7312], 1
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [rbp + 7320], rax
 jmp xchain90_n173_α
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "t"
# IR_LIT_STRING
 xchain90_n170_α:
 mov qword ptr [rbp + 6896], 1
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [rbp + 6904], rax
 jmp xchain90_n174_α
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
 .string "o"
# IR_LIT_STRING
 xchain90_n171_α:
 mov qword ptr [rbp + 6416], 1
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [rbp + 6424], rax
 jmp xchain90_n175_α
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "l"
 xchain90_n172_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7952] -> [zr+7920]
 mov rax, qword ptr [rbp + 7952]
 mov qword ptr [rbp + 7920], rax
 mov rax, qword ptr [rbp + 7960]
 mov qword ptr [rbp + 7928], rax
# marshal arg1 = producer-box slot [zr+8336] -> [zr+7936]
 mov rax, qword ptr [rbp + 8336]
 mov qword ptr [rbp + 7936], rax
 mov rax, qword ptr [rbp + 8344]
 mov qword ptr [rbp + 7944], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 7920]
 lea r8, [rbp + 7920]
.Lx294_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx294_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx294_41
 cmp esi, 1
 jne .Lx294_55
 mov r8, rax
 jmp .Lx294_40
.Lx294_55:
 cmp esi, 2
 jne .Lx294_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx294_41
 mov r8, rax
 jmp .Lx294_40
.Lx294_56:
 cmp eax, 13
 jne .Lx294_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx294_41
 cmp rax, r8
 je .Lx294_41
 mov r8, rax
 jmp .Lx294_40
.Lx294_41:
 lea r9, [rbp + 7936]
.Lx294_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx294_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx294_43
 cmp esi, 1
 jne .Lx294_57
 mov r9, rax
 jmp .Lx294_42
.Lx294_57:
 cmp esi, 2
 jne .Lx294_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx294_43
 mov r9, rax
 jmp .Lx294_42
.Lx294_58:
 cmp eax, 13
 jne .Lx294_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx294_43
 cmp rax, r9
 je .Lx294_43
 mov r9, rax
 jmp .Lx294_42
.Lx294_43:
 cmp r8, r9
 je .Lx294_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx294_44
 cmp eax, 99
 je .Lx294_44
 cmp eax, 13
 jne .Lx294_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx294_44
 jmp .Lx294_45
.Lx294_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx294_53
 cmp eax, 99
 je .Lx294_53
 cmp eax, 13
 jne .Lx294_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx294_53
 jmp .Lx294_46
.Lx294_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx294_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx294_53
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
 jmp .Lx294_51
.Lx294_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx294_47
 cmp eax, 99
 je .Lx294_47
 cmp eax, 13
 jne .Lx294_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx294_47
 jmp .Lx294_48
.Lx294_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx294_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx294_53
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
 jmp .Lx294_51
.Lx294_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx294_49
 cmp edx, 14
 je .Lx294_53
 jmp .Lx294_52
.Lx294_49:
 cmp edx, 14
 je .Lx294_52
 cmp ecx, 7
 je .Lx294_53
 cmp edx, 7
 je .Lx294_53
 cmp ecx, 6
 jne .Lx294_50
 cmp edx, 6
 jne .Lx294_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx294_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx294_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx294_51
 jmp .Lx294_52
.Lx294_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx294_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx294_53
.Lx294_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx294_54
.Lx294_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx294_54
.Lx294_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx294_54:
 mov qword ptr [rbp + 7904], rax
 mov qword ptr [rbp + 7912], rdx
 cmp eax, 99
 je xchain90_n129_α
 jmp xchain90_n176_α
 xchain90_n172_β:
 jmp xchain90_n129_α
# IR_LIT_STRING
 xchain90_n173_α:
 mov qword ptr [rbp + 7280], 1
 mov rax, qword ptr [rip + .Lx295_0]
 mov qword ptr [rbp + 7288], rax
 jmp xchain90_n177_α
.Lx295_0:
 .quad .Lx295_0_s
.Lx295_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n174_α:
 mov qword ptr [rbp + 6864], 1
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [rbp + 6872], rax
 jmp xchain90_n178_α
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "."
 xchain90_n175_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6384] -> [zr+6352]
 mov rax, qword ptr [rbp + 6384]
 mov qword ptr [rbp + 6352], rax
 mov rax, qword ptr [rbp + 6392]
 mov qword ptr [rbp + 6360], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6352]
 mov rsi, qword ptr [rip + .Lx297_2]
 jmp .Lx297_3
.Lx297_2:
 .quad .Lx297_2_s
.Lx297_2_s:
 .string "l"
.Lx297_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6336], rax
 mov qword ptr [rbp + 6344], rdx
 cmp eax, 99
 je xchain90_n180_α
 jmp xchain90_n179_α
 xchain90_n175_β:
 jmp xchain90_n180_α
# IR_SUSPEND yield+resume
 xchain90_n176_α:
 lea rax, [rip + xchain90_n176_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n176_β:
 jmp xchain90_n129_α
 xchain90_n177_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7424] -> [zr+7360]
 mov rax, qword ptr [rbp + 7424]
 mov qword ptr [rbp + 7360], rax
 mov rax, qword ptr [rbp + 7432]
 mov qword ptr [rbp + 7368], rax
# marshal arg1 = producer-box slot [zr+7312] -> [zr+7376]
 mov rax, qword ptr [rbp + 7312]
 mov qword ptr [rbp + 7376], rax
 mov rax, qword ptr [rbp + 7320]
 mov qword ptr [rbp + 7384], rax
# marshal arg2 = producer-box slot [zr+7280] -> [zr+7392]
 mov rax, qword ptr [rbp + 7280]
 mov qword ptr [rbp + 7392], rax
 mov rax, qword ptr [rbp + 7288]
 mov qword ptr [rbp + 7400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7360]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7344], rax
 mov qword ptr [rbp + 7352], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n181_α
 xchain90_n177_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n178_α:
 mov qword ptr [rbp + 6752], 1
 mov rax, qword ptr [rip + .Lx301_0]
 mov qword ptr [rbp + 6760], rax
 jmp xchain90_n182_α
.Lx301_0:
 .quad .Lx301_0_s
.Lx301_0_s:
 .string "l"
# IR_VAR_REF
 xchain90_n179_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 jmp xchain90_n183_α
 xchain90_n180_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5760]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5760], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5760]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5744], rax
 mov qword ptr [rbp + 5752], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n184_α
 xchain90_n180_β:
 jmp proc_connect$2F2_ω
 xchain90_n181_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7568] -> [zr+7504]
 mov rax, qword ptr [rbp + 7568]
 mov qword ptr [rbp + 7504], rax
 mov rax, qword ptr [rbp + 7576]
 mov qword ptr [rbp + 7512], rax
# marshal arg1 = producer-box slot [zr+7456] -> [zr+7520]
 mov rax, qword ptr [rbp + 7456]
 mov qword ptr [rbp + 7520], rax
 mov rax, qword ptr [rbp + 7464]
 mov qword ptr [rbp + 7528], rax
# marshal arg2 = producer-box slot [zr+7344] -> [zr+7536]
 mov rax, qword ptr [rbp + 7344]
 mov qword ptr [rbp + 7536], rax
 mov rax, qword ptr [rbp + 7352]
 mov qword ptr [rbp + 7544], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7504]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7488], rax
 mov qword ptr [rbp + 7496], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n185_α
 xchain90_n181_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n182_α:
 mov qword ptr [rbp + 6720], 1
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [rbp + 6728], rax
 jmp xchain90_n186_α
.Lx306_0:
 .quad .Lx306_0_s
.Lx306_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n183_α:
 mov qword ptr [rbp + 6304], 1
 mov rax, qword ptr [rip + .Lx307_0]
 mov qword ptr [rbp + 6312], rax
 jmp xchain90_n187_α
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n184_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5680], rax
 mov qword ptr [rbp + 5688], rdx
 jmp xchain90_n188_α
 xchain90_n185_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7712] -> [zr+7648]
 mov rax, qword ptr [rbp + 7712]
 mov qword ptr [rbp + 7648], rax
 mov rax, qword ptr [rbp + 7720]
 mov qword ptr [rbp + 7656], rax
# marshal arg1 = producer-box slot [zr+7600] -> [zr+7664]
 mov rax, qword ptr [rbp + 7600]
 mov qword ptr [rbp + 7664], rax
 mov rax, qword ptr [rbp + 7608]
 mov qword ptr [rbp + 7672], rax
# marshal arg2 = producer-box slot [zr+7488] -> [zr+7680]
 mov rax, qword ptr [rbp + 7488]
 mov qword ptr [rbp + 7680], rax
 mov rax, qword ptr [rbp + 7496]
 mov qword ptr [rbp + 7688], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7648]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7632], rax
 mov qword ptr [rbp + 7640], rdx
 cmp eax, 99
 je xchain90_n146_α
 jmp xchain90_n189_α
 xchain90_n185_β:
 jmp xchain90_n146_α
# IR_LIT_STRING
 xchain90_n186_α:
 mov qword ptr [rbp + 6608], 1
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [rbp + 6616], rax
 jmp xchain90_n190_α
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "a"
# IR_LIT_STRING
 xchain90_n187_α:
 mov qword ptr [rbp + 6192], 1
 mov rax, qword ptr [rip + .Lx312_0]
 mov qword ptr [rbp + 6200], rax
 jmp xchain90_n191_α
.Lx312_0:
 .quad .Lx312_0_s
.Lx312_0_s:
 .string "k"
# IR_LIT_STRING
 xchain90_n188_α:
 mov qword ptr [rbp + 5712], 1
 mov rax, qword ptr [rip + .Lx313_0]
 mov qword ptr [rbp + 5720], rax
 jmp xchain90_n192_α
.Lx313_0:
 .quad .Lx313_0_s
.Lx313_0_s:
 .string "m"
 xchain90_n189_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7248] -> [zr+7216]
 mov rax, qword ptr [rbp + 7248]
 mov qword ptr [rbp + 7216], rax
 mov rax, qword ptr [rbp + 7256]
 mov qword ptr [rbp + 7224], rax
# marshal arg1 = producer-box slot [zr+7632] -> [zr+7232]
 mov rax, qword ptr [rbp + 7632]
 mov qword ptr [rbp + 7232], rax
 mov rax, qword ptr [rbp + 7640]
 mov qword ptr [rbp + 7240], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 7216]
 lea r8, [rbp + 7216]
.Lx314_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx314_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx314_41
 cmp esi, 1
 jne .Lx314_55
 mov r8, rax
 jmp .Lx314_40
.Lx314_55:
 cmp esi, 2
 jne .Lx314_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx314_41
 mov r8, rax
 jmp .Lx314_40
.Lx314_56:
 cmp eax, 13
 jne .Lx314_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx314_41
 cmp rax, r8
 je .Lx314_41
 mov r8, rax
 jmp .Lx314_40
.Lx314_41:
 lea r9, [rbp + 7232]
.Lx314_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx314_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx314_43
 cmp esi, 1
 jne .Lx314_57
 mov r9, rax
 jmp .Lx314_42
.Lx314_57:
 cmp esi, 2
 jne .Lx314_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx314_43
 mov r9, rax
 jmp .Lx314_42
.Lx314_58:
 cmp eax, 13
 jne .Lx314_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx314_43
 cmp rax, r9
 je .Lx314_43
 mov r9, rax
 jmp .Lx314_42
.Lx314_43:
 cmp r8, r9
 je .Lx314_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx314_44
 cmp eax, 99
 je .Lx314_44
 cmp eax, 13
 jne .Lx314_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx314_44
 jmp .Lx314_45
.Lx314_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx314_53
 cmp eax, 99
 je .Lx314_53
 cmp eax, 13
 jne .Lx314_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx314_53
 jmp .Lx314_46
.Lx314_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx314_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx314_53
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
 jmp .Lx314_51
.Lx314_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx314_47
 cmp eax, 99
 je .Lx314_47
 cmp eax, 13
 jne .Lx314_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx314_47
 jmp .Lx314_48
.Lx314_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx314_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx314_53
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
 jmp .Lx314_51
.Lx314_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx314_49
 cmp edx, 14
 je .Lx314_53
 jmp .Lx314_52
.Lx314_49:
 cmp edx, 14
 je .Lx314_52
 cmp ecx, 7
 je .Lx314_53
 cmp edx, 7
 je .Lx314_53
 cmp ecx, 6
 jne .Lx314_50
 cmp edx, 6
 jne .Lx314_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx314_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx314_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx314_51
 jmp .Lx314_52
.Lx314_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx314_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx314_53
.Lx314_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx314_54
.Lx314_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx314_54
.Lx314_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx314_54:
 mov qword ptr [rbp + 7200], rax
 mov qword ptr [rbp + 7208], rdx
 cmp eax, 99
 je xchain90_n146_α
 jmp xchain90_n193_α
 xchain90_n189_β:
 jmp xchain90_n146_α
# IR_LIT_STRING
 xchain90_n190_α:
 mov qword ptr [rbp + 6576], 1
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [rbp + 6584], rax
 jmp xchain90_n194_α
.Lx315_0:
 .quad .Lx315_0_s
.Lx315_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n191_α:
 mov qword ptr [rbp + 6160], 1
 mov rax, qword ptr [rip + .Lx316_0]
 mov qword ptr [rbp + 6168], rax
 jmp xchain90_n195_α
.Lx316_0:
 .quad .Lx316_0_s
.Lx316_0_s:
 .string "."
 xchain90_n192_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5680] -> [zr+5648]
 mov rax, qword ptr [rbp + 5680]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5688]
 mov qword ptr [rbp + 5656], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 5648]
 mov rsi, qword ptr [rip + .Lx317_2]
 jmp .Lx317_3
.Lx317_2:
 .quad .Lx317_2_s
.Lx317_2_s:
 .string "m"
.Lx317_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 cmp eax, 99
 je xchain90_n197_α
 jmp xchain90_n196_α
 xchain90_n192_β:
 jmp xchain90_n197_α
# IR_SUSPEND yield+resume
 xchain90_n193_α:
 lea rax, [rip + xchain90_n193_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n193_β:
 jmp xchain90_n146_α
 xchain90_n194_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6720] -> [zr+6656]
 mov rax, qword ptr [rbp + 6720]
 mov qword ptr [rbp + 6656], rax
 mov rax, qword ptr [rbp + 6728]
 mov qword ptr [rbp + 6664], rax
# marshal arg1 = producer-box slot [zr+6608] -> [zr+6672]
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 6672], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 6680], rax
# marshal arg2 = producer-box slot [zr+6576] -> [zr+6688]
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 6688], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 6696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6656]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n198_α
 xchain90_n194_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n195_α:
 mov qword ptr [rbp + 6048], 1
 mov rax, qword ptr [rip + .Lx321_0]
 mov qword ptr [rbp + 6056], rax
 jmp xchain90_n199_α
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
 .string "m"
# IR_VAR_REF
 xchain90_n196_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5136], rax
 mov qword ptr [rbp + 5144], rdx
 jmp xchain90_n200_α
 xchain90_n197_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5056]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5056], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5056]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5040], rax
 mov qword ptr [rbp + 5048], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n201_α
 xchain90_n197_β:
 jmp proc_connect$2F2_ω
 xchain90_n198_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6864] -> [zr+6800]
 mov rax, qword ptr [rbp + 6864]
 mov qword ptr [rbp + 6800], rax
 mov rax, qword ptr [rbp + 6872]
 mov qword ptr [rbp + 6808], rax
# marshal arg1 = producer-box slot [zr+6752] -> [zr+6816]
 mov rax, qword ptr [rbp + 6752]
 mov qword ptr [rbp + 6816], rax
 mov rax, qword ptr [rbp + 6760]
 mov qword ptr [rbp + 6824], rax
# marshal arg2 = producer-box slot [zr+6640] -> [zr+6832]
 mov rax, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 6832], rax
 mov rax, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 6840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6800]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6784], rax
 mov qword ptr [rbp + 6792], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n202_α
 xchain90_n198_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n199_α:
 mov qword ptr [rbp + 6016], 1
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [rbp + 6024], rax
 jmp xchain90_n203_α
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n200_α:
 mov qword ptr [rbp + 5600], 1
 mov rax, qword ptr [rip + .Lx327_0]
 mov qword ptr [rbp + 5608], rax
 jmp xchain90_n204_α
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n201_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 jmp xchain90_n205_α
 xchain90_n202_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7008] -> [zr+6944]
 mov rax, qword ptr [rbp + 7008]
 mov qword ptr [rbp + 6944], rax
 mov rax, qword ptr [rbp + 7016]
 mov qword ptr [rbp + 6952], rax
# marshal arg1 = producer-box slot [zr+6896] -> [zr+6960]
 mov rax, qword ptr [rbp + 6896]
 mov qword ptr [rbp + 6960], rax
 mov rax, qword ptr [rbp + 6904]
 mov qword ptr [rbp + 6968], rax
# marshal arg2 = producer-box slot [zr+6784] -> [zr+6976]
 mov rax, qword ptr [rbp + 6784]
 mov qword ptr [rbp + 6976], rax
 mov rax, qword ptr [rbp + 6792]
 mov qword ptr [rbp + 6984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6944]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6928], rax
 mov qword ptr [rbp + 6936], rdx
 cmp eax, 99
 je xchain90_n163_α
 jmp xchain90_n206_α
 xchain90_n202_β:
 jmp xchain90_n163_α
# IR_LIT_STRING
 xchain90_n203_α:
 mov qword ptr [rbp + 5904], 1
 mov rax, qword ptr [rip + .Lx331_0]
 mov qword ptr [rbp + 5912], rax
 jmp xchain90_n207_α
.Lx331_0:
 .quad .Lx331_0_s
.Lx331_0_s:
 .string "c"
# IR_LIT_STRING
 xchain90_n204_α:
 mov qword ptr [rbp + 5488], 1
 mov rax, qword ptr [rip + .Lx332_0]
 mov qword ptr [rbp + 5496], rax
 jmp xchain90_n208_α
.Lx332_0:
 .quad .Lx332_0_s
.Lx332_0_s:
 .string "l"
# IR_LIT_STRING
 xchain90_n205_α:
 mov qword ptr [rbp + 5008], 1
 mov rax, qword ptr [rip + .Lx333_0]
 mov qword ptr [rbp + 5016], rax
 jmp xchain90_n209_α
.Lx333_0:
 .quad .Lx333_0_s
.Lx333_0_s:
 .string "n"
 xchain90_n206_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6544] -> [zr+6512]
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 6512], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 6520], rax
# marshal arg1 = producer-box slot [zr+6928] -> [zr+6528]
 mov rax, qword ptr [rbp + 6928]
 mov qword ptr [rbp + 6528], rax
 mov rax, qword ptr [rbp + 6936]
 mov qword ptr [rbp + 6536], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 6512]
 lea r8, [rbp + 6512]
.Lx334_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx334_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx334_41
 cmp esi, 1
 jne .Lx334_55
 mov r8, rax
 jmp .Lx334_40
.Lx334_55:
 cmp esi, 2
 jne .Lx334_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx334_41
 mov r8, rax
 jmp .Lx334_40
.Lx334_56:
 cmp eax, 13
 jne .Lx334_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx334_41
 cmp rax, r8
 je .Lx334_41
 mov r8, rax
 jmp .Lx334_40
.Lx334_41:
 lea r9, [rbp + 6528]
.Lx334_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx334_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx334_43
 cmp esi, 1
 jne .Lx334_57
 mov r9, rax
 jmp .Lx334_42
.Lx334_57:
 cmp esi, 2
 jne .Lx334_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx334_43
 mov r9, rax
 jmp .Lx334_42
.Lx334_58:
 cmp eax, 13
 jne .Lx334_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx334_43
 cmp rax, r9
 je .Lx334_43
 mov r9, rax
 jmp .Lx334_42
.Lx334_43:
 cmp r8, r9
 je .Lx334_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx334_44
 cmp eax, 99
 je .Lx334_44
 cmp eax, 13
 jne .Lx334_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx334_44
 jmp .Lx334_45
.Lx334_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx334_53
 cmp eax, 99
 je .Lx334_53
 cmp eax, 13
 jne .Lx334_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx334_53
 jmp .Lx334_46
.Lx334_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx334_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx334_53
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
 jmp .Lx334_51
.Lx334_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx334_47
 cmp eax, 99
 je .Lx334_47
 cmp eax, 13
 jne .Lx334_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx334_47
 jmp .Lx334_48
.Lx334_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx334_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx334_53
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
 jmp .Lx334_51
.Lx334_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx334_49
 cmp edx, 14
 je .Lx334_53
 jmp .Lx334_52
.Lx334_49:
 cmp edx, 14
 je .Lx334_52
 cmp ecx, 7
 je .Lx334_53
 cmp edx, 7
 je .Lx334_53
 cmp ecx, 6
 jne .Lx334_50
 cmp edx, 6
 jne .Lx334_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx334_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx334_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx334_51
 jmp .Lx334_52
.Lx334_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx334_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx334_53
.Lx334_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx334_54
.Lx334_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx334_54
.Lx334_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx334_54:
 mov qword ptr [rbp + 6496], rax
 mov qword ptr [rbp + 6504], rdx
 cmp eax, 99
 je xchain90_n163_α
 jmp xchain90_n210_α
 xchain90_n206_β:
 jmp xchain90_n163_α
# IR_LIT_STRING
 xchain90_n207_α:
 mov qword ptr [rbp + 5872], 1
 mov rax, qword ptr [rip + .Lx335_0]
 mov qword ptr [rbp + 5880], rax
 jmp xchain90_n211_α
.Lx335_0:
 .quad .Lx335_0_s
.Lx335_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n208_α:
 mov qword ptr [rbp + 5456], 1
 mov rax, qword ptr [rip + .Lx336_0]
 mov qword ptr [rbp + 5464], rax
 jmp xchain90_n212_α
.Lx336_0:
 .quad .Lx336_0_s
.Lx336_0_s:
 .string "."
 xchain90_n209_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4976] -> [zr+4944]
 mov rax, qword ptr [rbp + 4976]
 mov qword ptr [rbp + 4944], rax
 mov rax, qword ptr [rbp + 4984]
 mov qword ptr [rbp + 4952], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4944]
 mov rsi, qword ptr [rip + .Lx337_2]
 jmp .Lx337_3
.Lx337_2:
 .quad .Lx337_2_s
.Lx337_2_s:
 .string "n"
.Lx337_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
 cmp eax, 99
 je xchain90_n214_α
 jmp xchain90_n213_α
 xchain90_n209_β:
 jmp xchain90_n214_α
# IR_SUSPEND yield+resume
 xchain90_n210_α:
 lea rax, [rip + xchain90_n210_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n210_β:
 jmp xchain90_n163_α
 xchain90_n211_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6016] -> [zr+5952]
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 5952], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 5960], rax
# marshal arg1 = producer-box slot [zr+5904] -> [zr+5968]
 mov rax, qword ptr [rbp + 5904]
 mov qword ptr [rbp + 5968], rax
 mov rax, qword ptr [rbp + 5912]
 mov qword ptr [rbp + 5976], rax
# marshal arg2 = producer-box slot [zr+5872] -> [zr+5984]
 mov rax, qword ptr [rbp + 5872]
 mov qword ptr [rbp + 5984], rax
 mov rax, qword ptr [rbp + 5880]
 mov qword ptr [rbp + 5992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5952]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5936], rax
 mov qword ptr [rbp + 5944], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n215_α
 xchain90_n211_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n212_α:
 mov qword ptr [rbp + 5344], 1
 mov rax, qword ptr [rip + .Lx341_0]
 mov qword ptr [rbp + 5352], rax
 jmp xchain90_n216_α
.Lx341_0:
 .quad .Lx341_0_s
.Lx341_0_s:
 .string "n"
# IR_VAR_REF
 xchain90_n213_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 jmp xchain90_n217_α
 xchain90_n214_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4352]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4352], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4352]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n218_α
 xchain90_n214_β:
 jmp proc_connect$2F2_ω
 xchain90_n215_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6160] -> [zr+6096]
 mov rax, qword ptr [rbp + 6160]
 mov qword ptr [rbp + 6096], rax
 mov rax, qword ptr [rbp + 6168]
 mov qword ptr [rbp + 6104], rax
# marshal arg1 = producer-box slot [zr+6048] -> [zr+6112]
 mov rax, qword ptr [rbp + 6048]
 mov qword ptr [rbp + 6112], rax
 mov rax, qword ptr [rbp + 6056]
 mov qword ptr [rbp + 6120], rax
# marshal arg2 = producer-box slot [zr+5936] -> [zr+6128]
 mov rax, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 6128], rax
 mov rax, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 6136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6096]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6080], rax
 mov qword ptr [rbp + 6088], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n219_α
 xchain90_n215_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n216_α:
 mov qword ptr [rbp + 5312], 1
 mov rax, qword ptr [rip + .Lx346_0]
 mov qword ptr [rbp + 5320], rax
 jmp xchain90_n220_α
.Lx346_0:
 .quad .Lx346_0_s
.Lx346_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n217_α:
 mov qword ptr [rbp + 4896], 1
 mov rax, qword ptr [rip + .Lx347_0]
 mov qword ptr [rbp + 4904], rax
 jmp xchain90_n221_α
.Lx347_0:
 .quad .Lx347_0_s
.Lx347_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n218_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain90_n222_α
 xchain90_n219_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6304] -> [zr+6240]
 mov rax, qword ptr [rbp + 6304]
 mov qword ptr [rbp + 6240], rax
 mov rax, qword ptr [rbp + 6312]
 mov qword ptr [rbp + 6248], rax
# marshal arg1 = producer-box slot [zr+6192] -> [zr+6256]
 mov rax, qword ptr [rbp + 6192]
 mov qword ptr [rbp + 6256], rax
 mov rax, qword ptr [rbp + 6200]
 mov qword ptr [rbp + 6264], rax
# marshal arg2 = producer-box slot [zr+6080] -> [zr+6272]
 mov rax, qword ptr [rbp + 6080]
 mov qword ptr [rbp + 6272], rax
 mov rax, qword ptr [rbp + 6088]
 mov qword ptr [rbp + 6280], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6240]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6224], rax
 mov qword ptr [rbp + 6232], rdx
 cmp eax, 99
 je xchain90_n180_α
 jmp xchain90_n223_α
 xchain90_n219_β:
 jmp xchain90_n180_α
# IR_LIT_STRING
 xchain90_n220_α:
 mov qword ptr [rbp + 5200], 1
 mov rax, qword ptr [rip + .Lx351_0]
 mov qword ptr [rbp + 5208], rax
 jmp xchain90_n224_α
.Lx351_0:
 .quad .Lx351_0_s
.Lx351_0_s:
 .string "e"
# IR_LIT_STRING
 xchain90_n221_α:
 mov qword ptr [rbp + 4784], 1
 mov rax, qword ptr [rip + .Lx352_0]
 mov qword ptr [rbp + 4792], rax
 jmp xchain90_n225_α
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "m"
# IR_LIT_STRING
 xchain90_n222_α:
 mov qword ptr [rbp + 4304], 1
 mov rax, qword ptr [rip + .Lx353_0]
 mov qword ptr [rbp + 4312], rax
 jmp xchain90_n226_α
.Lx353_0:
 .quad .Lx353_0_s
.Lx353_0_s:
 .string "o"
 xchain90_n223_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5840] -> [zr+5808]
 mov rax, qword ptr [rbp + 5840]
 mov qword ptr [rbp + 5808], rax
 mov rax, qword ptr [rbp + 5848]
 mov qword ptr [rbp + 5816], rax
# marshal arg1 = producer-box slot [zr+6224] -> [zr+5824]
 mov rax, qword ptr [rbp + 6224]
 mov qword ptr [rbp + 5824], rax
 mov rax, qword ptr [rbp + 6232]
 mov qword ptr [rbp + 5832], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 5808]
 lea r8, [rbp + 5808]
.Lx354_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx354_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx354_41
 cmp esi, 1
 jne .Lx354_55
 mov r8, rax
 jmp .Lx354_40
.Lx354_55:
 cmp esi, 2
 jne .Lx354_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx354_41
 mov r8, rax
 jmp .Lx354_40
.Lx354_56:
 cmp eax, 13
 jne .Lx354_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx354_41
 cmp rax, r8
 je .Lx354_41
 mov r8, rax
 jmp .Lx354_40
.Lx354_41:
 lea r9, [rbp + 5824]
.Lx354_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx354_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx354_43
 cmp esi, 1
 jne .Lx354_57
 mov r9, rax
 jmp .Lx354_42
.Lx354_57:
 cmp esi, 2
 jne .Lx354_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx354_43
 mov r9, rax
 jmp .Lx354_42
.Lx354_58:
 cmp eax, 13
 jne .Lx354_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx354_43
 cmp rax, r9
 je .Lx354_43
 mov r9, rax
 jmp .Lx354_42
.Lx354_43:
 cmp r8, r9
 je .Lx354_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx354_44
 cmp eax, 99
 je .Lx354_44
 cmp eax, 13
 jne .Lx354_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx354_44
 jmp .Lx354_45
.Lx354_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx354_53
 cmp eax, 99
 je .Lx354_53
 cmp eax, 13
 jne .Lx354_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx354_53
 jmp .Lx354_46
.Lx354_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx354_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx354_53
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
 jmp .Lx354_51
.Lx354_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx354_47
 cmp eax, 99
 je .Lx354_47
 cmp eax, 13
 jne .Lx354_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx354_47
 jmp .Lx354_48
.Lx354_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx354_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx354_53
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
 jmp .Lx354_51
.Lx354_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx354_49
 cmp edx, 14
 je .Lx354_53
 jmp .Lx354_52
.Lx354_49:
 cmp edx, 14
 je .Lx354_52
 cmp ecx, 7
 je .Lx354_53
 cmp edx, 7
 je .Lx354_53
 cmp ecx, 6
 jne .Lx354_50
 cmp edx, 6
 jne .Lx354_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx354_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx354_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx354_51
 jmp .Lx354_52
.Lx354_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx354_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx354_53
.Lx354_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx354_54
.Lx354_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx354_54
.Lx354_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx354_54:
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 cmp eax, 99
 je xchain90_n180_α
 jmp xchain90_n227_α
 xchain90_n223_β:
 jmp xchain90_n180_α
# IR_LIT_STRING
 xchain90_n224_α:
 mov qword ptr [rbp + 5168], 1
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [rbp + 5176], rax
 jmp xchain90_n228_α
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n225_α:
 mov qword ptr [rbp + 4752], 1
 mov rax, qword ptr [rip + .Lx356_0]
 mov qword ptr [rbp + 4760], rax
 jmp xchain90_n229_α
.Lx356_0:
 .quad .Lx356_0_s
.Lx356_0_s:
 .string "."
 xchain90_n226_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4272] -> [zr+4240]
 mov rax, qword ptr [rbp + 4272]
 mov qword ptr [rbp + 4240], rax
 mov rax, qword ptr [rbp + 4280]
 mov qword ptr [rbp + 4248], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4240]
 mov rsi, qword ptr [rip + .Lx357_2]
 jmp .Lx357_3
.Lx357_2:
 .quad .Lx357_2_s
.Lx357_2_s:
 .string "o"
.Lx357_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
 cmp eax, 99
 je xchain90_n231_α
 jmp xchain90_n230_α
 xchain90_n226_β:
 jmp xchain90_n231_α
# IR_SUSPEND yield+resume
 xchain90_n227_α:
 lea rax, [rip + xchain90_n227_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n227_β:
 jmp xchain90_n180_α
 xchain90_n228_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5312] -> [zr+5248]
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 5248], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 5256], rax
# marshal arg1 = producer-box slot [zr+5200] -> [zr+5264]
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 5264], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 5272], rax
# marshal arg2 = producer-box slot [zr+5168] -> [zr+5280]
 mov rax, qword ptr [rbp + 5168]
 mov qword ptr [rbp + 5280], rax
 mov rax, qword ptr [rbp + 5176]
 mov qword ptr [rbp + 5288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5248]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n232_α
 xchain90_n228_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n229_α:
 mov qword ptr [rbp + 4640], 1
 mov rax, qword ptr [rip + .Lx361_0]
 mov qword ptr [rbp + 4648], rax
 jmp xchain90_n233_α
.Lx361_0:
 .quad .Lx361_0_s
.Lx361_0_s:
 .string "o"
# IR_VAR_REF
 xchain90_n230_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 jmp xchain90_n234_α
 xchain90_n231_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3648]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3656], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3648]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n235_α
 xchain90_n231_β:
 jmp proc_connect$2F2_ω
 xchain90_n232_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5456] -> [zr+5392]
 mov rax, qword ptr [rbp + 5456]
 mov qword ptr [rbp + 5392], rax
 mov rax, qword ptr [rbp + 5464]
 mov qword ptr [rbp + 5400], rax
# marshal arg1 = producer-box slot [zr+5344] -> [zr+5408]
 mov rax, qword ptr [rbp + 5344]
 mov qword ptr [rbp + 5408], rax
 mov rax, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 5416], rax
# marshal arg2 = producer-box slot [zr+5232] -> [zr+5424]
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 5424], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 5432], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5392]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n236_α
 xchain90_n232_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n233_α:
 mov qword ptr [rbp + 4608], 1
 mov rax, qword ptr [rip + .Lx366_0]
 mov qword ptr [rbp + 4616], rax
 jmp xchain90_n237_α
.Lx366_0:
 .quad .Lx366_0_s
.Lx366_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n234_α:
 mov qword ptr [rbp + 4192], 1
 mov rax, qword ptr [rip + .Lx367_0]
 mov qword ptr [rbp + 4200], rax
 jmp xchain90_n238_α
.Lx367_0:
 .quad .Lx367_0_s
.Lx367_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n235_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain90_n239_α
 xchain90_n236_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5600] -> [zr+5536]
 mov rax, qword ptr [rbp + 5600]
 mov qword ptr [rbp + 5536], rax
 mov rax, qword ptr [rbp + 5608]
 mov qword ptr [rbp + 5544], rax
# marshal arg1 = producer-box slot [zr+5488] -> [zr+5552]
 mov rax, qword ptr [rbp + 5488]
 mov qword ptr [rbp + 5552], rax
 mov rax, qword ptr [rbp + 5496]
 mov qword ptr [rbp + 5560], rax
# marshal arg2 = producer-box slot [zr+5376] -> [zr+5568]
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 5568], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 5576], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5536]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5520], rax
 mov qword ptr [rbp + 5528], rdx
 cmp eax, 99
 je xchain90_n197_α
 jmp xchain90_n240_α
 xchain90_n236_β:
 jmp xchain90_n197_α
# IR_LIT_STRING
 xchain90_n237_α:
 mov qword ptr [rbp + 4496], 1
 mov rax, qword ptr [rip + .Lx371_0]
 mov qword ptr [rbp + 4504], rax
 jmp xchain90_n241_α
.Lx371_0:
 .quad .Lx371_0_s
.Lx371_0_s:
 .string "g"
# IR_LIT_STRING
 xchain90_n238_α:
 mov qword ptr [rbp + 4080], 1
 mov rax, qword ptr [rip + .Lx372_0]
 mov qword ptr [rbp + 4088], rax
 jmp xchain90_n242_α
.Lx372_0:
 .quad .Lx372_0_s
.Lx372_0_s:
 .string "n"
# IR_LIT_STRING
 xchain90_n239_α:
 mov qword ptr [rbp + 3600], 1
 mov rax, qword ptr [rip + .Lx373_0]
 mov qword ptr [rbp + 3608], rax
 jmp xchain90_n243_α
.Lx373_0:
 .quad .Lx373_0_s
.Lx373_0_s:
 .string "p"
 xchain90_n240_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5136] -> [zr+5104]
 mov rax, qword ptr [rbp + 5136]
 mov qword ptr [rbp + 5104], rax
 mov rax, qword ptr [rbp + 5144]
 mov qword ptr [rbp + 5112], rax
# marshal arg1 = producer-box slot [zr+5520] -> [zr+5120]
 mov rax, qword ptr [rbp + 5520]
 mov qword ptr [rbp + 5120], rax
 mov rax, qword ptr [rbp + 5528]
 mov qword ptr [rbp + 5128], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 5104]
 lea r8, [rbp + 5104]
.Lx374_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx374_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx374_41
 cmp esi, 1
 jne .Lx374_55
 mov r8, rax
 jmp .Lx374_40
.Lx374_55:
 cmp esi, 2
 jne .Lx374_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx374_41
 mov r8, rax
 jmp .Lx374_40
.Lx374_56:
 cmp eax, 13
 jne .Lx374_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx374_41
 cmp rax, r8
 je .Lx374_41
 mov r8, rax
 jmp .Lx374_40
.Lx374_41:
 lea r9, [rbp + 5120]
.Lx374_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx374_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx374_43
 cmp esi, 1
 jne .Lx374_57
 mov r9, rax
 jmp .Lx374_42
.Lx374_57:
 cmp esi, 2
 jne .Lx374_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx374_43
 mov r9, rax
 jmp .Lx374_42
.Lx374_58:
 cmp eax, 13
 jne .Lx374_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx374_43
 cmp rax, r9
 je .Lx374_43
 mov r9, rax
 jmp .Lx374_42
.Lx374_43:
 cmp r8, r9
 je .Lx374_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx374_44
 cmp eax, 99
 je .Lx374_44
 cmp eax, 13
 jne .Lx374_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx374_44
 jmp .Lx374_45
.Lx374_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx374_53
 cmp eax, 99
 je .Lx374_53
 cmp eax, 13
 jne .Lx374_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx374_53
 jmp .Lx374_46
.Lx374_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx374_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx374_53
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
 jmp .Lx374_51
.Lx374_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx374_47
 cmp eax, 99
 je .Lx374_47
 cmp eax, 13
 jne .Lx374_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx374_47
 jmp .Lx374_48
.Lx374_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx374_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx374_53
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
 jmp .Lx374_51
.Lx374_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx374_49
 cmp edx, 14
 je .Lx374_53
 jmp .Lx374_52
.Lx374_49:
 cmp edx, 14
 je .Lx374_52
 cmp ecx, 7
 je .Lx374_53
 cmp edx, 7
 je .Lx374_53
 cmp ecx, 6
 jne .Lx374_50
 cmp edx, 6
 jne .Lx374_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx374_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx374_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx374_51
 jmp .Lx374_52
.Lx374_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx374_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx374_53
.Lx374_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx374_54
.Lx374_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx374_54
.Lx374_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx374_54:
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 cmp eax, 99
 je xchain90_n197_α
 jmp xchain90_n244_α
 xchain90_n240_β:
 jmp xchain90_n197_α
# IR_LIT_STRING
 xchain90_n241_α:
 mov qword ptr [rbp + 4464], 1
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [rbp + 4472], rax
 jmp xchain90_n245_α
.Lx375_0:
 .quad .Lx375_0_s
.Lx375_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n242_α:
 mov qword ptr [rbp + 4048], 1
 mov rax, qword ptr [rip + .Lx376_0]
 mov qword ptr [rbp + 4056], rax
 jmp xchain90_n246_α
.Lx376_0:
 .quad .Lx376_0_s
.Lx376_0_s:
 .string "."
 xchain90_n243_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3568] -> [zr+3536]
 mov rax, qword ptr [rbp + 3568]
 mov qword ptr [rbp + 3536], rax
 mov rax, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 3544], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3536]
 mov rsi, qword ptr [rip + .Lx377_2]
 jmp .Lx377_3
.Lx377_2:
 .quad .Lx377_2_s
.Lx377_2_s:
 .string "p"
.Lx377_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3520], rax
 mov qword ptr [rbp + 3528], rdx
 cmp eax, 99
 je xchain90_n248_α
 jmp xchain90_n247_α
 xchain90_n243_β:
 jmp xchain90_n248_α
# IR_SUSPEND yield+resume
 xchain90_n244_α:
 lea rax, [rip + xchain90_n244_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n244_β:
 jmp xchain90_n197_α
 xchain90_n245_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4608] -> [zr+4544]
 mov rax, qword ptr [rbp + 4608]
 mov qword ptr [rbp + 4544], rax
 mov rax, qword ptr [rbp + 4616]
 mov qword ptr [rbp + 4552], rax
# marshal arg1 = producer-box slot [zr+4496] -> [zr+4560]
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 4560], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 4568], rax
# marshal arg2 = producer-box slot [zr+4464] -> [zr+4576]
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 4576], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 4584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4544]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4528], rax
 mov qword ptr [rbp + 4536], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n249_α
 xchain90_n245_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n246_α:
 mov qword ptr [rbp + 3936], 1
 mov rax, qword ptr [rip + .Lx381_0]
 mov qword ptr [rbp + 3944], rax
 jmp xchain90_n250_α
.Lx381_0:
 .quad .Lx381_0_s
.Lx381_0_s:
 .string "k"
# IR_VAR_REF
 xchain90_n247_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain90_n251_α
 xchain90_n248_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2944]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2944], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2944]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n252_α
 xchain90_n248_β:
 jmp proc_connect$2F2_ω
 xchain90_n249_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4752] -> [zr+4688]
 mov rax, qword ptr [rbp + 4752]
 mov qword ptr [rbp + 4688], rax
 mov rax, qword ptr [rbp + 4760]
 mov qword ptr [rbp + 4696], rax
# marshal arg1 = producer-box slot [zr+4640] -> [zr+4704]
 mov rax, qword ptr [rbp + 4640]
 mov qword ptr [rbp + 4704], rax
 mov rax, qword ptr [rbp + 4648]
 mov qword ptr [rbp + 4712], rax
# marshal arg2 = producer-box slot [zr+4528] -> [zr+4720]
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 4720], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 4728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4688]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n253_α
 xchain90_n249_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n250_α:
 mov qword ptr [rbp + 3904], 1
 mov rax, qword ptr [rip + .Lx386_0]
 mov qword ptr [rbp + 3912], rax
 jmp xchain90_n254_α
.Lx386_0:
 .quad .Lx386_0_s
.Lx386_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n251_α:
 mov qword ptr [rbp + 3488], 1
 mov rax, qword ptr [rip + .Lx387_0]
 mov qword ptr [rbp + 3496], rax
 jmp xchain90_n255_α
.Lx387_0:
 .quad .Lx387_0_s
.Lx387_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n252_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 jmp xchain90_n256_α
 xchain90_n253_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4896] -> [zr+4832]
 mov rax, qword ptr [rbp + 4896]
 mov qword ptr [rbp + 4832], rax
 mov rax, qword ptr [rbp + 4904]
 mov qword ptr [rbp + 4840], rax
# marshal arg1 = producer-box slot [zr+4784] -> [zr+4848]
 mov rax, qword ptr [rbp + 4784]
 mov qword ptr [rbp + 4848], rax
 mov rax, qword ptr [rbp + 4792]
 mov qword ptr [rbp + 4856], rax
# marshal arg2 = producer-box slot [zr+4672] -> [zr+4864]
 mov rax, qword ptr [rbp + 4672]
 mov qword ptr [rbp + 4864], rax
 mov rax, qword ptr [rbp + 4680]
 mov qword ptr [rbp + 4872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4832]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4816], rax
 mov qword ptr [rbp + 4824], rdx
 cmp eax, 99
 je xchain90_n214_α
 jmp xchain90_n257_α
 xchain90_n253_β:
 jmp xchain90_n214_α
# IR_LIT_STRING
 xchain90_n254_α:
 mov qword ptr [rbp + 3792], 1
 mov rax, qword ptr [rip + .Lx391_0]
 mov qword ptr [rbp + 3800], rax
 jmp xchain90_n258_α
.Lx391_0:
 .quad .Lx391_0_s
.Lx391_0_s:
 .string "i"
# IR_LIT_STRING
 xchain90_n255_α:
 mov qword ptr [rbp + 3376], 1
 mov rax, qword ptr [rip + .Lx392_0]
 mov qword ptr [rbp + 3384], rax
 jmp xchain90_n259_α
.Lx392_0:
 .quad .Lx392_0_s
.Lx392_0_s:
 .string "b"
# IR_LIT_STRING
 xchain90_n256_α:
 mov qword ptr [rbp + 2896], 1
 mov rax, qword ptr [rip + .Lx393_0]
 mov qword ptr [rbp + 2904], rax
 jmp xchain90_n260_α
.Lx393_0:
 .quad .Lx393_0_s
.Lx393_0_s:
 .string "q"
 xchain90_n257_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4432] -> [zr+4400]
 mov rax, qword ptr [rbp + 4432]
 mov qword ptr [rbp + 4400], rax
 mov rax, qword ptr [rbp + 4440]
 mov qword ptr [rbp + 4408], rax
# marshal arg1 = producer-box slot [zr+4816] -> [zr+4416]
 mov rax, qword ptr [rbp + 4816]
 mov qword ptr [rbp + 4416], rax
 mov rax, qword ptr [rbp + 4824]
 mov qword ptr [rbp + 4424], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 4400]
 lea r8, [rbp + 4400]
.Lx394_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx394_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx394_41
 cmp esi, 1
 jne .Lx394_55
 mov r8, rax
 jmp .Lx394_40
.Lx394_55:
 cmp esi, 2
 jne .Lx394_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx394_41
 mov r8, rax
 jmp .Lx394_40
.Lx394_56:
 cmp eax, 13
 jne .Lx394_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx394_41
 cmp rax, r8
 je .Lx394_41
 mov r8, rax
 jmp .Lx394_40
.Lx394_41:
 lea r9, [rbp + 4416]
.Lx394_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx394_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx394_43
 cmp esi, 1
 jne .Lx394_57
 mov r9, rax
 jmp .Lx394_42
.Lx394_57:
 cmp esi, 2
 jne .Lx394_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx394_43
 mov r9, rax
 jmp .Lx394_42
.Lx394_58:
 cmp eax, 13
 jne .Lx394_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx394_43
 cmp rax, r9
 je .Lx394_43
 mov r9, rax
 jmp .Lx394_42
.Lx394_43:
 cmp r8, r9
 je .Lx394_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx394_44
 cmp eax, 99
 je .Lx394_44
 cmp eax, 13
 jne .Lx394_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx394_44
 jmp .Lx394_45
.Lx394_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx394_53
 cmp eax, 99
 je .Lx394_53
 cmp eax, 13
 jne .Lx394_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx394_53
 jmp .Lx394_46
.Lx394_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx394_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx394_53
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
 jmp .Lx394_51
.Lx394_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx394_47
 cmp eax, 99
 je .Lx394_47
 cmp eax, 13
 jne .Lx394_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx394_47
 jmp .Lx394_48
.Lx394_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx394_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx394_53
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
 jmp .Lx394_51
.Lx394_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx394_49
 cmp edx, 14
 je .Lx394_53
 jmp .Lx394_52
.Lx394_49:
 cmp edx, 14
 je .Lx394_52
 cmp ecx, 7
 je .Lx394_53
 cmp edx, 7
 je .Lx394_53
 cmp ecx, 6
 jne .Lx394_50
 cmp edx, 6
 jne .Lx394_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx394_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx394_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx394_51
 jmp .Lx394_52
.Lx394_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx394_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx394_53
.Lx394_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx394_54
.Lx394_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx394_54
.Lx394_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx394_54:
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
 cmp eax, 99
 je xchain90_n214_α
 jmp xchain90_n261_α
 xchain90_n257_β:
 jmp xchain90_n214_α
# IR_LIT_STRING
 xchain90_n258_α:
 mov qword ptr [rbp + 3760], 1
 mov rax, qword ptr [rip + .Lx395_0]
 mov qword ptr [rbp + 3768], rax
 jmp xchain90_n262_α
.Lx395_0:
 .quad .Lx395_0_s
.Lx395_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n259_α:
 mov qword ptr [rbp + 3344], 1
 mov rax, qword ptr [rip + .Lx396_0]
 mov qword ptr [rbp + 3352], rax
 jmp xchain90_n263_α
.Lx396_0:
 .quad .Lx396_0_s
.Lx396_0_s:
 .string "."
 xchain90_n260_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2864] -> [zr+2832]
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2840], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2832]
 mov rsi, qword ptr [rip + .Lx397_2]
 jmp .Lx397_3
.Lx397_2:
 .quad .Lx397_2_s
.Lx397_2_s:
 .string "q"
.Lx397_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 cmp eax, 99
 je xchain90_n265_α
 jmp xchain90_n264_α
 xchain90_n260_β:
 jmp xchain90_n265_α
# IR_SUSPEND yield+resume
 xchain90_n261_α:
 lea rax, [rip + xchain90_n261_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n261_β:
 jmp xchain90_n214_α
 xchain90_n262_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3904] -> [zr+3840]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 3840], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 3848], rax
# marshal arg1 = producer-box slot [zr+3792] -> [zr+3856]
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 3856], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 3864], rax
# marshal arg2 = producer-box slot [zr+3760] -> [zr+3872]
 mov rax, qword ptr [rbp + 3760]
 mov qword ptr [rbp + 3872], rax
 mov rax, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 3880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3840]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n266_α
 xchain90_n262_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n263_α:
 mov qword ptr [rbp + 3232], 1
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain90_n267_α
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "q"
# IR_VAR_REF
 xchain90_n264_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain90_n268_α
 xchain90_n265_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2240]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2248], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2240]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n269_α
 xchain90_n265_β:
 jmp proc_connect$2F2_ω
 xchain90_n266_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4048] -> [zr+3984]
 mov rax, qword ptr [rbp + 4048]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 4056]
 mov qword ptr [rbp + 3992], rax
# marshal arg1 = producer-box slot [zr+3936] -> [zr+4000]
 mov rax, qword ptr [rbp + 3936]
 mov qword ptr [rbp + 4000], rax
 mov rax, qword ptr [rbp + 3944]
 mov qword ptr [rbp + 4008], rax
# marshal arg2 = producer-box slot [zr+3824] -> [zr+4016]
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 4016], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 4024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3984]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3968], rax
 mov qword ptr [rbp + 3976], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n270_α
 xchain90_n266_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n267_α:
 mov qword ptr [rbp + 3200], 1
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [rbp + 3208], rax
 jmp xchain90_n271_α
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n268_α:
 mov qword ptr [rbp + 2784], 1
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain90_n272_α
.Lx407_0:
 .quad .Lx407_0_s
.Lx407_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n269_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain90_n273_α
 xchain90_n270_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4192] -> [zr+4128]
 mov rax, qword ptr [rbp + 4192]
 mov qword ptr [rbp + 4128], rax
 mov rax, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 4136], rax
# marshal arg1 = producer-box slot [zr+4080] -> [zr+4144]
 mov rax, qword ptr [rbp + 4080]
 mov qword ptr [rbp + 4144], rax
 mov rax, qword ptr [rbp + 4088]
 mov qword ptr [rbp + 4152], rax
# marshal arg2 = producer-box slot [zr+3968] -> [zr+4160]
 mov rax, qword ptr [rbp + 3968]
 mov qword ptr [rbp + 4160], rax
 mov rax, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 4168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4128]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 cmp eax, 99
 je xchain90_n231_α
 jmp xchain90_n274_α
 xchain90_n270_β:
 jmp xchain90_n231_α
# IR_LIT_STRING
 xchain90_n271_α:
 mov qword ptr [rbp + 3088], 1
 mov rax, qword ptr [rip + .Lx411_0]
 mov qword ptr [rbp + 3096], rax
 jmp xchain90_n275_α
.Lx411_0:
 .quad .Lx411_0_s
.Lx411_0_s:
 .string "t"
# IR_LIT_STRING
 xchain90_n272_α:
 mov qword ptr [rbp + 2672], 1
 mov rax, qword ptr [rip + .Lx412_0]
 mov qword ptr [rbp + 2680], rax
 jmp xchain90_n276_α
.Lx412_0:
 .quad .Lx412_0_s
.Lx412_0_s:
 .string "p"
# IR_LIT_STRING
 xchain90_n273_α:
 mov qword ptr [rbp + 2192], 1
 mov rax, qword ptr [rip + .Lx413_0]
 mov qword ptr [rbp + 2200], rax
 jmp xchain90_n277_α
.Lx413_0:
 .quad .Lx413_0_s
.Lx413_0_s:
 .string "r"
 xchain90_n274_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3728] -> [zr+3696]
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 3696], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 3704], rax
# marshal arg1 = producer-box slot [zr+4112] -> [zr+3712]
 mov rax, qword ptr [rbp + 4112]
 mov qword ptr [rbp + 3712], rax
 mov rax, qword ptr [rbp + 4120]
 mov qword ptr [rbp + 3720], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 3696]
 lea r8, [rbp + 3696]
.Lx414_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx414_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx414_41
 cmp esi, 1
 jne .Lx414_55
 mov r8, rax
 jmp .Lx414_40
.Lx414_55:
 cmp esi, 2
 jne .Lx414_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx414_41
 mov r8, rax
 jmp .Lx414_40
.Lx414_56:
 cmp eax, 13
 jne .Lx414_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx414_41
 cmp rax, r8
 je .Lx414_41
 mov r8, rax
 jmp .Lx414_40
.Lx414_41:
 lea r9, [rbp + 3712]
.Lx414_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx414_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx414_43
 cmp esi, 1
 jne .Lx414_57
 mov r9, rax
 jmp .Lx414_42
.Lx414_57:
 cmp esi, 2
 jne .Lx414_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx414_43
 mov r9, rax
 jmp .Lx414_42
.Lx414_58:
 cmp eax, 13
 jne .Lx414_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx414_43
 cmp rax, r9
 je .Lx414_43
 mov r9, rax
 jmp .Lx414_42
.Lx414_43:
 cmp r8, r9
 je .Lx414_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx414_44
 cmp eax, 99
 je .Lx414_44
 cmp eax, 13
 jne .Lx414_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx414_44
 jmp .Lx414_45
.Lx414_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx414_53
 cmp eax, 99
 je .Lx414_53
 cmp eax, 13
 jne .Lx414_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx414_53
 jmp .Lx414_46
.Lx414_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx414_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx414_53
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
 jmp .Lx414_51
.Lx414_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx414_47
 cmp eax, 99
 je .Lx414_47
 cmp eax, 13
 jne .Lx414_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx414_47
 jmp .Lx414_48
.Lx414_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx414_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx414_53
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
 jmp .Lx414_51
.Lx414_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx414_49
 cmp edx, 14
 je .Lx414_53
 jmp .Lx414_52
.Lx414_49:
 cmp edx, 14
 je .Lx414_52
 cmp ecx, 7
 je .Lx414_53
 cmp edx, 7
 je .Lx414_53
 cmp ecx, 6
 jne .Lx414_50
 cmp edx, 6
 jne .Lx414_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx414_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx414_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx414_51
 jmp .Lx414_52
.Lx414_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx414_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx414_53
.Lx414_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx414_54
.Lx414_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx414_54
.Lx414_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx414_54:
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 cmp eax, 99
 je xchain90_n231_α
 jmp xchain90_n278_α
 xchain90_n274_β:
 jmp xchain90_n231_α
# IR_LIT_STRING
 xchain90_n275_α:
 mov qword ptr [rbp + 3056], 1
 mov rax, qword ptr [rip + .Lx415_0]
 mov qword ptr [rbp + 3064], rax
 jmp xchain90_n279_α
.Lx415_0:
 .quad .Lx415_0_s
.Lx415_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n276_α:
 mov qword ptr [rbp + 2640], 1
 mov rax, qword ptr [rip + .Lx416_0]
 mov qword ptr [rbp + 2648], rax
 jmp xchain90_n280_α
.Lx416_0:
 .quad .Lx416_0_s
.Lx416_0_s:
 .string "."
 xchain90_n277_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2160] -> [zr+2128]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2136], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2128]
 mov rsi, qword ptr [rip + .Lx417_2]
 jmp .Lx417_3
.Lx417_2:
 .quad .Lx417_2_s
.Lx417_2_s:
 .string "r"
.Lx417_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je xchain90_n282_α
 jmp xchain90_n281_α
 xchain90_n277_β:
 jmp xchain90_n282_α
# IR_SUSPEND yield+resume
 xchain90_n278_α:
 lea rax, [rip + xchain90_n278_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n278_β:
 jmp xchain90_n231_α
 xchain90_n279_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3200] -> [zr+3136]
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3144], rax
# marshal arg1 = producer-box slot [zr+3088] -> [zr+3152]
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3160], rax
# marshal arg2 = producer-box slot [zr+3056] -> [zr+3168]
 mov rax, qword ptr [rbp + 3056]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3064]
 mov qword ptr [rbp + 3176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3136]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n283_α
 xchain90_n279_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n280_α:
 mov qword ptr [rbp + 2528], 1
 mov rax, qword ptr [rip + .Lx421_0]
 mov qword ptr [rbp + 2536], rax
 jmp xchain90_n284_α
.Lx421_0:
 .quad .Lx421_0_s
.Lx421_0_s:
 .string "r"
# IR_VAR_REF
 xchain90_n281_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain90_n285_α
 xchain90_n282_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1536]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1544], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1536]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n286_α
 xchain90_n282_β:
 jmp proc_connect$2F2_ω
 xchain90_n283_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3344] -> [zr+3280]
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 3288], rax
# marshal arg1 = producer-box slot [zr+3232] -> [zr+3296]
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3304], rax
# marshal arg2 = producer-box slot [zr+3120] -> [zr+3312]
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3320], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3280]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n287_α
 xchain90_n283_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n284_α:
 mov qword ptr [rbp + 2496], 1
 mov rax, qword ptr [rip + .Lx426_0]
 mov qword ptr [rbp + 2504], rax
 jmp xchain90_n288_α
.Lx426_0:
 .quad .Lx426_0_s
.Lx426_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n285_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx427_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain90_n289_α
.Lx427_0:
 .quad .Lx427_0_s
.Lx427_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n286_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain90_n290_α
 xchain90_n287_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3488] -> [zr+3424]
 mov rax, qword ptr [rbp + 3488]
 mov qword ptr [rbp + 3424], rax
 mov rax, qword ptr [rbp + 3496]
 mov qword ptr [rbp + 3432], rax
# marshal arg1 = producer-box slot [zr+3376] -> [zr+3440]
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 3448], rax
# marshal arg2 = producer-box slot [zr+3264] -> [zr+3456]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3464], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3424]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 cmp eax, 99
 je xchain90_n248_α
 jmp xchain90_n291_α
 xchain90_n287_β:
 jmp xchain90_n248_α
# IR_LIT_STRING
 xchain90_n288_α:
 mov qword ptr [rbp + 2384], 1
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain90_n292_α
.Lx431_0:
 .quad .Lx431_0_s
.Lx431_0_s:
 .string "d"
# IR_LIT_STRING
 xchain90_n289_α:
 mov qword ptr [rbp + 1968], 1
 mov rax, qword ptr [rip + .Lx432_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain90_n293_α
.Lx432_0:
 .quad .Lx432_0_s
.Lx432_0_s:
 .string "q"
# IR_LIT_STRING
 xchain90_n290_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx433_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain90_n294_α
.Lx433_0:
 .quad .Lx433_0_s
.Lx433_0_s:
 .string "s"
 xchain90_n291_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3024] -> [zr+2992]
 mov rax, qword ptr [rbp + 3024]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3032]
 mov qword ptr [rbp + 3000], rax
# marshal arg1 = producer-box slot [zr+3408] -> [zr+3008]
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 3016], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2992]
 lea r8, [rbp + 2992]
.Lx434_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx434_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx434_41
 cmp esi, 1
 jne .Lx434_55
 mov r8, rax
 jmp .Lx434_40
.Lx434_55:
 cmp esi, 2
 jne .Lx434_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx434_41
 mov r8, rax
 jmp .Lx434_40
.Lx434_56:
 cmp eax, 13
 jne .Lx434_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx434_41
 cmp rax, r8
 je .Lx434_41
 mov r8, rax
 jmp .Lx434_40
.Lx434_41:
 lea r9, [rbp + 3008]
.Lx434_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx434_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx434_43
 cmp esi, 1
 jne .Lx434_57
 mov r9, rax
 jmp .Lx434_42
.Lx434_57:
 cmp esi, 2
 jne .Lx434_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx434_43
 mov r9, rax
 jmp .Lx434_42
.Lx434_58:
 cmp eax, 13
 jne .Lx434_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx434_43
 cmp rax, r9
 je .Lx434_43
 mov r9, rax
 jmp .Lx434_42
.Lx434_43:
 cmp r8, r9
 je .Lx434_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx434_44
 cmp eax, 99
 je .Lx434_44
 cmp eax, 13
 jne .Lx434_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx434_44
 jmp .Lx434_45
.Lx434_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx434_53
 cmp eax, 99
 je .Lx434_53
 cmp eax, 13
 jne .Lx434_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx434_53
 jmp .Lx434_46
.Lx434_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx434_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx434_53
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
 jmp .Lx434_51
.Lx434_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx434_47
 cmp eax, 99
 je .Lx434_47
 cmp eax, 13
 jne .Lx434_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx434_47
 jmp .Lx434_48
.Lx434_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx434_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx434_53
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
 jmp .Lx434_51
.Lx434_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx434_49
 cmp edx, 14
 je .Lx434_53
 jmp .Lx434_52
.Lx434_49:
 cmp edx, 14
 je .Lx434_52
 cmp ecx, 7
 je .Lx434_53
 cmp edx, 7
 je .Lx434_53
 cmp ecx, 6
 jne .Lx434_50
 cmp edx, 6
 jne .Lx434_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx434_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx434_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx434_51
 jmp .Lx434_52
.Lx434_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx434_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx434_53
.Lx434_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx434_54
.Lx434_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx434_54
.Lx434_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx434_54:
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 cmp eax, 99
 je xchain90_n248_α
 jmp xchain90_n295_α
 xchain90_n291_β:
 jmp xchain90_n248_α
# IR_LIT_STRING
 xchain90_n292_α:
 mov qword ptr [rbp + 2352], 1
 mov rax, qword ptr [rip + .Lx435_0]
 mov qword ptr [rbp + 2360], rax
 jmp xchain90_n296_α
.Lx435_0:
 .quad .Lx435_0_s
.Lx435_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n293_α:
 mov qword ptr [rbp + 1936], 1
 mov rax, qword ptr [rip + .Lx436_0]
 mov qword ptr [rbp + 1944], rax
 jmp xchain90_n297_α
.Lx436_0:
 .quad .Lx436_0_s
.Lx436_0_s:
 .string "."
 xchain90_n294_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1424]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1432], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1424]
 mov rsi, qword ptr [rip + .Lx437_2]
 jmp .Lx437_3
.Lx437_2:
 .quad .Lx437_2_s
.Lx437_2_s:
 .string "s"
.Lx437_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain90_n299_α
 jmp xchain90_n298_α
 xchain90_n294_β:
 jmp xchain90_n299_α
# IR_SUSPEND yield+resume
 xchain90_n295_α:
 lea rax, [rip + xchain90_n295_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n295_β:
 jmp xchain90_n248_α
 xchain90_n296_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2496] -> [zr+2432]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2440], rax
# marshal arg1 = producer-box slot [zr+2384] -> [zr+2448]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2456], rax
# marshal arg2 = producer-box slot [zr+2352] -> [zr+2464]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2432]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n300_α
 xchain90_n296_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n297_α:
 mov qword ptr [rbp + 1824], 1
 mov rax, qword ptr [rip + .Lx441_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain90_n301_α
.Lx441_0:
 .quad .Lx441_0_s
.Lx441_0_s:
 .string "s"
# IR_VAR_REF
 xchain90_n298_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain90_n302_α
 xchain90_n299_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+832]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 832]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n303_α
 xchain90_n299_β:
 jmp proc_connect$2F2_ω
 xchain90_n300_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2640] -> [zr+2576]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2584], rax
# marshal arg1 = producer-box slot [zr+2528] -> [zr+2592]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2600], rax
# marshal arg2 = producer-box slot [zr+2416] -> [zr+2608]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2576]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n304_α
 xchain90_n300_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n301_α:
 mov qword ptr [rbp + 1792], 1
 mov rax, qword ptr [rip + .Lx446_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain90_n305_α
.Lx446_0:
 .quad .Lx446_0_s
.Lx446_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n302_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx447_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain90_n306_α
.Lx447_0:
 .quad .Lx447_0_s
.Lx447_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n303_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain90_n307_α
 xchain90_n304_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2784] -> [zr+2720]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2728], rax
# marshal arg1 = producer-box slot [zr+2672] -> [zr+2736]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2744], rax
# marshal arg2 = producer-box slot [zr+2560] -> [zr+2752]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2720]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 cmp eax, 99
 je xchain90_n265_α
 jmp xchain90_n308_α
 xchain90_n304_β:
 jmp xchain90_n265_α
# IR_LIT_STRING
 xchain90_n305_α:
 mov qword ptr [rbp + 1680], 1
 mov rax, qword ptr [rip + .Lx451_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain90_n309_α
.Lx451_0:
 .quad .Lx451_0_s
.Lx451_0_s:
 .string "f"
# IR_LIT_STRING
 xchain90_n306_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx452_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain90_n310_α
.Lx452_0:
 .quad .Lx452_0_s
.Lx452_0_s:
 .string "r"
# IR_LIT_STRING
 xchain90_n307_α:
 mov qword ptr [rbp + 784], 1
 mov rax, qword ptr [rip + .Lx453_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain90_n311_α
.Lx453_0:
 .quad .Lx453_0_s
.Lx453_0_s:
 .string "t"
 xchain90_n308_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2320] -> [zr+2288]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2296], rax
# marshal arg1 = producer-box slot [zr+2704] -> [zr+2304]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2312], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2288]
 lea r8, [rbp + 2288]
.Lx454_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx454_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx454_41
 cmp esi, 1
 jne .Lx454_55
 mov r8, rax
 jmp .Lx454_40
.Lx454_55:
 cmp esi, 2
 jne .Lx454_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx454_41
 mov r8, rax
 jmp .Lx454_40
.Lx454_56:
 cmp eax, 13
 jne .Lx454_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx454_41
 cmp rax, r8
 je .Lx454_41
 mov r8, rax
 jmp .Lx454_40
.Lx454_41:
 lea r9, [rbp + 2304]
.Lx454_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx454_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx454_43
 cmp esi, 1
 jne .Lx454_57
 mov r9, rax
 jmp .Lx454_42
.Lx454_57:
 cmp esi, 2
 jne .Lx454_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx454_43
 mov r9, rax
 jmp .Lx454_42
.Lx454_58:
 cmp eax, 13
 jne .Lx454_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx454_43
 cmp rax, r9
 je .Lx454_43
 mov r9, rax
 jmp .Lx454_42
.Lx454_43:
 cmp r8, r9
 je .Lx454_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx454_44
 cmp eax, 99
 je .Lx454_44
 cmp eax, 13
 jne .Lx454_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx454_44
 jmp .Lx454_45
.Lx454_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx454_53
 cmp eax, 99
 je .Lx454_53
 cmp eax, 13
 jne .Lx454_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx454_53
 jmp .Lx454_46
.Lx454_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx454_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx454_53
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
 jmp .Lx454_51
.Lx454_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx454_47
 cmp eax, 99
 je .Lx454_47
 cmp eax, 13
 jne .Lx454_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx454_47
 jmp .Lx454_48
.Lx454_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx454_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx454_53
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
 jmp .Lx454_51
.Lx454_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx454_49
 cmp edx, 14
 je .Lx454_53
 jmp .Lx454_52
.Lx454_49:
 cmp edx, 14
 je .Lx454_52
 cmp ecx, 7
 je .Lx454_53
 cmp edx, 7
 je .Lx454_53
 cmp ecx, 6
 jne .Lx454_50
 cmp edx, 6
 jne .Lx454_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx454_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx454_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx454_51
 jmp .Lx454_52
.Lx454_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx454_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx454_53
.Lx454_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx454_54
.Lx454_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx454_54
.Lx454_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx454_54:
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain90_n265_α
 jmp xchain90_n312_α
 xchain90_n308_β:
 jmp xchain90_n265_α
# IR_LIT_STRING
 xchain90_n309_α:
 mov qword ptr [rbp + 1648], 1
 mov rax, qword ptr [rip + .Lx455_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain90_n313_α
.Lx455_0:
 .quad .Lx455_0_s
.Lx455_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n310_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx456_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain90_n314_α
.Lx456_0:
 .quad .Lx456_0_s
.Lx456_0_s:
 .string "."
 xchain90_n311_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 728], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 720]
 mov rsi, qword ptr [rip + .Lx457_2]
 jmp .Lx457_3
.Lx457_2:
 .quad .Lx457_2_s
.Lx457_2_s:
 .string "t"
.Lx457_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain90_n316_α
 jmp xchain90_n315_α
 xchain90_n311_β:
 jmp xchain90_n316_α
# IR_SUSPEND yield+resume
 xchain90_n312_α:
 lea rax, [rip + xchain90_n312_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n312_β:
 jmp xchain90_n265_α
 xchain90_n313_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1728]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1736], rax
# marshal arg1 = producer-box slot [zr+1680] -> [zr+1744]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1752], rax
# marshal arg2 = producer-box slot [zr+1648] -> [zr+1760]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1728]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n317_α
 xchain90_n313_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n314_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx461_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain90_n318_α
.Lx461_0:
 .quad .Lx461_0_s
.Lx461_0_s:
 .string "t"
# IR_VAR_REF
 xchain90_n315_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain90_n319_α
 xchain90_n316_α:
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
 je proc_connect$2F2_ω
 jmp proc_connect$2F2_ω
 xchain90_n316_β:
 jmp proc_connect$2F2_ω
 xchain90_n317_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1936] -> [zr+1872]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1880], rax
# marshal arg1 = producer-box slot [zr+1824] -> [zr+1888]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1896], rax
# marshal arg2 = producer-box slot [zr+1712] -> [zr+1904]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1872]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n320_α
 xchain90_n317_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n318_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx466_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain90_n321_α
.Lx466_0:
 .quad .Lx466_0_s
.Lx466_0_s:
 .string "."
# IR_LIT_STRING
 xchain90_n319_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx467_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain90_n322_α
.Lx467_0:
 .quad .Lx467_0_s
.Lx467_0_s:
 .string "."
 xchain90_n320_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2016]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2024], rax
# marshal arg1 = producer-box slot [zr+1968] -> [zr+2032]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 2040], rax
# marshal arg2 = producer-box slot [zr+1856] -> [zr+2048]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 2056], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2016]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 cmp eax, 99
 je xchain90_n282_α
 jmp xchain90_n323_α
 xchain90_n320_β:
 jmp xchain90_n282_α
# IR_LIT_STRING
 xchain90_n321_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx469_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain90_n324_α
.Lx469_0:
 .quad .Lx469_0_s
.Lx469_0_s:
 .string "h"
# IR_LIT_STRING
 xchain90_n322_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx470_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain90_n325_α
.Lx470_0:
 .quad .Lx470_0_s
.Lx470_0_s:
 .string "p"
 xchain90_n323_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1584]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1592], rax
# marshal arg1 = producer-box slot [zr+2000] -> [zr+1600]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1608], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1584]
 lea r8, [rbp + 1584]
.Lx471_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx471_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx471_41
 cmp esi, 1
 jne .Lx471_55
 mov r8, rax
 jmp .Lx471_40
.Lx471_55:
 cmp esi, 2
 jne .Lx471_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx471_41
 mov r8, rax
 jmp .Lx471_40
.Lx471_56:
 cmp eax, 13
 jne .Lx471_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx471_41
 cmp rax, r8
 je .Lx471_41
 mov r8, rax
 jmp .Lx471_40
.Lx471_41:
 lea r9, [rbp + 1600]
.Lx471_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx471_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx471_43
 cmp esi, 1
 jne .Lx471_57
 mov r9, rax
 jmp .Lx471_42
.Lx471_57:
 cmp esi, 2
 jne .Lx471_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx471_43
 mov r9, rax
 jmp .Lx471_42
.Lx471_58:
 cmp eax, 13
 jne .Lx471_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx471_43
 cmp rax, r9
 je .Lx471_43
 mov r9, rax
 jmp .Lx471_42
.Lx471_43:
 cmp r8, r9
 je .Lx471_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx471_44
 cmp eax, 99
 je .Lx471_44
 cmp eax, 13
 jne .Lx471_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx471_44
 jmp .Lx471_45
.Lx471_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx471_53
 cmp eax, 99
 je .Lx471_53
 cmp eax, 13
 jne .Lx471_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx471_53
 jmp .Lx471_46
.Lx471_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx471_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx471_53
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
 jmp .Lx471_51
.Lx471_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx471_47
 cmp eax, 99
 je .Lx471_47
 cmp eax, 13
 jne .Lx471_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx471_47
 jmp .Lx471_48
.Lx471_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx471_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx471_53
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
 jmp .Lx471_51
.Lx471_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx471_49
 cmp edx, 14
 je .Lx471_53
 jmp .Lx471_52
.Lx471_49:
 cmp edx, 14
 je .Lx471_52
 cmp ecx, 7
 je .Lx471_53
 cmp edx, 7
 je .Lx471_53
 cmp ecx, 6
 jne .Lx471_50
 cmp edx, 6
 jne .Lx471_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx471_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx471_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx471_51
 jmp .Lx471_52
.Lx471_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx471_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx471_53
.Lx471_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx471_54
.Lx471_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx471_54
.Lx471_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx471_54:
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je xchain90_n282_α
 jmp xchain90_n326_α
 xchain90_n323_β:
 jmp xchain90_n282_α
# IR_LIT_STRING
 xchain90_n324_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx472_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain90_n327_α
.Lx472_0:
 .quad .Lx472_0_s
.Lx472_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain90_n325_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx473_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain90_n328_α
.Lx473_0:
 .quad .Lx473_0_s
.Lx473_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain90_n326_α:
 lea rax, [rip + xchain90_n326_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n326_β:
 jmp xchain90_n282_α
 xchain90_n327_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1024]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1032], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+1040]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 1048], rax
# marshal arg2 = producer-box slot [zr+944] -> [zr+1056]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1024]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n329_α
 xchain90_n327_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n328_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx477_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain90_n330_α
.Lx477_0:
 .quad .Lx477_0_s
.Lx477_0_s:
 .string "s"
 xchain90_n329_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1168]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1176], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1184]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1192], rax
# marshal arg2 = producer-box slot [zr+1008] -> [zr+1200]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 1208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1168]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n331_α
 xchain90_n329_β:
 jmp proc_connect$2F2_ω
# IR_LIT_STRING
 xchain90_n330_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx479_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain90_n332_α
.Lx479_0:
 .quad .Lx479_0_s
.Lx479_0_s:
 .string "."
 xchain90_n331_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1312]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1320], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1328]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1336], rax
# marshal arg2 = producer-box slot [zr+1152] -> [zr+1344]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1312]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je xchain90_n299_α
 jmp xchain90_n333_α
 xchain90_n331_β:
 jmp xchain90_n299_α
# IR_LIT_STRING
 xchain90_n332_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx481_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain90_n334_α
.Lx481_0:
 .quad .Lx481_0_s
.Lx481_0_s:
 .string "j"
 xchain90_n333_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+880]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+896]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 904], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 880]
 lea r8, [rbp + 880]
.Lx482_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx482_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx482_41
 cmp esi, 1
 jne .Lx482_55
 mov r8, rax
 jmp .Lx482_40
.Lx482_55:
 cmp esi, 2
 jne .Lx482_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx482_41
 mov r8, rax
 jmp .Lx482_40
.Lx482_56:
 cmp eax, 13
 jne .Lx482_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx482_41
 cmp rax, r8
 je .Lx482_41
 mov r8, rax
 jmp .Lx482_40
.Lx482_41:
 lea r9, [rbp + 896]
.Lx482_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx482_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx482_43
 cmp esi, 1
 jne .Lx482_57
 mov r9, rax
 jmp .Lx482_42
.Lx482_57:
 cmp esi, 2
 jne .Lx482_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx482_43
 mov r9, rax
 jmp .Lx482_42
.Lx482_58:
 cmp eax, 13
 jne .Lx482_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx482_43
 cmp rax, r9
 je .Lx482_43
 mov r9, rax
 jmp .Lx482_42
.Lx482_43:
 cmp r8, r9
 je .Lx482_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx482_44
 cmp eax, 99
 je .Lx482_44
 cmp eax, 13
 jne .Lx482_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx482_44
 jmp .Lx482_45
.Lx482_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx482_53
 cmp eax, 99
 je .Lx482_53
 cmp eax, 13
 jne .Lx482_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx482_53
 jmp .Lx482_46
.Lx482_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx482_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx482_53
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
 jmp .Lx482_51
.Lx482_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx482_47
 cmp eax, 99
 je .Lx482_47
 cmp eax, 13
 jne .Lx482_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx482_47
 jmp .Lx482_48
.Lx482_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx482_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx482_53
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
 jmp .Lx482_51
.Lx482_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx482_49
 cmp edx, 14
 je .Lx482_53
 jmp .Lx482_52
.Lx482_49:
 cmp edx, 14
 je .Lx482_52
 cmp ecx, 7
 je .Lx482_53
 cmp edx, 7
 je .Lx482_53
 cmp ecx, 6
 jne .Lx482_50
 cmp edx, 6
 jne .Lx482_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx482_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx482_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx482_51
 jmp .Lx482_52
.Lx482_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx482_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx482_53
.Lx482_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx482_54
.Lx482_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx482_54
.Lx482_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx482_54:
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain90_n299_α
 jmp xchain90_n335_α
 xchain90_n333_β:
 jmp xchain90_n299_α
# IR_LIT_STRING
 xchain90_n334_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx483_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain90_n336_α
.Lx483_0:
 .quad .Lx483_0_s
.Lx483_0_s:
 .string "[]"
# IR_SUSPEND yield+resume
 xchain90_n335_α:
 lea rax, [rip + xchain90_n335_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n335_β:
 jmp xchain90_n299_α
 xchain90_n336_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+320]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+336]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 344], rax
# marshal arg2 = producer-box slot [zr+240] -> [zr+352]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n337_α
 xchain90_n336_β:
 jmp proc_connect$2F2_ω
 xchain90_n337_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+464]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 472], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+480]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 488], rax
# marshal arg2 = producer-box slot [zr+304] -> [zr+496]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je proc_connect$2F2_ω
 jmp xchain90_n338_α
 xchain90_n337_β:
 jmp proc_connect$2F2_ω
 xchain90_n338_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+608]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 616], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+624]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 632], rax
# marshal arg2 = producer-box slot [zr+448] -> [zr+640]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 608]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain90_n316_α
 jmp xchain90_n339_α
 xchain90_n338_β:
 jmp xchain90_n316_α
 xchain90_n339_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+192]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 200], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 176]
 lea r8, [rbp + 176]
.Lx489_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx489_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx489_41
 cmp esi, 1
 jne .Lx489_55
 mov r8, rax
 jmp .Lx489_40
.Lx489_55:
 cmp esi, 2
 jne .Lx489_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx489_41
 mov r8, rax
 jmp .Lx489_40
.Lx489_56:
 cmp eax, 13
 jne .Lx489_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx489_41
 cmp rax, r8
 je .Lx489_41
 mov r8, rax
 jmp .Lx489_40
.Lx489_41:
 lea r9, [rbp + 192]
.Lx489_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx489_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx489_43
 cmp esi, 1
 jne .Lx489_57
 mov r9, rax
 jmp .Lx489_42
.Lx489_57:
 cmp esi, 2
 jne .Lx489_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx489_43
 mov r9, rax
 jmp .Lx489_42
.Lx489_58:
 cmp eax, 13
 jne .Lx489_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx489_43
 cmp rax, r9
 je .Lx489_43
 mov r9, rax
 jmp .Lx489_42
.Lx489_43:
 cmp r8, r9
 je .Lx489_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx489_44
 cmp eax, 99
 je .Lx489_44
 cmp eax, 13
 jne .Lx489_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx489_44
 jmp .Lx489_45
.Lx489_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx489_53
 cmp eax, 99
 je .Lx489_53
 cmp eax, 13
 jne .Lx489_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx489_53
 jmp .Lx489_46
.Lx489_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx489_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx489_53
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
 jmp .Lx489_51
.Lx489_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx489_47
 cmp eax, 99
 je .Lx489_47
 cmp eax, 13
 jne .Lx489_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx489_47
 jmp .Lx489_48
.Lx489_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx489_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx489_53
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
 jmp .Lx489_51
.Lx489_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx489_49
 cmp edx, 14
 je .Lx489_53
 jmp .Lx489_52
.Lx489_49:
 cmp edx, 14
 je .Lx489_52
 cmp ecx, 7
 je .Lx489_53
 cmp edx, 7
 je .Lx489_53
 cmp ecx, 6
 jne .Lx489_50
 cmp edx, 6
 jne .Lx489_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx489_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx489_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx489_51
 jmp .Lx489_52
.Lx489_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx489_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx489_53
.Lx489_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx489_54
.Lx489_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx489_54
.Lx489_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx489_54:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain90_n316_α
 jmp xchain90_n340_α
 xchain90_n339_β:
 jmp xchain90_n316_α
# IR_SUSPEND yield+resume
 xchain90_n340_α:
 lea rax, [rip + xchain90_n340_β]
 mov qword ptr [rbp + 14192], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2F2_γ
 xchain90_n340_β:
 jmp xchain90_n316_α
proc_connect$2F2_res:
add rsp, 8
pop rbp
proc_connect$2F2_β:
jmp qword ptr [rbp + 14192]
proc_connect$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_connect$2F2_res]
push rax
mov rax, [rbp + 14232]
mov rbp, [rbp + 14248]
jmp rax
proc_connect$2F2_ω:
mov rax, [rbp + 14240]
lea rsp, [rbp + 14256]
mov rbp, [rbp + 14248]
jmp rax
  .globl proc_cycle_ham$2F2_α
proc_cycle_ham$2F2_α:
#=======================================================================================================================
    .global proc_cycle_ham$2F2_α
    .global proc_cycle_ham$2F2_β
    .global proc_cycle_ham$2F2_γ
    .global proc_cycle_ham$2F2_ω
  sub rsp, 1456
  mov [rsp + 1432], rcx
  mov [rsp + 1440], rdx
  mov [rsp + 1448], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1352], rsp
  mov rdi, rsp
  mov esi, 1328
  mov edx, 1424
  call rt_jmp_frame_lexprep2@PLT
proc_cycle_ham$2F2_α_body:
lea rax, [rip + xchain492_n28_β]
mov qword ptr [rbp + 1328], rax
 xchain492_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_cycle_ham$2F2_ω
 jmp xchain492_n1_α
 xchain492_n0_β:
 jmp proc_cycle_ham$2F2_ω
# IR_VAR_REF
 xchain492_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain492_n2_α
# IR_VAR_REF
 xchain492_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1376]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain492_n3_α
# IR_VAR_REF
 xchain492_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1392]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain492_n4_α
 xchain492_n4_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1216]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1232]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1240], rax
# marshal arg2 = producer-box slot [zr+1296] -> [zr+1248]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1216]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain492_n6_α
 jmp xchain492_n5_α
 xchain492_n4_β:
 jmp xchain492_n6_α
# IR_VAR_REF
 xchain492_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain492_n7_α
 xchain492_n6_α:
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
 je proc_cycle_ham$2F2_ω
 jmp proc_cycle_ham$2F2_ω
 xchain492_n6_β:
 jmp proc_cycle_ham$2F2_ω
# IR_LIT_STRING
 xchain492_n7_α:
 mov qword ptr [rbp + 1136], 1
 mov rax, qword ptr [rip + .Lx504_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain492_n8_α
.Lx504_0:
 .quad .Lx504_0_s
.Lx504_0_s:
 .string "."
# IR_VAR_REF
 xchain492_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1376]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain492_n9_α
# IR_LIT_STRING
 xchain492_n9_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx507_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain492_n10_α
.Lx507_0:
 .quad .Lx507_0_s
.Lx507_0_s:
 .string "."
# IR_VAR_REF
 xchain492_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain492_n11_α
# IR_VAR_REF
 xchain492_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain492_n12_α
 xchain492_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+928]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 936], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+944]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 952], rax
# marshal arg2 = producer-box slot [zr+848] -> [zr+960]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 928]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je proc_cycle_ham$2F2_ω
 jmp xchain492_n13_α
 xchain492_n12_β:
 jmp proc_cycle_ham$2F2_ω
 xchain492_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1072]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+1088]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1096], rax
# marshal arg2 = producer-box slot [zr+912] -> [zr+1104]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 1112], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain492_n6_α
 jmp xchain492_n14_α
 xchain492_n13_β:
 jmp xchain492_n6_α
 xchain492_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+784]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+800]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 808], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 784]
 lea r8, [rbp + 784]
.Lx514_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx514_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx514_41
 cmp esi, 1
 jne .Lx514_55
 mov r8, rax
 jmp .Lx514_40
.Lx514_55:
 cmp esi, 2
 jne .Lx514_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx514_41
 mov r8, rax
 jmp .Lx514_40
.Lx514_56:
 cmp eax, 13
 jne .Lx514_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx514_41
 cmp rax, r8
 je .Lx514_41
 mov r8, rax
 jmp .Lx514_40
.Lx514_41:
 lea r9, [rbp + 800]
.Lx514_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx514_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx514_43
 cmp esi, 1
 jne .Lx514_57
 mov r9, rax
 jmp .Lx514_42
.Lx514_57:
 cmp esi, 2
 jne .Lx514_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx514_43
 mov r9, rax
 jmp .Lx514_42
.Lx514_58:
 cmp eax, 13
 jne .Lx514_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx514_43
 cmp rax, r9
 je .Lx514_43
 mov r9, rax
 jmp .Lx514_42
.Lx514_43:
 cmp r8, r9
 je .Lx514_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx514_44
 cmp eax, 99
 je .Lx514_44
 cmp eax, 13
 jne .Lx514_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx514_44
 jmp .Lx514_45
.Lx514_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx514_53
 cmp eax, 99
 je .Lx514_53
 cmp eax, 13
 jne .Lx514_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx514_53
 jmp .Lx514_46
.Lx514_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx514_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx514_53
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
 jmp .Lx514_51
.Lx514_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx514_47
 cmp eax, 99
 je .Lx514_47
 cmp eax, 13
 jne .Lx514_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx514_47
 jmp .Lx514_48
.Lx514_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx514_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx514_53
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
 jmp .Lx514_51
.Lx514_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx514_49
 cmp edx, 14
 je .Lx514_53
 jmp .Lx514_52
.Lx514_49:
 cmp edx, 14
 je .Lx514_52
 cmp ecx, 7
 je .Lx514_53
 cmp edx, 7
 je .Lx514_53
 cmp ecx, 6
 jne .Lx514_50
 cmp edx, 6
 jne .Lx514_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx514_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx514_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx514_51
 jmp .Lx514_52
.Lx514_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx514_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx514_53
.Lx514_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx514_54
.Lx514_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx514_54
.Lx514_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx514_54:
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain492_n6_α
 jmp xchain492_n15_α
 xchain492_n14_β:
 jmp xchain492_n6_α
# IR_LIT_STRING
 xchain492_n15_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx515_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain492_n16_α
.Lx515_0:
 .quad .Lx515_0_s
.Lx515_0_s:
 .string "."
# IR_VAR_REF
 xchain492_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1376]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain492_n17_α
# IR_VAR_REF
 xchain492_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1392]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain492_n18_α
 xchain492_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+464]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 472], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+480]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 488], rax
# marshal arg2 = producer-box slot [zr+384] -> [zr+496]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain492_n6_α
 jmp xchain492_n19_α
 xchain492_n18_β:
 jmp xchain492_n6_α
# IR_LIT_STRING
 xchain492_n19_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx521_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain492_n20_α
.Lx521_0:
 .quad .Lx521_0_s
.Lx521_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain492_n20_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx522_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain492_n21_α
.Lx522_0:
 .quad .Lx522_0_s
.Lx522_0_s:
 .string "."
# IR_VAR_REF
 xchain492_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain492_n22_α
# IR_VAR_REF
 xchain492_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1408]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain492_n23_α
 xchain492_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+688]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 696], rax
# marshal arg2 = producer-box slot [zr+592] -> [zr+704]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain492_n6_α
 jmp xchain492_n24_α
 xchain492_n23_β:
 jmp xchain492_n6_α
 xchain492_n24_α:
 mov qword ptr [rbp + 352], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx529_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx529_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx529_3]
 lea rdx, [rip + .Lx529_4]
 jmp rax
.Lx529_3:
 mov qword ptr [rbp + 360], rsp
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx529_5
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx529_2
.Lx529_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx529_2
.Lx529_4:
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx529_6
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx529_2
.Lx529_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx529_2
.Lx529_1:
 call rt_faildescr@PLT
.Lx529_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain492_n6_α
 jmp xchain492_n25_α
 xchain492_n24_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 360]
 jmp qword ptr [rsp]
.Lx529_0:
 .quad .Lx529_0_s
.Lx529_0_s:
 .string "chain_ham/3"
# IR_VAR_REF
 xchain492_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain492_n26_α
# IR_VAR_REF
 xchain492_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1376]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain492_n27_α
 xchain492_n27_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx535_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx535_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx535_3]
 lea rdx, [rip + .Lx535_4]
 jmp rax
.Lx535_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx535_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx535_2
.Lx535_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx535_2
.Lx535_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx535_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx535_2
.Lx535_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx535_2
.Lx535_1:
 call rt_faildescr@PLT
.Lx535_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain492_n24_β
 jmp xchain492_n28_α
 xchain492_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx535_0:
 .quad .Lx535_0_s
.Lx535_0_s:
 .string "edge/2"
# IR_SUSPEND yield+resume
 xchain492_n28_α:
 lea rax, [rip + xchain492_n28_β]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_cycle_ham$2F2_γ
 xchain492_n28_β:
 jmp xchain492_n27_β
proc_cycle_ham$2F2_res:
add rsp, 8
pop rbp
proc_cycle_ham$2F2_β:
jmp qword ptr [rbp + 1328]
proc_cycle_ham$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_cycle_ham$2F2_res]
push rax
mov rax, [rbp + 1432]
mov rbp, [rbp + 1448]
jmp rax
proc_cycle_ham$2F2_ω:
mov rax, [rbp + 1440]
lea rsp, [rbp + 1456]
mov rbp, [rbp + 1448]
jmp rax
  .globl proc_ham1$2F1_α
proc_ham1$2F1_α:
#=======================================================================================================================
    .global proc_ham1$2F1_α
    .global proc_ham1$2F1_β
    .global proc_ham1$2F1_γ
    .global proc_ham1$2F1_ω
  sub rsp, 3344
  mov [rsp + 3320], rcx
  mov [rsp + 3328], rdx
  mov [rsp + 3336], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3288], rsp
  mov rdi, rsp
  mov esi, 3264
  mov edx, 3312
  call rt_jmp_frame_lexprep2@PLT
proc_ham1$2F1_α_body:
lea rax, [rip + xchain538_n68_β]
mov qword ptr [rbp + 3264], rax
 xchain538_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n1_α
 xchain538_n0_β:
 jmp proc_ham1$2F1_ω
# IR_VAR_REF
 xchain538_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain538_n2_α
# IR_VAR_REF
 xchain538_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3296]
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 jmp xchain538_n3_α
 xchain538_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3200] -> [zr+3168]
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3176], rax
# marshal arg1 = producer-box slot [zr+3232] -> [zr+3184]
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3192], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 3168]
 lea r8, [rbp + 3168]
.Lx544_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx544_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx544_41
 cmp esi, 1
 jne .Lx544_55
 mov r8, rax
 jmp .Lx544_40
.Lx544_55:
 cmp esi, 2
 jne .Lx544_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx544_41
 mov r8, rax
 jmp .Lx544_40
.Lx544_56:
 cmp eax, 13
 jne .Lx544_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx544_41
 cmp rax, r8
 je .Lx544_41
 mov r8, rax
 jmp .Lx544_40
.Lx544_41:
 lea r9, [rbp + 3184]
.Lx544_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx544_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx544_43
 cmp esi, 1
 jne .Lx544_57
 mov r9, rax
 jmp .Lx544_42
.Lx544_57:
 cmp esi, 2
 jne .Lx544_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx544_43
 mov r9, rax
 jmp .Lx544_42
.Lx544_58:
 cmp eax, 13
 jne .Lx544_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx544_43
 cmp rax, r9
 je .Lx544_43
 mov r9, rax
 jmp .Lx544_42
.Lx544_43:
 cmp r8, r9
 je .Lx544_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx544_44
 cmp eax, 99
 je .Lx544_44
 cmp eax, 13
 jne .Lx544_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx544_44
 jmp .Lx544_45
.Lx544_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx544_53
 cmp eax, 99
 je .Lx544_53
 cmp eax, 13
 jne .Lx544_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx544_53
 jmp .Lx544_46
.Lx544_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx544_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx544_53
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
 jmp .Lx544_51
.Lx544_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx544_47
 cmp eax, 99
 je .Lx544_47
 cmp eax, 13
 jne .Lx544_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx544_47
 jmp .Lx544_48
.Lx544_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx544_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx544_53
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
 jmp .Lx544_51
.Lx544_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx544_49
 cmp edx, 14
 je .Lx544_53
 jmp .Lx544_52
.Lx544_49:
 cmp edx, 14
 je .Lx544_52
 cmp ecx, 7
 je .Lx544_53
 cmp edx, 7
 je .Lx544_53
 cmp ecx, 6
 jne .Lx544_50
 cmp edx, 6
 jne .Lx544_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx544_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx544_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx544_51
 jmp .Lx544_52
.Lx544_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx544_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx544_53
.Lx544_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx544_54
.Lx544_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx544_54
.Lx544_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx544_54:
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je xchain538_n5_α
 jmp xchain538_n4_α
 xchain538_n3_β:
 jmp xchain538_n5_α
# IR_LIT_STRING
 xchain538_n4_α:
 mov qword ptr [rbp + 3088], 1
 mov rax, qword ptr [rip + .Lx545_0]
 mov qword ptr [rbp + 3096], rax
 jmp xchain538_n6_α
.Lx545_0:
 .quad .Lx545_0_s
.Lx545_0_s:
 .string "."
 xchain538_n5_α:
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
 je proc_ham1$2F1_ω
 jmp proc_ham1$2F1_ω
 xchain538_n5_β:
 jmp proc_ham1$2F1_ω
# IR_LIT_STRING
 xchain538_n6_α:
 mov qword ptr [rbp + 2976], 1
 mov rax, qword ptr [rip + .Lx547_0]
 mov qword ptr [rbp + 2984], rax
 jmp xchain538_n7_α
.Lx547_0:
 .quad .Lx547_0_s
.Lx547_0_s:
 .string "a"
# IR_LIT_STRING
 xchain538_n7_α:
 mov qword ptr [rbp + 2944], 1
 mov rax, qword ptr [rip + .Lx548_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain538_n8_α
.Lx548_0:
 .quad .Lx548_0_s
.Lx548_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n8_α:
 mov qword ptr [rbp + 2832], 1
 mov rax, qword ptr [rip + .Lx549_0]
 mov qword ptr [rbp + 2840], rax
 jmp xchain538_n9_α
.Lx549_0:
 .quad .Lx549_0_s
.Lx549_0_s:
 .string "b"
# IR_LIT_STRING
 xchain538_n9_α:
 mov qword ptr [rbp + 2800], 1
 mov rax, qword ptr [rip + .Lx550_0]
 mov qword ptr [rbp + 2808], rax
 jmp xchain538_n10_α
.Lx550_0:
 .quad .Lx550_0_s
.Lx550_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n10_α:
 mov qword ptr [rbp + 2688], 1
 mov rax, qword ptr [rip + .Lx551_0]
 mov qword ptr [rbp + 2696], rax
 jmp xchain538_n11_α
.Lx551_0:
 .quad .Lx551_0_s
.Lx551_0_s:
 .string "c"
# IR_LIT_STRING
 xchain538_n11_α:
 mov qword ptr [rbp + 2656], 1
 mov rax, qword ptr [rip + .Lx552_0]
 mov qword ptr [rbp + 2664], rax
 jmp xchain538_n12_α
.Lx552_0:
 .quad .Lx552_0_s
.Lx552_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n12_α:
 mov qword ptr [rbp + 2544], 1
 mov rax, qword ptr [rip + .Lx553_0]
 mov qword ptr [rbp + 2552], rax
 jmp xchain538_n13_α
.Lx553_0:
 .quad .Lx553_0_s
.Lx553_0_s:
 .string "d"
# IR_LIT_STRING
 xchain538_n13_α:
 mov qword ptr [rbp + 2512], 1
 mov rax, qword ptr [rip + .Lx554_0]
 mov qword ptr [rbp + 2520], rax
 jmp xchain538_n14_α
.Lx554_0:
 .quad .Lx554_0_s
.Lx554_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n14_α:
 mov qword ptr [rbp + 2400], 1
 mov rax, qword ptr [rip + .Lx555_0]
 mov qword ptr [rbp + 2408], rax
 jmp xchain538_n15_α
.Lx555_0:
 .quad .Lx555_0_s
.Lx555_0_s:
 .string "e"
# IR_LIT_STRING
 xchain538_n15_α:
 mov qword ptr [rbp + 2368], 1
 mov rax, qword ptr [rip + .Lx556_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain538_n16_α
.Lx556_0:
 .quad .Lx556_0_s
.Lx556_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n16_α:
 mov qword ptr [rbp + 2256], 1
 mov rax, qword ptr [rip + .Lx557_0]
 mov qword ptr [rbp + 2264], rax
 jmp xchain538_n17_α
.Lx557_0:
 .quad .Lx557_0_s
.Lx557_0_s:
 .string "f"
# IR_LIT_STRING
 xchain538_n17_α:
 mov qword ptr [rbp + 2224], 1
 mov rax, qword ptr [rip + .Lx558_0]
 mov qword ptr [rbp + 2232], rax
 jmp xchain538_n18_α
.Lx558_0:
 .quad .Lx558_0_s
.Lx558_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n18_α:
 mov qword ptr [rbp + 2112], 1
 mov rax, qword ptr [rip + .Lx559_0]
 mov qword ptr [rbp + 2120], rax
 jmp xchain538_n19_α
.Lx559_0:
 .quad .Lx559_0_s
.Lx559_0_s:
 .string "g"
# IR_LIT_STRING
 xchain538_n19_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx560_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain538_n20_α
.Lx560_0:
 .quad .Lx560_0_s
.Lx560_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n20_α:
 mov qword ptr [rbp + 1968], 1
 mov rax, qword ptr [rip + .Lx561_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain538_n21_α
.Lx561_0:
 .quad .Lx561_0_s
.Lx561_0_s:
 .string "h"
# IR_LIT_STRING
 xchain538_n21_α:
 mov qword ptr [rbp + 1936], 1
 mov rax, qword ptr [rip + .Lx562_0]
 mov qword ptr [rbp + 1944], rax
 jmp xchain538_n22_α
.Lx562_0:
 .quad .Lx562_0_s
.Lx562_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n22_α:
 mov qword ptr [rbp + 1824], 1
 mov rax, qword ptr [rip + .Lx563_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain538_n23_α
.Lx563_0:
 .quad .Lx563_0_s
.Lx563_0_s:
 .string "i"
# IR_LIT_STRING
 xchain538_n23_α:
 mov qword ptr [rbp + 1792], 1
 mov rax, qword ptr [rip + .Lx564_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain538_n24_α
.Lx564_0:
 .quad .Lx564_0_s
.Lx564_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n24_α:
 mov qword ptr [rbp + 1680], 1
 mov rax, qword ptr [rip + .Lx565_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain538_n25_α
.Lx565_0:
 .quad .Lx565_0_s
.Lx565_0_s:
 .string "j"
# IR_LIT_STRING
 xchain538_n25_α:
 mov qword ptr [rbp + 1648], 1
 mov rax, qword ptr [rip + .Lx566_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain538_n26_α
.Lx566_0:
 .quad .Lx566_0_s
.Lx566_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n26_α:
 mov qword ptr [rbp + 1536], 1
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain538_n27_α
.Lx567_0:
 .quad .Lx567_0_s
.Lx567_0_s:
 .string "k"
# IR_LIT_STRING
 xchain538_n27_α:
 mov qword ptr [rbp + 1504], 1
 mov rax, qword ptr [rip + .Lx568_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain538_n28_α
.Lx568_0:
 .quad .Lx568_0_s
.Lx568_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n28_α:
 mov qword ptr [rbp + 1392], 1
 mov rax, qword ptr [rip + .Lx569_0]
 mov qword ptr [rbp + 1400], rax
 jmp xchain538_n29_α
.Lx569_0:
 .quad .Lx569_0_s
.Lx569_0_s:
 .string "l"
# IR_LIT_STRING
 xchain538_n29_α:
 mov qword ptr [rbp + 1360], 1
 mov rax, qword ptr [rip + .Lx570_0]
 mov qword ptr [rbp + 1368], rax
 jmp xchain538_n30_α
.Lx570_0:
 .quad .Lx570_0_s
.Lx570_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n30_α:
 mov qword ptr [rbp + 1248], 1
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain538_n31_α
.Lx571_0:
 .quad .Lx571_0_s
.Lx571_0_s:
 .string "m"
# IR_LIT_STRING
 xchain538_n31_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx572_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain538_n32_α
.Lx572_0:
 .quad .Lx572_0_s
.Lx572_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n32_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx573_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain538_n33_α
.Lx573_0:
 .quad .Lx573_0_s
.Lx573_0_s:
 .string "n"
# IR_LIT_STRING
 xchain538_n33_α:
 mov qword ptr [rbp + 1072], 1
 mov rax, qword ptr [rip + .Lx574_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain538_n34_α
.Lx574_0:
 .quad .Lx574_0_s
.Lx574_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n34_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx575_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain538_n35_α
.Lx575_0:
 .quad .Lx575_0_s
.Lx575_0_s:
 .string "o"
# IR_LIT_STRING
 xchain538_n35_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx576_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain538_n36_α
.Lx576_0:
 .quad .Lx576_0_s
.Lx576_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n36_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx577_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain538_n37_α
.Lx577_0:
 .quad .Lx577_0_s
.Lx577_0_s:
 .string "p"
# IR_LIT_STRING
 xchain538_n37_α:
 mov qword ptr [rbp + 784], 1
 mov rax, qword ptr [rip + .Lx578_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain538_n38_α
.Lx578_0:
 .quad .Lx578_0_s
.Lx578_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n38_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx579_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain538_n39_α
.Lx579_0:
 .quad .Lx579_0_s
.Lx579_0_s:
 .string "q"
# IR_LIT_STRING
 xchain538_n39_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx580_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain538_n40_α
.Lx580_0:
 .quad .Lx580_0_s
.Lx580_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n40_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx581_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain538_n41_α
.Lx581_0:
 .quad .Lx581_0_s
.Lx581_0_s:
 .string "r"
# IR_LIT_STRING
 xchain538_n41_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx582_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain538_n42_α
.Lx582_0:
 .quad .Lx582_0_s
.Lx582_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n42_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx583_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain538_n43_α
.Lx583_0:
 .quad .Lx583_0_s
.Lx583_0_s:
 .string "s"
# IR_LIT_STRING
 xchain538_n43_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx584_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain538_n44_α
.Lx584_0:
 .quad .Lx584_0_s
.Lx584_0_s:
 .string "."
# IR_LIT_STRING
 xchain538_n44_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx585_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain538_n45_α
.Lx585_0:
 .quad .Lx585_0_s
.Lx585_0_s:
 .string "t"
# IR_LIT_STRING
 xchain538_n45_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx586_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain538_n46_α
.Lx586_0:
 .quad .Lx586_0_s
.Lx586_0_s:
 .string "[]"
 xchain538_n46_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 296], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+304]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 312], rax
# marshal arg2 = producer-box slot [zr+208] -> [zr+320]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n47_α
 xchain538_n46_β:
 jmp proc_ham1$2F1_ω
 xchain538_n47_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+448]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 456], rax
# marshal arg2 = producer-box slot [zr+272] -> [zr+464]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n48_α
 xchain538_n47_β:
 jmp proc_ham1$2F1_ω
 xchain538_n48_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+576]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+592]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 600], rax
# marshal arg2 = producer-box slot [zr+416] -> [zr+608]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n49_α
 xchain538_n48_β:
 jmp proc_ham1$2F1_ω
 xchain538_n49_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+720]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 728], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+736]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 744], rax
# marshal arg2 = producer-box slot [zr+560] -> [zr+752]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n50_α
 xchain538_n49_β:
 jmp proc_ham1$2F1_ω
 xchain538_n50_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+864]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+880]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 888], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+896]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n51_α
 xchain538_n50_β:
 jmp proc_ham1$2F1_ω
 xchain538_n51_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1008]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1016], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+1024]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 1032], rax
# marshal arg2 = producer-box slot [zr+848] -> [zr+1040]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 1048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1008]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n52_α
 xchain538_n51_β:
 jmp proc_ham1$2F1_ω
 xchain538_n52_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1152]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1160], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1168]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1176], rax
# marshal arg2 = producer-box slot [zr+992] -> [zr+1184]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1152]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n53_α
 xchain538_n52_β:
 jmp proc_ham1$2F1_ω
 xchain538_n53_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1296]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1304], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1312]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1320], rax
# marshal arg2 = producer-box slot [zr+1136] -> [zr+1328]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1336], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1296]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n54_α
 xchain538_n53_β:
 jmp proc_ham1$2F1_ω
 xchain538_n54_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1440]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1448], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1456]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1464], rax
# marshal arg2 = producer-box slot [zr+1280] -> [zr+1472]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1440]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n55_α
 xchain538_n54_β:
 jmp proc_ham1$2F1_ω
 xchain538_n55_α:
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
# marshal arg2 = producer-box slot [zr+1424] -> [zr+1616]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1584]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n56_α
 xchain538_n55_β:
 jmp proc_ham1$2F1_ω
 xchain538_n56_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1728]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1736], rax
# marshal arg1 = producer-box slot [zr+1680] -> [zr+1744]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1752], rax
# marshal arg2 = producer-box slot [zr+1568] -> [zr+1760]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1728]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n57_α
 xchain538_n56_β:
 jmp proc_ham1$2F1_ω
 xchain538_n57_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1936] -> [zr+1872]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1880], rax
# marshal arg1 = producer-box slot [zr+1824] -> [zr+1888]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1896], rax
# marshal arg2 = producer-box slot [zr+1712] -> [zr+1904]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1872]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n58_α
 xchain538_n57_β:
 jmp proc_ham1$2F1_ω
 xchain538_n58_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2016]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2024], rax
# marshal arg1 = producer-box slot [zr+1968] -> [zr+2032]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 2040], rax
# marshal arg2 = producer-box slot [zr+1856] -> [zr+2048]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 2056], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2016]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n59_α
 xchain538_n58_β:
 jmp proc_ham1$2F1_ω
 xchain538_n59_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2224] -> [zr+2160]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2168], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2176]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2184], rax
# marshal arg2 = producer-box slot [zr+2000] -> [zr+2192]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 2200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2160]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n60_α
 xchain538_n59_β:
 jmp proc_ham1$2F1_ω
 xchain538_n60_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2304]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2312], rax
# marshal arg1 = producer-box slot [zr+2256] -> [zr+2320]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2328], rax
# marshal arg2 = producer-box slot [zr+2144] -> [zr+2336]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2304]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n61_α
 xchain538_n60_β:
 jmp proc_ham1$2F1_ω
 xchain538_n61_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2512] -> [zr+2448]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2456], rax
# marshal arg1 = producer-box slot [zr+2400] -> [zr+2464]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2472], rax
# marshal arg2 = producer-box slot [zr+2288] -> [zr+2480]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2448]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n62_α
 xchain538_n61_β:
 jmp proc_ham1$2F1_ω
 xchain538_n62_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2656] -> [zr+2592]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2600], rax
# marshal arg1 = producer-box slot [zr+2544] -> [zr+2608]
 mov rax, qword ptr [rbp + 2544]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 2616], rax
# marshal arg2 = producer-box slot [zr+2432] -> [zr+2624]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2592]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n63_α
 xchain538_n62_β:
 jmp proc_ham1$2F1_ω
 xchain538_n63_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2800] -> [zr+2736]
 mov rax, qword ptr [rbp + 2800]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2808]
 mov qword ptr [rbp + 2744], rax
# marshal arg1 = producer-box slot [zr+2688] -> [zr+2752]
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 2760], rax
# marshal arg2 = producer-box slot [zr+2576] -> [zr+2768]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2736]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n64_α
 xchain538_n63_β:
 jmp proc_ham1$2F1_ω
 xchain538_n64_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2944] -> [zr+2880]
 mov rax, qword ptr [rbp + 2944]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 2952]
 mov qword ptr [rbp + 2888], rax
# marshal arg1 = producer-box slot [zr+2832] -> [zr+2896]
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 2904], rax
# marshal arg2 = producer-box slot [zr+2720] -> [zr+2912]
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 2920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2880]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 cmp eax, 99
 je proc_ham1$2F1_ω
 jmp xchain538_n65_α
 xchain538_n64_β:
 jmp proc_ham1$2F1_ω
 xchain538_n65_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3088] -> [zr+3024]
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3032], rax
# marshal arg1 = producer-box slot [zr+2976] -> [zr+3040]
 mov rax, qword ptr [rbp + 2976]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 2984]
 mov qword ptr [rbp + 3048], rax
# marshal arg2 = producer-box slot [zr+2864] -> [zr+3056]
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 3064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3024]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 cmp eax, 99
 je xchain538_n5_α
 jmp xchain538_n66_α
 xchain538_n65_β:
 jmp xchain538_n5_α
# IR_VAR_REF
 xchain538_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3296]
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain538_n67_α
 xchain538_n67_α:
 mov qword ptr [rbp + 176], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3008]
 mov rdx, qword ptr [rbp + 3016]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3120]
 mov rdx, qword ptr [rbp + 3128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx610_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx610_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx610_3]
 lea rdx, [rip + .Lx610_4]
 jmp rax
.Lx610_3:
 mov qword ptr [rbp + 184], rsp
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx610_5
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx610_2
.Lx610_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx610_2
.Lx610_4:
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx610_6
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx610_2
.Lx610_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx610_2
.Lx610_1:
 call rt_faildescr@PLT
.Lx610_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain538_n5_α
 jmp xchain538_n68_α
 xchain538_n67_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 184]
 jmp qword ptr [rsp]
.Lx610_0:
 .quad .Lx610_0_s
.Lx610_0_s:
 .string "cycle_ham/2"
# IR_SUSPEND yield+resume
 xchain538_n68_α:
 lea rax, [rip + xchain538_n68_β]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_ham1$2F1_γ
 xchain538_n68_β:
 jmp xchain538_n67_β
proc_ham1$2F1_res:
add rsp, 8
pop rbp
proc_ham1$2F1_β:
jmp qword ptr [rbp + 3264]
proc_ham1$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_ham1$2F1_res]
push rax
mov rax, [rbp + 3320]
mov rbp, [rbp + 3336]
jmp rax
proc_ham1$2F1_ω:
mov rax, [rbp + 3328]
lea rsp, [rbp + 3344]
mov rbp, [rbp + 3336]
jmp rax
  .globl proc_chain_ham$2F3_α
proc_chain_ham$2F3_α:
#=======================================================================================================================
    .global proc_chain_ham$2F3_α
    .global proc_chain_ham$2F3_β
    .global proc_chain_ham$2F3_γ
    .global proc_chain_ham$2F3_ω
  sub rsp, 2416
  mov [rsp + 2392], rcx
  mov [rsp + 2400], rdx
  mov [rsp + 2408], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2280], rsp
  mov rdi, rsp
  mov esi, 2256
  mov edx, 2384
  call rt_jmp_frame_lexprep2@PLT
proc_chain_ham$2F3_α_body:
lea rax, [rip + xchain613_n33_β]
mov qword ptr [rbp + 2256], rax
 xchain613_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_chain_ham$2F3_ω
 jmp xchain613_n1_α
 xchain613_n0_β:
 jmp proc_chain_ham$2F3_ω
# IR_VAR_REF
 xchain613_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain613_n2_α
# IR_LIT_INTEGER
 xchain613_n2_α:
 mov qword ptr [rbp + 2192], 6
 mov rax, qword ptr [rip + .Lx617_0]
 mov qword ptr [rbp + 2200], rax
 jmp xchain613_n3_α
.Lx617_0:
 .quad 3
# IR_LIT_INTEGER
 xchain613_n3_α:
 mov qword ptr [rbp + 2224], 6
 mov rax, qword ptr [rip + .Lx618_0]
 mov qword ptr [rbp + 2232], rax
 jmp xchain613_n4_α
.Lx618_0:
 .quad 0
 xchain613_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2160] -> [zr+2112]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2120], rax
# marshal arg1 = producer-box slot [zr+2192] -> [zr+2128]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2136], rax
# marshal arg2 = producer-box slot [zr+2224] -> [zr+2144]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2112]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 cmp eax, 99
 je xchain613_n6_α
 jmp xchain613_n5_α
 xchain613_n4_β:
 jmp xchain613_n6_α
# IR_VAR_REF
 xchain613_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain613_n7_α
# IR_VAR_REF
 xchain613_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain613_n8_α
# IR_LIT_STRING
 xchain613_n7_α:
 mov qword ptr [rbp + 2064], 1
 mov rax, qword ptr [rip + .Lx624_0]
 mov qword ptr [rbp + 2072], rax
 jmp xchain613_n9_α
.Lx624_0:
 .quad .Lx624_0_s
.Lx624_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain613_n8_α:
 mov qword ptr [rbp + 1456], 6
 mov rax, qword ptr [rip + .Lx625_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain613_n10_α
.Lx625_0:
 .quad 3
# IR_VAR_REF
 xchain613_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2336]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain613_n11_α
# IR_LIT_INTEGER
 xchain613_n10_α:
 mov qword ptr [rbp + 1488], 6
 mov rax, qword ptr [rip + .Lx628_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain613_n12_α
.Lx628_0:
 .quad 0
# IR_LIT_STRING
 xchain613_n11_α:
 mov qword ptr [rbp + 1920], 1
 mov rax, qword ptr [rip + .Lx629_0]
 mov qword ptr [rbp + 1928], rax
 jmp xchain613_n13_α
.Lx629_0:
 .quad .Lx629_0_s
.Lx629_0_s:
 .string "[]"
 xchain613_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1376]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1392]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1400], rax
# marshal arg2 = producer-box slot [zr+1488] -> [zr+1408]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1416], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1376]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain613_n15_α
 jmp xchain613_n14_α
 xchain613_n12_β:
 jmp xchain613_n15_α
 xchain613_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2064] -> [zr+2000]
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 2008], rax
# marshal arg1 = producer-box slot [zr+1952] -> [zr+2016]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 2024], rax
# marshal arg2 = producer-box slot [zr+1920] -> [zr+2032]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 2040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2000]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 cmp eax, 99
 je xchain613_n17_α
 jmp xchain613_n16_α
 xchain613_n13_β:
 jmp xchain613_n17_α
# IR_VAR_REF
 xchain613_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain613_n18_α
 xchain613_n15_α:
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
 je proc_chain_ham$2F3_ω
 jmp proc_chain_ham$2F3_ω
 xchain613_n15_β:
 jmp proc_chain_ham$2F3_ω
 xchain613_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1888] -> [zr+1856]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1864], rax
# marshal arg1 = producer-box slot [zr+1984] -> [zr+1872]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1880], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1856]
 lea r8, [rbp + 1856]
.Lx635_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx635_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx635_41
 cmp esi, 1
 jne .Lx635_55
 mov r8, rax
 jmp .Lx635_40
.Lx635_55:
 cmp esi, 2
 jne .Lx635_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx635_41
 mov r8, rax
 jmp .Lx635_40
.Lx635_56:
 cmp eax, 13
 jne .Lx635_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx635_41
 cmp rax, r8
 je .Lx635_41
 mov r8, rax
 jmp .Lx635_40
.Lx635_41:
 lea r9, [rbp + 1872]
.Lx635_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx635_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx635_43
 cmp esi, 1
 jne .Lx635_57
 mov r9, rax
 jmp .Lx635_42
.Lx635_57:
 cmp esi, 2
 jne .Lx635_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx635_43
 mov r9, rax
 jmp .Lx635_42
.Lx635_58:
 cmp eax, 13
 jne .Lx635_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx635_43
 cmp rax, r9
 je .Lx635_43
 mov r9, rax
 jmp .Lx635_42
.Lx635_43:
 cmp r8, r9
 je .Lx635_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx635_44
 cmp eax, 99
 je .Lx635_44
 cmp eax, 13
 jne .Lx635_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx635_44
 jmp .Lx635_45
.Lx635_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx635_53
 cmp eax, 99
 je .Lx635_53
 cmp eax, 13
 jne .Lx635_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx635_53
 jmp .Lx635_46
.Lx635_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx635_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx635_53
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
 jmp .Lx635_51
.Lx635_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx635_47
 cmp eax, 99
 je .Lx635_47
 cmp eax, 13
 jne .Lx635_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx635_47
 jmp .Lx635_48
.Lx635_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx635_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx635_53
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
 jmp .Lx635_51
.Lx635_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx635_49
 cmp edx, 14
 je .Lx635_53
 jmp .Lx635_52
.Lx635_49:
 cmp edx, 14
 je .Lx635_52
 cmp ecx, 7
 je .Lx635_53
 cmp edx, 7
 je .Lx635_53
 cmp ecx, 6
 jne .Lx635_50
 cmp edx, 6
 jne .Lx635_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx635_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx635_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx635_51
 jmp .Lx635_52
.Lx635_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx635_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx635_53
.Lx635_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx635_54
.Lx635_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx635_54
.Lx635_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx635_54:
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 cmp eax, 99
 je xchain613_n17_α
 jmp xchain613_n19_α
 xchain613_n16_β:
 jmp xchain613_n17_α
 xchain613_n17_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1536]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1544], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1536]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je proc_chain_ham$2F3_ω
 jmp xchain613_n6_α
 xchain613_n17_β:
 jmp proc_chain_ham$2F3_ω
# IR_VAR_REF
 xchain613_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2336]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain613_n20_α
# IR_VAR_REF
 xchain613_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain613_n21_α
# IR_VAR_REF
 xchain613_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2368]
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain613_n22_α
# IR_VAR_REF
 xchain613_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2320]
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain613_n23_α
 xchain613_n22_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1248]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1256], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1264]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1272], rax
# marshal arg2 = producer-box slot [zr+1328] -> [zr+1280]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1248]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain613_n15_α
 jmp xchain613_n24_α
 xchain613_n22_β:
 jmp xchain613_n15_α
 xchain613_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1776] -> [zr+1744]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1752], rax
# marshal arg1 = producer-box slot [zr+1808] -> [zr+1760]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1768], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1744]
 lea r8, [rbp + 1744]
.Lx646_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx646_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx646_41
 cmp esi, 1
 jne .Lx646_55
 mov r8, rax
 jmp .Lx646_40
.Lx646_55:
 cmp esi, 2
 jne .Lx646_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx646_41
 mov r8, rax
 jmp .Lx646_40
.Lx646_56:
 cmp eax, 13
 jne .Lx646_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx646_41
 cmp rax, r8
 je .Lx646_41
 mov r8, rax
 jmp .Lx646_40
.Lx646_41:
 lea r9, [rbp + 1760]
.Lx646_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx646_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx646_43
 cmp esi, 1
 jne .Lx646_57
 mov r9, rax
 jmp .Lx646_42
.Lx646_57:
 cmp esi, 2
 jne .Lx646_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx646_43
 mov r9, rax
 jmp .Lx646_42
.Lx646_58:
 cmp eax, 13
 jne .Lx646_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx646_43
 cmp rax, r9
 je .Lx646_43
 mov r9, rax
 jmp .Lx646_42
.Lx646_43:
 cmp r8, r9
 je .Lx646_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx646_44
 cmp eax, 99
 je .Lx646_44
 cmp eax, 13
 jne .Lx646_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx646_44
 jmp .Lx646_45
.Lx646_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx646_53
 cmp eax, 99
 je .Lx646_53
 cmp eax, 13
 jne .Lx646_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx646_53
 jmp .Lx646_46
.Lx646_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx646_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx646_53
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
 jmp .Lx646_51
.Lx646_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx646_47
 cmp eax, 99
 je .Lx646_47
 cmp eax, 13
 jne .Lx646_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx646_47
 jmp .Lx646_48
.Lx646_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx646_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx646_53
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
 jmp .Lx646_51
.Lx646_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx646_49
 cmp edx, 14
 je .Lx646_53
 jmp .Lx646_52
.Lx646_49:
 cmp edx, 14
 je .Lx646_52
 cmp ecx, 7
 je .Lx646_53
 cmp edx, 7
 je .Lx646_53
 cmp ecx, 6
 jne .Lx646_50
 cmp edx, 6
 jne .Lx646_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx646_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx646_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx646_51
 jmp .Lx646_52
.Lx646_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx646_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx646_53
.Lx646_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx646_54
.Lx646_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx646_54
.Lx646_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx646_54:
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain613_n17_α
 jmp xchain613_n25_α
 xchain613_n23_β:
 jmp xchain613_n17_α
# IR_VAR_REF
 xchain613_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain613_n26_α
# IR_VAR_REF
 xchain613_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain613_n27_α
# IR_VAR_REF
 xchain613_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2320]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain613_n28_α
# IR_VAR_REF
 xchain613_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2336]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain613_n29_α
 xchain613_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1104]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1168] -> [zr+1120]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1128], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1104]
 lea r8, [rbp + 1104]
.Lx655_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx655_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx655_41
 cmp esi, 1
 jne .Lx655_55
 mov r8, rax
 jmp .Lx655_40
.Lx655_55:
 cmp esi, 2
 jne .Lx655_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx655_41
 mov r8, rax
 jmp .Lx655_40
.Lx655_56:
 cmp eax, 13
 jne .Lx655_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx655_41
 cmp rax, r8
 je .Lx655_41
 mov r8, rax
 jmp .Lx655_40
.Lx655_41:
 lea r9, [rbp + 1120]
.Lx655_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx655_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx655_43
 cmp esi, 1
 jne .Lx655_57
 mov r9, rax
 jmp .Lx655_42
.Lx655_57:
 cmp esi, 2
 jne .Lx655_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx655_43
 mov r9, rax
 jmp .Lx655_42
.Lx655_58:
 cmp eax, 13
 jne .Lx655_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx655_43
 cmp rax, r9
 je .Lx655_43
 mov r9, rax
 jmp .Lx655_42
.Lx655_43:
 cmp r8, r9
 je .Lx655_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx655_44
 cmp eax, 99
 je .Lx655_44
 cmp eax, 13
 jne .Lx655_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx655_44
 jmp .Lx655_45
.Lx655_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx655_53
 cmp eax, 99
 je .Lx655_53
 cmp eax, 13
 jne .Lx655_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx655_53
 jmp .Lx655_46
.Lx655_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx655_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx655_53
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
 jmp .Lx655_51
.Lx655_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx655_47
 cmp eax, 99
 je .Lx655_47
 cmp eax, 13
 jne .Lx655_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx655_47
 jmp .Lx655_48
.Lx655_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx655_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx655_53
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
 jmp .Lx655_51
.Lx655_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx655_49
 cmp edx, 14
 je .Lx655_53
 jmp .Lx655_52
.Lx655_49:
 cmp edx, 14
 je .Lx655_52
 cmp ecx, 7
 je .Lx655_53
 cmp edx, 7
 je .Lx655_53
 cmp ecx, 6
 jne .Lx655_50
 cmp edx, 6
 jne .Lx655_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx655_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx655_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx655_51
 jmp .Lx655_52
.Lx655_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx655_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx655_53
.Lx655_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx655_54
.Lx655_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx655_54
.Lx655_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx655_54:
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain613_n15_α
 jmp xchain613_n30_α
 xchain613_n28_β:
 jmp xchain613_n15_α
# IR_VAR_REF
 xchain613_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2320]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain613_n31_α
# IR_VAR_REF
 xchain613_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain613_n32_α
 xchain613_n31_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1568] -> [zr+1616]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1624], rax
# marshal arg1 = producer-box slot [zr+1664] -> [zr+1632]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1640], rax
# marshal arg2 = producer-box slot [zr+1696] -> [zr+1648]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1656], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1616]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je xchain613_n17_α
 jmp xchain613_n33_α
 xchain613_n31_β:
 jmp xchain613_n17_α
# IR_VAR_REF
 xchain613_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2352]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain613_n34_α
# IR_SUSPEND yield+resume
 xchain613_n33_α:
 lea rax, [rip + xchain613_n33_β]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_chain_ham$2F3_γ
 xchain613_n33_β:
 jmp xchain613_n17_α
 xchain613_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+1008]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1016], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 992]
 lea r8, [rbp + 992]
.Lx665_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx665_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx665_41
 cmp esi, 1
 jne .Lx665_55
 mov r8, rax
 jmp .Lx665_40
.Lx665_55:
 cmp esi, 2
 jne .Lx665_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx665_41
 mov r8, rax
 jmp .Lx665_40
.Lx665_56:
 cmp eax, 13
 jne .Lx665_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx665_41
 cmp rax, r8
 je .Lx665_41
 mov r8, rax
 jmp .Lx665_40
.Lx665_41:
 lea r9, [rbp + 1008]
.Lx665_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx665_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx665_43
 cmp esi, 1
 jne .Lx665_57
 mov r9, rax
 jmp .Lx665_42
.Lx665_57:
 cmp esi, 2
 jne .Lx665_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx665_43
 mov r9, rax
 jmp .Lx665_42
.Lx665_58:
 cmp eax, 13
 jne .Lx665_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx665_43
 cmp rax, r9
 je .Lx665_43
 mov r9, rax
 jmp .Lx665_42
.Lx665_43:
 cmp r8, r9
 je .Lx665_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx665_44
 cmp eax, 99
 je .Lx665_44
 cmp eax, 13
 jne .Lx665_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx665_44
 jmp .Lx665_45
.Lx665_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx665_53
 cmp eax, 99
 je .Lx665_53
 cmp eax, 13
 jne .Lx665_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx665_53
 jmp .Lx665_46
.Lx665_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx665_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx665_53
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
 jmp .Lx665_51
.Lx665_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx665_47
 cmp eax, 99
 je .Lx665_47
 cmp eax, 13
 jne .Lx665_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx665_47
 jmp .Lx665_48
.Lx665_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx665_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx665_53
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
 jmp .Lx665_51
.Lx665_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx665_49
 cmp edx, 14
 je .Lx665_53
 jmp .Lx665_52
.Lx665_49:
 cmp edx, 14
 je .Lx665_52
 cmp ecx, 7
 je .Lx665_53
 cmp edx, 7
 je .Lx665_53
 cmp ecx, 6
 jne .Lx665_50
 cmp edx, 6
 jne .Lx665_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx665_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx665_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx665_51
 jmp .Lx665_52
.Lx665_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx665_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx665_53
.Lx665_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx665_54
.Lx665_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx665_54
.Lx665_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx665_54:
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain613_n15_α
 jmp xchain613_n35_α
 xchain613_n34_β:
 jmp xchain613_n15_α
# IR_VAR_REF
 xchain613_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2304]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain613_n36_α
# IR_VAR_REF
 xchain613_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2368]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain613_n37_α
# IR_VAR_REF
 xchain613_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2288]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain613_n38_α
 xchain613_n38_α:
 mov qword ptr [rbp + 848], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx673_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx673_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx673_3]
 lea rdx, [rip + .Lx673_4]
 jmp rax
.Lx673_3:
 mov qword ptr [rbp + 856], rsp
 mov rax, qword ptr [rbp + 848]
 test rax, rax
 jne .Lx673_5
 mov qword ptr [rbp + 848], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx673_2
.Lx673_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx673_2
.Lx673_4:
 mov rax, qword ptr [rbp + 848]
 test rax, rax
 jne .Lx673_6
 mov qword ptr [rbp + 848], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx673_2
.Lx673_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx673_2
.Lx673_1:
 call rt_faildescr@PLT
.Lx673_2:
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain613_n15_α
 jmp xchain613_n39_α
 xchain613_n38_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 856]
 jmp qword ptr [rsp]
.Lx673_0:
 .quad .Lx673_0_s
.Lx673_0_s:
 .string "del/3"
# IR_VAR_REF
 xchain613_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2336]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain613_n40_α
# IR_VAR_REF
 xchain613_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2304]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain613_n41_α
 xchain613_n41_α:
 mov qword ptr [rbp + 688], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 720]
 mov rdx, qword ptr [rbp + 728]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 752]
 mov rdx, qword ptr [rbp + 760]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx679_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx679_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx679_3]
 lea rdx, [rip + .Lx679_4]
 jmp rax
.Lx679_3:
 mov qword ptr [rbp + 696], rsp
 mov rax, qword ptr [rbp + 688]
 test rax, rax
 jne .Lx679_5
 mov qword ptr [rbp + 688], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx679_2
.Lx679_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx679_2
.Lx679_4:
 mov rax, qword ptr [rbp + 688]
 test rax, rax
 jne .Lx679_6
 mov qword ptr [rbp + 688], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx679_2
.Lx679_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx679_2
.Lx679_1:
 call rt_faildescr@PLT
.Lx679_2:
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain613_n38_β
 jmp xchain613_n42_α
 xchain613_n41_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 696]
 jmp qword ptr [rsp]
.Lx679_0:
 .quad .Lx679_0_s
.Lx679_0_s:
 .string "edge/2"
# IR_LIT_STRING
 xchain613_n42_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx680_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain613_n43_α
.Lx680_0:
 .quad .Lx680_0_s
.Lx680_0_s:
 .string "."
# IR_VAR_REF
 xchain613_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2304]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain613_n44_α
# IR_VAR_REF
 xchain613_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2288]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain613_n45_α
 xchain613_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+336]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+352]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 360], rax
# marshal arg2 = producer-box slot [zr+256] -> [zr+368]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain613_n15_α
 jmp xchain613_n46_α
 xchain613_n45_β:
 jmp xchain613_n15_α
# IR_LIT_STRING
 xchain613_n46_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx686_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain613_n47_α
.Lx686_0:
 .quad .Lx686_0_s
.Lx686_0_s:
 .string "."
# IR_VAR_REF
 xchain613_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2336]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain613_n48_α
# IR_VAR_REF
 xchain613_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2320]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain613_n49_α
 xchain613_n49_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+512]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 520], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+528]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 536], rax
# marshal arg2 = producer-box slot [zr+432] -> [zr+544]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 512]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain613_n15_α
 jmp xchain613_n50_α
 xchain613_n49_β:
 jmp xchain613_n15_α
# IR_VAR_REF
 xchain613_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2352]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain613_n51_α
 xchain613_n51_α:
 mov qword ptr [rbp + 224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx695_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx695_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx695_3]
 lea rdx, [rip + .Lx695_4]
 jmp rax
.Lx695_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx695_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx695_2
.Lx695_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx695_2
.Lx695_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx695_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx695_2
.Lx695_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx695_2
.Lx695_1:
 call rt_faildescr@PLT
.Lx695_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain613_n41_β
 jmp xchain613_n52_α
 xchain613_n51_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx695_0:
 .quad .Lx695_0_s
.Lx695_0_s:
 .string "chain_ham/3"
# IR_SUSPEND yield+resume
 xchain613_n52_α:
 lea rax, [rip + xchain613_n52_β]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_chain_ham$2F3_γ
 xchain613_n52_β:
 jmp xchain613_n51_β
proc_chain_ham$2F3_res:
add rsp, 8
pop rbp
proc_chain_ham$2F3_β:
jmp qword ptr [rbp + 2256]
proc_chain_ham$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_chain_ham$2F3_res]
push rax
mov rax, [rbp + 2392]
mov rbp, [rbp + 2408]
jmp rax
proc_chain_ham$2F3_ω:
mov rax, [rbp + 2400]
lea rsp, [rbp + 2416]
mov rbp, [rbp + 2408]
jmp rax
  .globl proc_edge$2F2_α
proc_edge$2F2_α:
#=======================================================================================================================
    .global proc_edge$2F2_α
    .global proc_edge$2F2_β
    .global proc_edge$2F2_γ
    .global proc_edge$2F2_ω
  sub rsp, 768
  mov [rsp + 744], rcx
  mov [rsp + 752], rdx
  mov [rsp + 760], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 680], rsp
  mov rdi, rsp
  mov esi, 656
  mov edx, 736
  call rt_jmp_frame_lexprep2@PLT
proc_edge$2F2_α_body:
lea rax, [rip + xchain698_n14_β]
mov qword ptr [rbp + 656], rax
 xchain698_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_edge$2F2_ω
 jmp xchain698_n1_α
 xchain698_n0_β:
 jmp proc_edge$2F2_ω
# IR_VAR_REF
 xchain698_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain698_n2_α
# IR_VAR_REF
 xchain698_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 720]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain698_n3_α
 xchain698_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+576]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 584], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 560]
 lea r8, [rbp + 560]
.Lx704_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx704_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx704_41
 cmp esi, 1
 jne .Lx704_55
 mov r8, rax
 jmp .Lx704_40
.Lx704_55:
 cmp esi, 2
 jne .Lx704_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx704_41
 mov r8, rax
 jmp .Lx704_40
.Lx704_56:
 cmp eax, 13
 jne .Lx704_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx704_41
 cmp rax, r8
 je .Lx704_41
 mov r8, rax
 jmp .Lx704_40
.Lx704_41:
 lea r9, [rbp + 576]
.Lx704_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx704_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx704_43
 cmp esi, 1
 jne .Lx704_57
 mov r9, rax
 jmp .Lx704_42
.Lx704_57:
 cmp esi, 2
 jne .Lx704_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx704_43
 mov r9, rax
 jmp .Lx704_42
.Lx704_58:
 cmp eax, 13
 jne .Lx704_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx704_43
 cmp rax, r9
 je .Lx704_43
 mov r9, rax
 jmp .Lx704_42
.Lx704_43:
 cmp r8, r9
 je .Lx704_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx704_44
 cmp eax, 99
 je .Lx704_44
 cmp eax, 13
 jne .Lx704_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx704_44
 jmp .Lx704_45
.Lx704_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx704_53
 cmp eax, 99
 je .Lx704_53
 cmp eax, 13
 jne .Lx704_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx704_53
 jmp .Lx704_46
.Lx704_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx704_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx704_53
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
 jmp .Lx704_51
.Lx704_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx704_47
 cmp eax, 99
 je .Lx704_47
 cmp eax, 13
 jne .Lx704_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx704_47
 jmp .Lx704_48
.Lx704_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx704_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx704_53
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
 jmp .Lx704_51
.Lx704_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx704_49
 cmp edx, 14
 je .Lx704_53
 jmp .Lx704_52
.Lx704_49:
 cmp edx, 14
 je .Lx704_52
 cmp ecx, 7
 je .Lx704_53
 cmp edx, 7
 je .Lx704_53
 cmp ecx, 6
 jne .Lx704_50
 cmp edx, 6
 jne .Lx704_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx704_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx704_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx704_51
 jmp .Lx704_52
.Lx704_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx704_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx704_53
.Lx704_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx704_54
.Lx704_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx704_54
.Lx704_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx704_54:
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain698_n5_α
 jmp xchain698_n4_α
 xchain698_n3_β:
 jmp xchain698_n5_α
# IR_VAR_REF
 xchain698_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain698_n6_α
 xchain698_n5_α:
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
 je proc_edge$2F2_ω
 jmp proc_edge$2F2_ω
 xchain698_n5_β:
 jmp proc_edge$2F2_ω
# IR_VAR_REF
 xchain698_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 688]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain698_n7_α
 xchain698_n7_α:
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
.Lx710_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx710_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx710_41
 cmp esi, 1
 jne .Lx710_55
 mov r8, rax
 jmp .Lx710_40
.Lx710_55:
 cmp esi, 2
 jne .Lx710_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx710_41
 mov r8, rax
 jmp .Lx710_40
.Lx710_56:
 cmp eax, 13
 jne .Lx710_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx710_41
 cmp rax, r8
 je .Lx710_41
 mov r8, rax
 jmp .Lx710_40
.Lx710_41:
 lea r9, [rbp + 464]
.Lx710_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx710_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx710_43
 cmp esi, 1
 jne .Lx710_57
 mov r9, rax
 jmp .Lx710_42
.Lx710_57:
 cmp esi, 2
 jne .Lx710_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx710_43
 mov r9, rax
 jmp .Lx710_42
.Lx710_58:
 cmp eax, 13
 jne .Lx710_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx710_43
 cmp rax, r9
 je .Lx710_43
 mov r9, rax
 jmp .Lx710_42
.Lx710_43:
 cmp r8, r9
 je .Lx710_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx710_44
 cmp eax, 99
 je .Lx710_44
 cmp eax, 13
 jne .Lx710_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx710_44
 jmp .Lx710_45
.Lx710_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx710_53
 cmp eax, 99
 je .Lx710_53
 cmp eax, 13
 jne .Lx710_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx710_53
 jmp .Lx710_46
.Lx710_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx710_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx710_53
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
 jmp .Lx710_51
.Lx710_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx710_47
 cmp eax, 99
 je .Lx710_47
 cmp eax, 13
 jne .Lx710_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx710_47
 jmp .Lx710_48
.Lx710_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx710_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx710_53
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
 jmp .Lx710_51
.Lx710_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx710_49
 cmp edx, 14
 je .Lx710_53
 jmp .Lx710_52
.Lx710_49:
 cmp edx, 14
 je .Lx710_52
 cmp ecx, 7
 je .Lx710_53
 cmp edx, 7
 je .Lx710_53
 cmp ecx, 6
 jne .Lx710_50
 cmp edx, 6
 jne .Lx710_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx710_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx710_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx710_51
 jmp .Lx710_52
.Lx710_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx710_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx710_53
.Lx710_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx710_54
.Lx710_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx710_54
.Lx710_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx710_54:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain698_n5_α
 jmp xchain698_n8_α
 xchain698_n7_β:
 jmp xchain698_n5_α
# IR_VAR_REF
 xchain698_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 720]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain698_n9_α
# IR_VAR_REF
 xchain698_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 704]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain698_n10_α
 xchain698_n10_α:
 mov qword ptr [rbp + 336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx716_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx716_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx716_3]
 lea rdx, [rip + .Lx716_4]
 jmp rax
.Lx716_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx716_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx716_2
.Lx716_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx716_2
.Lx716_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx716_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx716_2
.Lx716_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx716_2
.Lx716_1:
 call rt_faildescr@PLT
.Lx716_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain698_n5_α
 jmp xchain698_n11_α
 xchain698_n10_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx716_0:
 .quad .Lx716_0_s
.Lx716_0_s:
 .string "connect/2"
# IR_VAR_REF
 xchain698_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 688]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain698_n12_α
# IR_VAR_REF
 xchain698_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 704]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain698_n13_α
 xchain698_n13_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx722_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx722_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx722_3]
 lea rdx, [rip + .Lx722_4]
 jmp rax
.Lx722_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx722_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx722_2
.Lx722_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx722_2
.Lx722_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx722_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx722_2
.Lx722_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx722_2
.Lx722_1:
 call rt_faildescr@PLT
.Lx722_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain698_n10_β
 jmp xchain698_n14_α
 xchain698_n13_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx722_0:
 .quad .Lx722_0_s
.Lx722_0_s:
 .string "el/2"
# IR_SUSPEND yield+resume
 xchain698_n14_α:
 lea rax, [rip + xchain698_n14_β]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_edge$2F2_γ
 xchain698_n14_β:
 jmp xchain698_n13_β
proc_edge$2F2_res:
add rsp, 8
pop rbp
proc_edge$2F2_β:
jmp qword ptr [rbp + 656]
proc_edge$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_edge$2F2_res]
push rax
mov rax, [rbp + 744]
mov rbp, [rbp + 760]
jmp rax
proc_edge$2F2_ω:
mov rax, [rbp + 752]
lea rsp, [rbp + 768]
mov rbp, [rbp + 760]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "del/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_del$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1328
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "el/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_el$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 960
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "connect/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_connect$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 14224
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "cycle_ham/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_cycle_ham$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1424
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname4: .string "ham1/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_ham1$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 3312
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "chain_ham/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_chain_ham$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2384
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname6: .string "edge/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_edge$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 736
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
  mov qword ptr [rsp + 344], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain725_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain725_n1_α
 xchain725_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain725_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain725_n2_α
 xchain725_n2_α:
 mov qword ptr [rbp + 272], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx730_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx730_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx730_3]
 lea rdx, [rip + .Lx730_4]
 jmp rax
.Lx730_3:
 mov qword ptr [rbp + 280], rsp
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx730_5
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx730_2
.Lx730_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx730_2
.Lx730_4:
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx730_6
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx730_2
.Lx730_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx730_2
.Lx730_1:
 call rt_faildescr@PLT
.Lx730_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain725_n4_α
 jmp xchain725_n3_α
 xchain725_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 280]
 jmp qword ptr [rsp]
.Lx730_0:
 .quad .Lx730_0_s
.Lx730_0_s:
 .string "ham1/1"
# IR_VAR
 xchain725_n3_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 216], rax
 jmp xchain725_n5_α
 xchain725_n4_α:
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
 xchain725_n4_β:
 jmp main_ω
 xchain725_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn735: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn735]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain725_n2_β
 jmp xchain725_n6_α
 xchain725_n5_β:
 jmp xchain725_n2_β
# IR_LIT_STRING
 xchain725_n6_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx736_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain725_n7_α
.Lx736_0:
 .quad .Lx736_0_s
.Lx736_0_s:
 .string ""
 xchain725_n7_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn738: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn738]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain725_n2_β
 jmp xchain725_n8_α
 xchain725_n7_β:
 jmp xchain725_n2_β
# IR_MOVE_LABEL
 xchain725_n8_α:
 lea rax, [rip + xchain725_n2_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain725_n9_α:
 jmp qword ptr [rbp + 32]
 xchain725_n9_β:
 jmp main_ω
main_β:
jmp xchain725_n9_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 344]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 344]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
