  .intel_syntax noprefix
  .text
  .globl proc_tak$2F4_α
proc_tak$2F4_α:
#=======================================================================================================================
    .global proc_tak$2F4_α
    .global proc_tak$2F4_β
    .global proc_tak$2F4_γ
    .global proc_tak$2F4_ω
  sub rsp, 3168
  mov [rsp + 3144], rcx
  mov [rsp + 3152], rdx
  mov [rsp + 3160], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2968], rsp
  mov rdi, rsp
  mov esi, 2960
  mov edx, 3136
  call rt_jmp_frame_lexprep2@PLT
proc_tak$2F4_α_body:
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx1_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx1_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx1_101
.Lx1_100:
 lea rdi, [rbp + 128]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx1_101:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_tak$2F4_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_tak$2F4_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3056]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain0_n3_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2896] -> [zr+2864]
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 2872], rax
# marshal arg1 = producer-box slot [zr+2928] -> [zr+2880]
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2888], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2864]
 lea r8, [rbp + 2864]
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
 lea r9, [rbp + 2880]
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
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+2272]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 2280], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2272]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 cmp eax, 99
 je proc_tak$2F4_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_tak$2F4_ω
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3072]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 jmp xchain0_n8_α
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain0_n9_α
 xchain0_n8_α:
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
.Lx14_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx14_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx14_41
 cmp esi, 1
 jne .Lx14_55
 mov r8, rax
 jmp .Lx14_40
.Lx14_55:
 cmp esi, 2
 jne .Lx14_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx14_41
 mov r8, rax
 jmp .Lx14_40
.Lx14_56:
 cmp eax, 13
 jne .Lx14_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx14_41
 cmp rax, r8
 je .Lx14_41
 mov r8, rax
 jmp .Lx14_40
.Lx14_41:
 lea r9, [rbp + 2768]
.Lx14_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx14_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx14_43
 cmp esi, 1
 jne .Lx14_57
 mov r9, rax
 jmp .Lx14_42
.Lx14_57:
 cmp esi, 2
 jne .Lx14_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx14_43
 mov r9, rax
 jmp .Lx14_42
.Lx14_58:
 cmp eax, 13
 jne .Lx14_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx14_43
 cmp rax, r9
 je .Lx14_43
 mov r9, rax
 jmp .Lx14_42
.Lx14_43:
 cmp r8, r9
 je .Lx14_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx14_44
 cmp eax, 99
 je .Lx14_44
 cmp eax, 13
 jne .Lx14_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx14_44
 jmp .Lx14_45
.Lx14_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx14_53
 cmp eax, 99
 je .Lx14_53
 cmp eax, 13
 jne .Lx14_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx14_53
 jmp .Lx14_46
.Lx14_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx14_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx14_53
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
 jmp .Lx14_51
.Lx14_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx14_47
 cmp eax, 99
 je .Lx14_47
 cmp eax, 13
 jne .Lx14_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx14_47
 jmp .Lx14_48
.Lx14_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx14_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx14_53
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
 jmp .Lx14_51
.Lx14_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx14_49
 cmp edx, 14
 je .Lx14_53
 jmp .Lx14_52
.Lx14_49:
 cmp edx, 14
 je .Lx14_52
 cmp ecx, 7
 je .Lx14_53
 cmp edx, 7
 je .Lx14_53
 cmp ecx, 6
 jne .Lx14_50
 cmp edx, 6
 jne .Lx14_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx14_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx14_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx14_51
 jmp .Lx14_52
.Lx14_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx14_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx14_53
.Lx14_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx14_54
.Lx14_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx14_54
.Lx14_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx14_54:
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3056]
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain0_n11_α
# IR_VAR_REF
 xchain0_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain0_n12_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2160]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2168], rax
# marshal arg1 = producer-box slot [zr+2224] -> [zr+2176]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2184], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2160]
 lea r8, [rbp + 2160]
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
 lea r9, [rbp + 2176]
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
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3088]
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain0_n15_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain0_n16_α
 xchain0_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+160]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je proc_tak$2F4_ω
 jmp proc_tak$2F4_ω
 xchain0_n14_β:
 jmp proc_tak$2F4_ω
 xchain0_n15_α:
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
.Lx25_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx25_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx25_41
 cmp esi, 1
 jne .Lx25_55
 mov r8, rax
 jmp .Lx25_40
.Lx25_55:
 cmp esi, 2
 jne .Lx25_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx25_41
 mov r8, rax
 jmp .Lx25_40
.Lx25_56:
 cmp eax, 13
 jne .Lx25_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx25_41
 cmp rax, r8
 je .Lx25_41
 mov r8, rax
 jmp .Lx25_40
.Lx25_41:
 lea r9, [rbp + 2656]
.Lx25_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx25_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx25_43
 cmp esi, 1
 jne .Lx25_57
 mov r9, rax
 jmp .Lx25_42
.Lx25_57:
 cmp esi, 2
 jne .Lx25_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx25_43
 mov r9, rax
 jmp .Lx25_42
.Lx25_58:
 cmp eax, 13
 jne .Lx25_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx25_43
 cmp rax, r9
 je .Lx25_43
 mov r9, rax
 jmp .Lx25_42
.Lx25_43:
 cmp r8, r9
 je .Lx25_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx25_44
 cmp eax, 99
 je .Lx25_44
 cmp eax, 13
 jne .Lx25_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx25_44
 jmp .Lx25_45
.Lx25_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx25_53
 cmp eax, 99
 je .Lx25_53
 cmp eax, 13
 jne .Lx25_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx25_53
 jmp .Lx25_46
.Lx25_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx25_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx25_53
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
 jmp .Lx25_51
.Lx25_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx25_47
 cmp eax, 99
 je .Lx25_47
 cmp eax, 13
 jne .Lx25_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx25_47
 jmp .Lx25_48
.Lx25_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx25_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx25_53
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
 jmp .Lx25_51
.Lx25_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx25_49
 cmp edx, 14
 je .Lx25_53
 jmp .Lx25_52
.Lx25_49:
 cmp edx, 14
 je .Lx25_52
 cmp ecx, 7
 je .Lx25_53
 cmp edx, 7
 je .Lx25_53
 cmp ecx, 6
 jne .Lx25_50
 cmp edx, 6
 jne .Lx25_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx25_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx25_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx25_51
 jmp .Lx25_52
.Lx25_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx25_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx25_53
.Lx25_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx25_54
.Lx25_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx25_54
.Lx25_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx25_54:
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3072]
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain0_n18_α
# IR_VAR_REF
 xchain0_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain0_n19_α
 xchain0_n18_α:
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
.Lx30_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx30_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx30_41
 cmp esi, 1
 jne .Lx30_55
 mov r8, rax
 jmp .Lx30_40
.Lx30_55:
 cmp esi, 2
 jne .Lx30_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx30_41
 mov r8, rax
 jmp .Lx30_40
.Lx30_56:
 cmp eax, 13
 jne .Lx30_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx30_41
 cmp rax, r8
 je .Lx30_41
 mov r8, rax
 jmp .Lx30_40
.Lx30_41:
 lea r9, [rbp + 2064]
.Lx30_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx30_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx30_43
 cmp esi, 1
 jne .Lx30_57
 mov r9, rax
 jmp .Lx30_42
.Lx30_57:
 cmp esi, 2
 jne .Lx30_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx30_43
 mov r9, rax
 jmp .Lx30_42
.Lx30_58:
 cmp eax, 13
 jne .Lx30_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx30_43
 cmp rax, r9
 je .Lx30_43
 mov r9, rax
 jmp .Lx30_42
.Lx30_43:
 cmp r8, r9
 je .Lx30_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx30_44
 cmp eax, 99
 je .Lx30_44
 cmp eax, 13
 jne .Lx30_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx30_44
 jmp .Lx30_45
.Lx30_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx30_53
 cmp eax, 99
 je .Lx30_53
 cmp eax, 13
 jne .Lx30_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx30_53
 jmp .Lx30_46
.Lx30_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx30_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx30_53
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
 jmp .Lx30_51
.Lx30_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx30_47
 cmp eax, 99
 je .Lx30_47
 cmp eax, 13
 jne .Lx30_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx30_47
 jmp .Lx30_48
.Lx30_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx30_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx30_53
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
 jmp .Lx30_51
.Lx30_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx30_49
 cmp edx, 14
 je .Lx30_53
 jmp .Lx30_52
.Lx30_49:
 cmp edx, 14
 je .Lx30_52
 cmp ecx, 7
 je .Lx30_53
 cmp edx, 7
 je .Lx30_53
 cmp ecx, 6
 jne .Lx30_50
 cmp edx, 6
 jne .Lx30_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx30_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx30_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx30_51
 jmp .Lx30_52
.Lx30_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx30_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx30_53
.Lx30_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx30_54
.Lx30_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx30_54
.Lx30_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx30_54:
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3024]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain0_n21_α
# IR_VAR_REF
 xchain0_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain0_n22_α
 xchain0_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2528]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2536], rax
# marshal arg1 = producer-box slot [zr+2592] -> [zr+2544]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2552], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2528]
 lea r8, [rbp + 2528]
.Lx35_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx35_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx35_41
 cmp esi, 1
 jne .Lx35_55
 mov r8, rax
 jmp .Lx35_40
.Lx35_55:
 cmp esi, 2
 jne .Lx35_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx35_41
 mov r8, rax
 jmp .Lx35_40
.Lx35_56:
 cmp eax, 13
 jne .Lx35_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx35_41
 cmp rax, r8
 je .Lx35_41
 mov r8, rax
 jmp .Lx35_40
.Lx35_41:
 lea r9, [rbp + 2544]
.Lx35_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx35_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx35_43
 cmp esi, 1
 jne .Lx35_57
 mov r9, rax
 jmp .Lx35_42
.Lx35_57:
 cmp esi, 2
 jne .Lx35_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx35_43
 mov r9, rax
 jmp .Lx35_42
.Lx35_58:
 cmp eax, 13
 jne .Lx35_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx35_43
 cmp rax, r9
 je .Lx35_43
 mov r9, rax
 jmp .Lx35_42
.Lx35_43:
 cmp r8, r9
 je .Lx35_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx35_44
 cmp eax, 99
 je .Lx35_44
 cmp eax, 13
 jne .Lx35_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx35_44
 jmp .Lx35_45
.Lx35_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx35_53
 cmp eax, 99
 je .Lx35_53
 cmp eax, 13
 jne .Lx35_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx35_53
 jmp .Lx35_46
.Lx35_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx35_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx35_53
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
 jmp .Lx35_51
.Lx35_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx35_47
 cmp eax, 99
 je .Lx35_47
 cmp eax, 13
 jne .Lx35_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx35_47
 jmp .Lx35_48
.Lx35_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx35_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx35_53
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
 jmp .Lx35_51
.Lx35_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx35_49
 cmp edx, 14
 je .Lx35_53
 jmp .Lx35_52
.Lx35_49:
 cmp edx, 14
 je .Lx35_52
 cmp ecx, 7
 je .Lx35_53
 cmp edx, 7
 je .Lx35_53
 cmp ecx, 6
 jne .Lx35_50
 cmp edx, 6
 jne .Lx35_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx35_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx35_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx35_51
 jmp .Lx35_52
.Lx35_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx35_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx35_53
.Lx35_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx35_54
.Lx35_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx35_54
.Lx35_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx35_54:
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3088]
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain0_n24_α
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [rbp + 3056]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 3064]
 mov qword ptr [rbp + 2456], rax
 jmp xchain0_n25_α
 xchain0_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1968] -> [zr+1936]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1944], rax
# marshal arg1 = producer-box slot [zr+2000] -> [zr+1952]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1960], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1936]
 lea r8, [rbp + 1936]
.Lx40_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx40_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx40_41
 cmp esi, 1
 jne .Lx40_55
 mov r8, rax
 jmp .Lx40_40
.Lx40_55:
 cmp esi, 2
 jne .Lx40_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx40_41
 mov r8, rax
 jmp .Lx40_40
.Lx40_56:
 cmp eax, 13
 jne .Lx40_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx40_41
 cmp rax, r8
 je .Lx40_41
 mov r8, rax
 jmp .Lx40_40
.Lx40_41:
 lea r9, [rbp + 1952]
.Lx40_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx40_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx40_43
 cmp esi, 1
 jne .Lx40_57
 mov r9, rax
 jmp .Lx40_42
.Lx40_57:
 cmp esi, 2
 jne .Lx40_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx40_43
 mov r9, rax
 jmp .Lx40_42
.Lx40_58:
 cmp eax, 13
 jne .Lx40_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx40_43
 cmp rax, r9
 je .Lx40_43
 mov r9, rax
 jmp .Lx40_42
.Lx40_43:
 cmp r8, r9
 je .Lx40_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx40_44
 cmp eax, 99
 je .Lx40_44
 cmp eax, 13
 jne .Lx40_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx40_44
 jmp .Lx40_45
.Lx40_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx40_53
 cmp eax, 99
 je .Lx40_53
 cmp eax, 13
 jne .Lx40_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx40_53
 jmp .Lx40_46
.Lx40_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx40_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx40_53
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
 jmp .Lx40_51
.Lx40_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx40_47
 cmp eax, 99
 je .Lx40_47
 cmp eax, 13
 jne .Lx40_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx40_47
 jmp .Lx40_48
.Lx40_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx40_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx40_53
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
 jmp .Lx40_51
.Lx40_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx40_49
 cmp edx, 14
 je .Lx40_53
 jmp .Lx40_52
.Lx40_49:
 cmp edx, 14
 je .Lx40_52
 cmp ecx, 7
 je .Lx40_53
 cmp edx, 7
 je .Lx40_53
 cmp ecx, 6
 jne .Lx40_50
 cmp edx, 6
 jne .Lx40_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx40_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx40_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx40_51
 jmp .Lx40_52
.Lx40_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx40_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx40_53
.Lx40_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx40_54
.Lx40_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx40_54
.Lx40_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx40_54:
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 2488], rax
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain0_n28_α
 xchain0_n27_α:
# BOX IR_CALL $cmp_le(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2448] -> [zr+2416]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2424], rax
# marshal arg1 = producer-box slot [zr+2480] -> [zr+2432]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_le (no by-name dispatch)
 lea rdi, [rbp + 2416]
 mov esi, 2
 call rt_pl_dop_cmp_le@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3024]
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain0_n30_α
# IR_VAR_REF
 xchain0_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3088]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 jmp xchain0_n31_α
 xchain0_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1856] -> [zr+1824]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1832], rax
# marshal arg1 = producer-box slot [zr+1888] -> [zr+1840]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1848], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1824]
 lea r8, [rbp + 1824]
.Lx50_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx50_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx50_41
 cmp esi, 1
 jne .Lx50_55
 mov r8, rax
 jmp .Lx50_40
.Lx50_55:
 cmp esi, 2
 jne .Lx50_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx50_41
 mov r8, rax
 jmp .Lx50_40
.Lx50_56:
 cmp eax, 13
 jne .Lx50_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx50_41
 cmp rax, r8
 je .Lx50_41
 mov r8, rax
 jmp .Lx50_40
.Lx50_41:
 lea r9, [rbp + 1840]
.Lx50_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx50_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx50_43
 cmp esi, 1
 jne .Lx50_57
 mov r9, rax
 jmp .Lx50_42
.Lx50_57:
 cmp esi, 2
 jne .Lx50_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx50_43
 mov r9, rax
 jmp .Lx50_42
.Lx50_58:
 cmp eax, 13
 jne .Lx50_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx50_43
 cmp rax, r9
 je .Lx50_43
 mov r9, rax
 jmp .Lx50_42
.Lx50_43:
 cmp r8, r9
 je .Lx50_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx50_44
 cmp eax, 99
 je .Lx50_44
 cmp eax, 13
 jne .Lx50_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx50_44
 jmp .Lx50_45
.Lx50_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx50_53
 cmp eax, 99
 je .Lx50_53
 cmp eax, 13
 jne .Lx50_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx50_53
 jmp .Lx50_46
.Lx50_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx50_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx50_53
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
 jmp .Lx50_51
.Lx50_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx50_47
 cmp eax, 99
 je .Lx50_47
 cmp eax, 13
 jne .Lx50_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx50_47
 jmp .Lx50_48
.Lx50_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx50_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx50_53
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
 jmp .Lx50_51
.Lx50_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx50_49
 cmp edx, 14
 je .Lx50_53
 jmp .Lx50_52
.Lx50_49:
 cmp edx, 14
 je .Lx50_52
 cmp ecx, 7
 je .Lx50_53
 cmp edx, 7
 je .Lx50_53
 cmp ecx, 6
 jne .Lx50_50
 cmp edx, 6
 jne .Lx50_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx50_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx50_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx50_51
 jmp .Lx50_52
.Lx50_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx50_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx50_53
.Lx50_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx50_54
.Lx50_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx50_54
.Lx50_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx50_54:
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3024]
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain0_n33_α
# IR_VAR
 xchain0_n32_α:
 mov rax, qword ptr [rbp + 3056]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 3064]
 mov qword ptr [rbp + 1752], rax
 jmp xchain0_n34_α
 xchain0_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2336] -> [zr+2304]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2312], rax
# marshal arg1 = producer-box slot [zr+2368] -> [zr+2320]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2328], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2304]
 lea r8, [rbp + 2304]
.Lx55_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx55_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx55_41
 cmp esi, 1
 jne .Lx55_55
 mov r8, rax
 jmp .Lx55_40
.Lx55_55:
 cmp esi, 2
 jne .Lx55_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx55_41
 mov r8, rax
 jmp .Lx55_40
.Lx55_56:
 cmp eax, 13
 jne .Lx55_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx55_41
 cmp rax, r8
 je .Lx55_41
 mov r8, rax
 jmp .Lx55_40
.Lx55_41:
 lea r9, [rbp + 2320]
.Lx55_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx55_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx55_43
 cmp esi, 1
 jne .Lx55_57
 mov r9, rax
 jmp .Lx55_42
.Lx55_57:
 cmp esi, 2
 jne .Lx55_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx55_43
 mov r9, rax
 jmp .Lx55_42
.Lx55_58:
 cmp eax, 13
 jne .Lx55_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx55_43
 cmp rax, r9
 je .Lx55_43
 mov r9, rax
 jmp .Lx55_42
.Lx55_43:
 cmp r8, r9
 je .Lx55_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx55_44
 cmp eax, 99
 je .Lx55_44
 cmp eax, 13
 jne .Lx55_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx55_44
 jmp .Lx55_45
.Lx55_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx55_53
 cmp eax, 99
 je .Lx55_53
 cmp eax, 13
 jne .Lx55_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx55_53
 jmp .Lx55_46
.Lx55_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx55_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx55_53
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
 jmp .Lx55_51
.Lx55_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx55_47
 cmp eax, 99
 je .Lx55_47
 cmp eax, 13
 jne .Lx55_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx55_47
 jmp .Lx55_48
.Lx55_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx55_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx55_53
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
 jmp .Lx55_51
.Lx55_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx55_49
 cmp edx, 14
 je .Lx55_53
 jmp .Lx55_52
.Lx55_49:
 cmp edx, 14
 je .Lx55_52
 cmp ecx, 7
 je .Lx55_53
 cmp edx, 7
 je .Lx55_53
 cmp ecx, 6
 jne .Lx55_50
 cmp edx, 6
 jne .Lx55_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx55_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx55_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx55_51
 jmp .Lx55_52
.Lx55_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx55_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx55_53
.Lx55_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx55_54
.Lx55_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx55_54
.Lx55_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx55_54:
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n5_α
# IR_VAR
 xchain0_n34_α:
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 1784], rax
 jmp xchain0_n36_α
# IR_MOVE_LABEL
 xchain0_n35_α:
 lea rax, [rip + xchain0_n5_α]
 mov qword ptr [rbp + 96], rax
 jmp proc_tak$2F4_γ
 xchain0_n36_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1744] -> [zr+1712]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1720], rax
# marshal arg1 = producer-box slot [zr+1776] -> [zr+1728]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1736], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_gt (no by-name dispatch)
 lea rdi, [rbp + 1712]
 mov esi, 2
 call rt_pl_dop_cmp_gt@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n38_α
 xchain0_n36_β:
 jmp xchain0_n14_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n37_α:
 jmp qword ptr [rbp + 96]
 xchain0_n37_β:
 jmp proc_tak$2F4_ω
# IR_VAR_REF
 xchain0_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3120]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain0_n39_α
# IR_VAR
 xchain0_n39_α:
 mov rax, qword ptr [rbp + 3056]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 3064]
 mov qword ptr [rbp + 1640], rax
 jmp xchain0_n40_α
# IR_LIT_INTEGER
 xchain0_n40_α:
 mov qword ptr [rbp + 1664], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain0_n41_α
.Lx67_0:
 .quad 1
 xchain0_n41_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1632] -> [zr+1584]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1592], rax
# marshal arg1 = producer-box slot [zr+1664] -> [zr+1600]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 1584]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n42_α
 xchain0_n41_β:
 jmp xchain0_n14_α
 xchain0_n42_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1504]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1512], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1520]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 1504]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n43_α
 xchain0_n42_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3120]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain0_n44_α
# IR_VAR_REF
 xchain0_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3072]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain0_n45_α
# IR_VAR_REF
 xchain0_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3088]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain0_n46_α
# IR_VAR_REF
 xchain0_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2976]
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain0_n47_α
 xchain0_n47_α:
 lea rsi, [rbp + 1360]
 lea rdx, [rbp + 1392]
 lea rcx, [rbp + 1424]
 lea r8, [rbp + 1456]
 call proc_tak$2F4_dcα
 jmp .Lx79_2
.Lx79_2:
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp xchain0_n14_α
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "tak/4"
# IR_VAR_REF
 xchain0_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3104]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain0_n49_α
# IR_VAR
 xchain0_n49_α:
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 1208], rax
 jmp xchain0_n50_α
# IR_LIT_INTEGER
 xchain0_n50_α:
 mov qword ptr [rbp + 1232], 6
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain0_n51_α
.Lx84_0:
 .quad 1
 xchain0_n51_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1152]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1160], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1168]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 1152]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n52_α
 xchain0_n51_β:
 jmp xchain0_n14_α
 xchain0_n52_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain0_n47_β
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp xchain0_n47_β
# IR_VAR_REF
 xchain0_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3104]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain0_n54_α
# IR_VAR_REF
 xchain0_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3088]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain0_n55_α
# IR_VAR_REF
 xchain0_n55_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3056]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain0_n56_α
# IR_VAR_REF
 xchain0_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2992]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain0_n57_α
 xchain0_n57_α:
 lea rsi, [rbp + 928]
 lea rdx, [rbp + 960]
 lea rcx, [rbp + 992]
 lea r8, [rbp + 1024]
 call proc_tak$2F4_dcα
 jmp .Lx96_2
.Lx96_2:
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain0_n47_β
 jmp xchain0_n58_α
 xchain0_n57_β:
 jmp xchain0_n47_β
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string "tak/4"
# IR_VAR_REF
 xchain0_n58_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3040]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain0_n59_α
# IR_VAR
 xchain0_n59_α:
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 776], rax
 jmp xchain0_n60_α
# IR_LIT_INTEGER
 xchain0_n60_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx101_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain0_n61_α
.Lx101_0:
 .quad 1
 xchain0_n61_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+720]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 728], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+736]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n62_α
 xchain0_n61_β:
 jmp xchain0_n14_α
 xchain0_n62_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 640]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain0_n57_β
 jmp xchain0_n63_α
 xchain0_n62_β:
 jmp xchain0_n57_β
# IR_VAR_REF
 xchain0_n63_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3040]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain0_n64_α
# IR_VAR_REF
 xchain0_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3056]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain0_n65_α
# IR_VAR_REF
 xchain0_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3072]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n66_α
# IR_VAR_REF
 xchain0_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3008]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain0_n67_α
 xchain0_n67_α:
 lea rsi, [rbp + 496]
 lea rdx, [rbp + 528]
 lea rcx, [rbp + 560]
 lea r8, [rbp + 592]
 call proc_tak$2F4_dcα
 jmp .Lx113_2
.Lx113_2:
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain0_n57_β
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n57_β
.Lx113_0:
 .quad .Lx113_0_s
.Lx113_0_s:
 .string "tak/4"
# IR_VAR_REF
 xchain0_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2976]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain0_n69_α
# IR_VAR_REF
 xchain0_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2992]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain0_n70_α
# IR_VAR_REF
 xchain0_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3008]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain0_n71_α
# IR_VAR_REF
 xchain0_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3024]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain0_n72_α
 xchain0_n72_α:
 lea rsi, [rbp + 272]
 lea rdx, [rbp + 304]
 lea rcx, [rbp + 336]
 lea r8, [rbp + 368]
 call proc_tak$2F4_dcα
 jmp .Lx123_2
.Lx123_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain0_n67_β
 jmp xchain0_n73_α
 xchain0_n72_β:
 jmp xchain0_n67_β
.Lx123_0:
 .quad .Lx123_0_s
.Lx123_0_s:
 .string "tak/4"
# IR_MOVE_LABEL
 xchain0_n73_α:
 lea rax, [rip + xchain0_n72_β]
 mov qword ptr [rbp + 96], rax
 jmp proc_tak$2F4_γ
proc_tak$2F4_res:
add rsp, 8
pop rbp
proc_tak$2F4_β:
jmp xchain0_n37_α
proc_tak$2F4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 3144]
lea rsp, [rbp + 3168]
mov rbp, [rbp + 3160]
jmp rax
proc_tak$2F4_ω:
mov rax, [rbp + 3152]
lea rsp, [rbp + 3168]
mov rbp, [rbp + 3160]
jmp rax
proc_tak$2F4_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 3184
 mov qword ptr [rsp + 3176], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 3136], r11
 lea rax, [rip + .Lx126_2]
 mov qword ptr [rbp + 3144], rax
 lea rax, [rip + .Lx126_3]
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 2968], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov qword ptr [rbp + 32], rcx
 mov qword ptr [rbp + 40], r8
 mov rdi, rbp
 mov esi, 2960
 mov edx, 3136
 mov ecx, 4
 mov r8d, 4
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_tak$2F4_α_body
.Lx126_2:
 mov rdx, qword ptr [rsp + -3184]
 mov rcx, rsp
 add rcx, -3168
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx126_3:
 mov rdi, qword ptr [rsp + -3184]
 mov rsi, rsp
 add rsi, -3168
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "tak/4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_tak$2F4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3136
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_tak$2F4_dcα]
  call rt_proc_set_dcfn@PLT
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
  mov qword ptr [rsp + 472], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain127_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx128_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx128_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx128_101
.Lx128_100:
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx128_101:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain127_n1_α
 xchain127_n0_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain127_n1_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx129_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain127_n2_α
.Lx129_0:
 .quad 18
# IR_LIT_INTEGER
 xchain127_n2_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain127_n3_α
.Lx130_0:
 .quad 12
# IR_LIT_INTEGER
 xchain127_n3_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx131_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain127_n4_α
.Lx131_0:
 .quad 6
# IR_VAR_REF
 xchain127_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain127_n5_α
 xchain127_n5_α:
 lea rsi, [rbp + 336]
 lea rdx, [rbp + 368]
 lea rcx, [rbp + 400]
 lea r8, [rbp + 432]
 call proc_tak$2F4_dcα
 jmp .Lx135_2
.Lx135_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain127_n7_α
 jmp xchain127_n6_α
 xchain127_n5_β:
 jmp xchain127_n7_α
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "tak/4"
# IR_VAR
 xchain127_n6_α:
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 216], rax
 jmp xchain127_n8_α
 xchain127_n7_α:
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
 xchain127_n7_β:
 jmp main_ω
 xchain127_n8_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn140: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn140]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain127_n5_β
 jmp xchain127_n9_α
 xchain127_n8_β:
 jmp xchain127_n5_β
# IR_LIT_STRING
 xchain127_n9_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain127_n10_α
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string ""
 xchain127_n10_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn143: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn143]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain127_n5_β
 jmp xchain127_n11_α
 xchain127_n10_β:
 jmp xchain127_n5_β
# IR_MOVE_LABEL
 xchain127_n11_α:
 lea rax, [rip + xchain127_n5_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain127_n12_α:
 jmp qword ptr [rbp + 32]
 xchain127_n12_β:
 jmp main_ω
main_β:
jmp xchain127_n12_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 472]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 472]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
