  .intel_syntax noprefix
  .text
  .globl proc_sel$2F3_α
proc_sel$2F3_α:
#=======================================================================================================================
    .global proc_sel$2F3_α
    .global proc_sel$2F3_β
    .global proc_sel$2F3_γ
    .global proc_sel$2F3_ω
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
proc_sel$2F3_α_body:
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
 je proc_sel$2F3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_sel$2F3_ω
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
 je proc_sel$2F3_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_sel$2F3_ω
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
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 992]
 lea r8, [rbp + 992]
.Lx18_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx18_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx18_61
 cmp esi, 1
 jne .Lx18_62
 mov r8, rax
 jmp .Lx18_60
.Lx18_62:
 cmp esi, 2
 jne .Lx18_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx18_61
 mov r8, rax
 jmp .Lx18_60
.Lx18_63:
 cmp eax, 13
 jne .Lx18_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx18_61
 cmp rax, r8
 je .Lx18_61
 mov r8, rax
 jmp .Lx18_60
.Lx18_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx18_72
 cmp eax, 99
 je .Lx18_72
 cmp eax, 13
 jne .Lx18_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx18_72
 jmp .Lx18_74
.Lx18_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx18_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx18_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx18_73
 lea r9, [rbp + 1008]
.Lx18_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx18_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx18_65
 cmp esi, 1
 jne .Lx18_66
 mov r9, rax
 jmp .Lx18_64
.Lx18_66:
 cmp esi, 2
 jne .Lx18_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx18_65
 mov r9, rax
 jmp .Lx18_64
.Lx18_67:
 cmp eax, 13
 jne .Lx18_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx18_65
 cmp rax, r9
 je .Lx18_65
 mov r9, rax
 jmp .Lx18_64
.Lx18_65:
 lea rcx, [rbp + 1024]
.Lx18_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx18_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx18_69
 cmp esi, 1
 jne .Lx18_70
 mov rcx, rax
 jmp .Lx18_68
.Lx18_70:
 cmp esi, 2
 jne .Lx18_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx18_69
 mov rcx, rax
 jmp .Lx18_68
.Lx18_71:
 cmp eax, 13
 jne .Lx18_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx18_69
 cmp rax, rcx
 je .Lx18_69
 mov rcx, rax
 jmp .Lx18_68
.Lx18_69:
 cmp r9, rcx
 je .Lx18_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx18_75
 cmp eax, 99
 je .Lx18_75
 cmp eax, 13
 jne .Lx18_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx18_75
 jmp .Lx18_72
.Lx18_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx18_76
 cmp eax, 99
 je .Lx18_76
 cmp eax, 13
 jne .Lx18_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx18_76
 jmp .Lx18_72
.Lx18_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx18_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx18_72
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov qword ptr [r11 + 24], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 32], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 40], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 2
 mov dword ptr [r10 + 32], eax
 mov r10, qword ptr [r8 + 8]
 mov rax, qword ptr [r10 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r10 + 8]
 mov qword ptr [r9 + 8], rax
 mov rax, qword ptr [r10 + 16]
 mov qword ptr [rcx + 0], rax
 mov rax, qword ptr [r10 + 24]
 mov qword ptr [rcx + 8], rax
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx18_77
.Lx18_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx18_77
.Lx18_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx18_77:
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
 je proc_sel$2F3_ω
 jmp proc_sel$2F3_ω
 xchain0_n14_β:
 jmp proc_sel$2F3_ω
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
 jmp proc_sel$2F3_γ
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
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 560]
 lea r8, [rbp + 560]
.Lx34_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx34_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx34_61
 cmp esi, 1
 jne .Lx34_62
 mov r8, rax
 jmp .Lx34_60
.Lx34_62:
 cmp esi, 2
 jne .Lx34_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx34_61
 mov r8, rax
 jmp .Lx34_60
.Lx34_63:
 cmp eax, 13
 jne .Lx34_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx34_61
 cmp rax, r8
 je .Lx34_61
 mov r8, rax
 jmp .Lx34_60
.Lx34_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx34_72
 cmp eax, 99
 je .Lx34_72
 cmp eax, 13
 jne .Lx34_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx34_72
 jmp .Lx34_74
.Lx34_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx34_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx34_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx34_73
 lea r9, [rbp + 576]
.Lx34_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx34_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx34_65
 cmp esi, 1
 jne .Lx34_66
 mov r9, rax
 jmp .Lx34_64
.Lx34_66:
 cmp esi, 2
 jne .Lx34_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx34_65
 mov r9, rax
 jmp .Lx34_64
.Lx34_67:
 cmp eax, 13
 jne .Lx34_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx34_65
 cmp rax, r9
 je .Lx34_65
 mov r9, rax
 jmp .Lx34_64
.Lx34_65:
 lea rcx, [rbp + 592]
.Lx34_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx34_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx34_69
 cmp esi, 1
 jne .Lx34_70
 mov rcx, rax
 jmp .Lx34_68
.Lx34_70:
 cmp esi, 2
 jne .Lx34_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx34_69
 mov rcx, rax
 jmp .Lx34_68
.Lx34_71:
 cmp eax, 13
 jne .Lx34_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx34_69
 cmp rax, rcx
 je .Lx34_69
 mov rcx, rax
 jmp .Lx34_68
.Lx34_69:
 cmp r9, rcx
 je .Lx34_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx34_75
 cmp eax, 99
 je .Lx34_75
 cmp eax, 13
 jne .Lx34_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx34_75
 jmp .Lx34_72
.Lx34_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx34_76
 cmp eax, 99
 je .Lx34_76
 cmp eax, 13
 jne .Lx34_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx34_76
 jmp .Lx34_72
.Lx34_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx34_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx34_72
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov qword ptr [r11 + 24], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 32], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 40], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 2
 mov dword ptr [r10 + 32], eax
 mov r10, qword ptr [r8 + 8]
 mov rax, qword ptr [r10 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r10 + 8]
 mov qword ptr [r9 + 8], rax
 mov rax, qword ptr [r10 + 16]
 mov qword ptr [rcx + 0], rax
 mov rax, qword ptr [r10 + 24]
 mov qword ptr [rcx + 8], rax
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx34_77
.Lx34_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx34_77
.Lx34_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx34_77:
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
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 400]
 lea r8, [rbp + 400]
.Lx41_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx41_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx41_61
 cmp esi, 1
 jne .Lx41_62
 mov r8, rax
 jmp .Lx41_60
.Lx41_62:
 cmp esi, 2
 jne .Lx41_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx41_61
 mov r8, rax
 jmp .Lx41_60
.Lx41_63:
 cmp eax, 13
 jne .Lx41_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx41_61
 cmp rax, r8
 je .Lx41_61
 mov r8, rax
 jmp .Lx41_60
.Lx41_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx41_72
 cmp eax, 99
 je .Lx41_72
 cmp eax, 13
 jne .Lx41_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx41_72
 jmp .Lx41_74
.Lx41_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx41_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx41_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx41_73
 lea r9, [rbp + 416]
.Lx41_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx41_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx41_65
 cmp esi, 1
 jne .Lx41_66
 mov r9, rax
 jmp .Lx41_64
.Lx41_66:
 cmp esi, 2
 jne .Lx41_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx41_65
 mov r9, rax
 jmp .Lx41_64
.Lx41_67:
 cmp eax, 13
 jne .Lx41_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx41_65
 cmp rax, r9
 je .Lx41_65
 mov r9, rax
 jmp .Lx41_64
.Lx41_65:
 lea rcx, [rbp + 432]
.Lx41_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx41_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx41_69
 cmp esi, 1
 jne .Lx41_70
 mov rcx, rax
 jmp .Lx41_68
.Lx41_70:
 cmp esi, 2
 jne .Lx41_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx41_69
 mov rcx, rax
 jmp .Lx41_68
.Lx41_71:
 cmp eax, 13
 jne .Lx41_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx41_69
 cmp rax, rcx
 je .Lx41_69
 mov rcx, rax
 jmp .Lx41_68
.Lx41_69:
 cmp r9, rcx
 je .Lx41_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx41_75
 cmp eax, 99
 je .Lx41_75
 cmp eax, 13
 jne .Lx41_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx41_75
 jmp .Lx41_72
.Lx41_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx41_76
 cmp eax, 99
 je .Lx41_76
 cmp eax, 13
 jne .Lx41_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx41_76
 jmp .Lx41_72
.Lx41_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx41_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx41_72
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov qword ptr [r11 + 24], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 32], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 40], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 2
 mov dword ptr [r10 + 32], eax
 mov r10, qword ptr [r8 + 8]
 mov rax, qword ptr [r10 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r10 + 8]
 mov qword ptr [r9 + 8], rax
 mov rax, qword ptr [r10 + 16]
 mov qword ptr [rcx + 0], rax
 mov rax, qword ptr [r10 + 24]
 mov qword ptr [rcx + 8], rax
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx41_77
.Lx41_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx41_77
.Lx41_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx41_77:
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
 .string "sel/3"
# IR_SUSPEND yield+resume
 xchain0_n29_α:
 lea rax, [rip + xchain0_n29_β]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_sel$2F3_γ
 xchain0_n29_β:
 jmp xchain0_n28_β
proc_sel$2F3_res:
add rsp, 8
pop rbp
proc_sel$2F3_β:
jmp qword ptr [rbp + 1216]
proc_sel$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_sel$2F3_res]
push rax
mov rax, [rbp + 1336]
mov rbp, [rbp + 1352]
jmp rax
proc_sel$2F3_ω:
mov rax, [rbp + 1344]
lea rsp, [rbp + 1360]
mov rbp, [rbp + 1352]
jmp rax
  .globl proc_q10$2F1_α
proc_q10$2F1_α:
#=======================================================================================================================
    .global proc_q10$2F1_α
    .global proc_q10$2F1_β
    .global proc_q10$2F1_γ
    .global proc_q10$2F1_ω
  sub rsp, 1904
  mov [rsp + 1880], rcx
  mov [rsp + 1888], rdx
  mov [rsp + 1896], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1848], rsp
  mov rdi, rsp
  mov esi, 1824
  mov edx, 1872
  call rt_jmp_frame_lexprep2@PLT
proc_q10$2F1_α_body:
lea rax, [rip + xchain52_n38_β]
mov qword ptr [rbp + 1824], rax
 xchain52_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_q10$2F1_ω
 jmp xchain52_n1_α
 xchain52_n0_β:
 jmp proc_q10$2F1_ω
# IR_VAR_REF
 xchain52_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain52_n2_α
# IR_VAR_REF
 xchain52_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1856]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain52_n3_α
 xchain52_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1760] -> [zr+1728]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1736], rax
# marshal arg1 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1752], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1728]
 lea r8, [rbp + 1728]
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
 lea r9, [rbp + 1744]
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
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n4_α
 xchain52_n3_β:
 jmp xchain52_n5_α
# IR_LIT_STRING
 xchain52_n4_α:
 mov qword ptr [rbp + 1648], 1
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain52_n6_α
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "."
 xchain52_n5_α:
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
 je proc_q10$2F1_ω
 jmp proc_q10$2F1_ω
 xchain52_n5_β:
 jmp proc_q10$2F1_ω
# IR_LIT_INTEGER
 xchain52_n6_α:
 mov qword ptr [rbp + 1536], 6
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain52_n7_α
.Lx61_0:
 .quad 1
# IR_LIT_STRING
 xchain52_n7_α:
 mov qword ptr [rbp + 1504], 1
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain52_n8_α
.Lx62_0:
 .quad .Lx62_0_s
.Lx62_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n8_α:
 mov qword ptr [rbp + 1392], 6
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [rbp + 1400], rax
 jmp xchain52_n9_α
.Lx63_0:
 .quad 2
# IR_LIT_STRING
 xchain52_n9_α:
 mov qword ptr [rbp + 1360], 1
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [rbp + 1368], rax
 jmp xchain52_n10_α
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n10_α:
 mov qword ptr [rbp + 1248], 6
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain52_n11_α
.Lx65_0:
 .quad 3
# IR_LIT_STRING
 xchain52_n11_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain52_n12_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n12_α:
 mov qword ptr [rbp + 1104], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain52_n13_α
.Lx67_0:
 .quad 4
# IR_LIT_STRING
 xchain52_n13_α:
 mov qword ptr [rbp + 1072], 1
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain52_n14_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n14_α:
 mov qword ptr [rbp + 960], 6
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain52_n15_α
.Lx69_0:
 .quad 5
# IR_LIT_STRING
 xchain52_n15_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain52_n16_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n16_α:
 mov qword ptr [rbp + 816], 6
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain52_n17_α
.Lx71_0:
 .quad 6
# IR_LIT_STRING
 xchain52_n17_α:
 mov qword ptr [rbp + 784], 1
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain52_n18_α
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n18_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain52_n19_α
.Lx73_0:
 .quad 7
# IR_LIT_STRING
 xchain52_n19_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain52_n20_α
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n20_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain52_n21_α
.Lx75_0:
 .quad 8
# IR_LIT_STRING
 xchain52_n21_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx76_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain52_n22_α
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n22_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain52_n23_α
.Lx77_0:
 .quad 9
# IR_LIT_STRING
 xchain52_n23_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx78_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain52_n24_α
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain52_n24_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain52_n25_α
.Lx79_0:
 .quad 10
# IR_LIT_STRING
 xchain52_n25_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain52_n26_α
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "[]"
 xchain52_n26_α:
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
 je proc_q10$2F1_ω
 jmp xchain52_n27_α
 xchain52_n26_β:
 jmp proc_q10$2F1_ω
 xchain52_n27_α:
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
 je proc_q10$2F1_ω
 jmp xchain52_n28_α
 xchain52_n27_β:
 jmp proc_q10$2F1_ω
 xchain52_n28_α:
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
 je proc_q10$2F1_ω
 jmp xchain52_n29_α
 xchain52_n28_β:
 jmp proc_q10$2F1_ω
 xchain52_n29_α:
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
 je proc_q10$2F1_ω
 jmp xchain52_n30_α
 xchain52_n29_β:
 jmp proc_q10$2F1_ω
 xchain52_n30_α:
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
 je proc_q10$2F1_ω
 jmp xchain52_n31_α
 xchain52_n30_β:
 jmp proc_q10$2F1_ω
 xchain52_n31_α:
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
 je proc_q10$2F1_ω
 jmp xchain52_n32_α
 xchain52_n31_β:
 jmp proc_q10$2F1_ω
 xchain52_n32_α:
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
 je proc_q10$2F1_ω
 jmp xchain52_n33_α
 xchain52_n32_β:
 jmp proc_q10$2F1_ω
 xchain52_n33_α:
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
 je proc_q10$2F1_ω
 jmp xchain52_n34_α
 xchain52_n33_β:
 jmp proc_q10$2F1_ω
 xchain52_n34_α:
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
 je proc_q10$2F1_ω
 jmp xchain52_n35_α
 xchain52_n34_β:
 jmp proc_q10$2F1_ω
 xchain52_n35_α:
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
 je xchain52_n5_α
 jmp xchain52_n36_α
 xchain52_n35_β:
 jmp xchain52_n5_α
# IR_VAR_REF
 xchain52_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1856]
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain52_n37_α
 xchain52_n37_α:
 mov qword ptr [rbp + 176], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1568]
 mov rdx, qword ptr [rbp + 1576]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1680]
 mov rdx, qword ptr [rbp + 1688]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx94_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx94_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx94_3]
 lea rdx, [rip + .Lx94_4]
 jmp rax
.Lx94_3:
 mov qword ptr [rbp + 184], rsp
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx94_5
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx94_2
.Lx94_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx94_2
.Lx94_4:
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx94_6
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx94_2
.Lx94_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx94_2
.Lx94_1:
 call rt_faildescr@PLT
.Lx94_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n38_α
 xchain52_n37_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 184]
 jmp qword ptr [rsp]
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "q/2"
# IR_SUSPEND yield+resume
 xchain52_n38_α:
 lea rax, [rip + xchain52_n38_β]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_q10$2F1_γ
 xchain52_n38_β:
 jmp xchain52_n37_β
proc_q10$2F1_res:
add rsp, 8
pop rbp
proc_q10$2F1_β:
jmp qword ptr [rbp + 1824]
proc_q10$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_q10$2F1_res]
push rax
mov rax, [rbp + 1880]
mov rbp, [rbp + 1896]
jmp rax
proc_q10$2F1_ω:
mov rax, [rbp + 1888]
lea rsp, [rbp + 1904]
mov rbp, [rbp + 1896]
jmp rax
  .globl proc_test$2F2_α
proc_test$2F2_α:
#=======================================================================================================================
    .global proc_test$2F2_α
    .global proc_test$2F2_β
    .global proc_test$2F2_γ
    .global proc_test$2F2_ω
  sub rsp, 1392
  mov [rsp + 1368], rcx
  mov [rsp + 1376], rdx
  mov [rsp + 1384], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1304], rsp
  mov rdi, rsp
  mov esi, 1280
  mov edx, 1360
  call rt_jmp_frame_lexprep2@PLT
proc_test$2F2_α_body:
lea rax, [rip + xchain97_n19_β]
mov qword ptr [rbp + 1280], rax
 xchain97_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_test$2F2_ω
 jmp xchain97_n1_α
 xchain97_n0_β:
 jmp proc_test$2F2_ω
# IR_VAR_REF
 xchain97_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain97_n2_α
# IR_LIT_INTEGER
 xchain97_n2_α:
 mov qword ptr [rbp + 1216], 6
 mov rax, qword ptr [rip + .Lx101_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain97_n3_α
.Lx101_0:
 .quad 2
# IR_LIT_STRING
 xchain97_n3_α:
 mov qword ptr [rbp + 1248], 1
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain97_n4_α
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string "[]"
 xchain97_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1136]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1144], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1152]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1160], rax
# marshal arg2 = producer-box slot [zr+1248] -> [zr+1168]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1136]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain97_n6_α
 jmp xchain97_n5_α
 xchain97_n4_β:
 jmp xchain97_n6_α
# IR_VAR_REF
 xchain97_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain97_n7_α
# IR_VAR_REF
 xchain97_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain97_n8_α
# IR_LIT_STRING
 xchain97_n7_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx108_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain97_n9_α
.Lx108_0:
 .quad .Lx108_0_s
.Lx108_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain97_n8_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx109_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain97_n10_α
.Lx109_0:
 .quad 3
 xchain97_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1024]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1024]
 mov rsi, qword ptr [rip + .Lx110_2]
 jmp .Lx110_3
.Lx110_2:
 .quad .Lx110_2_s
.Lx110_2_s:
 .string "[]"
.Lx110_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain97_n12_α
 jmp xchain97_n11_α
 xchain97_n9_β:
 jmp xchain97_n12_α
# IR_LIT_INTEGER
 xchain97_n10_α:
 mov qword ptr [rbp + 816], 6
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain97_n13_α
.Lx111_0:
 .quad 0
# IR_VAR_REF
 xchain97_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain97_n14_α
 xchain97_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+864]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_test$2F2_ω
 jmp xchain97_n6_α
 xchain97_n12_β:
 jmp proc_test$2F2_ω
 xchain97_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+704]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 712], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+720]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 728], rax
# marshal arg2 = producer-box slot [zr+816] -> [zr+736]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 704]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain97_n16_α
 jmp xchain97_n15_α
 xchain97_n13_β:
 jmp xchain97_n16_α
# IR_VAR_REF
 xchain97_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain97_n17_α
# IR_VAR_REF
 xchain97_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain97_n18_α
 xchain97_n16_α:
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
 je proc_test$2F2_ω
 jmp proc_test$2F2_ω
 xchain97_n16_β:
 jmp proc_test$2F2_ω
 xchain97_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+912]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 936], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 912]
 lea r8, [rbp + 912]
.Lx121_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx121_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx121_41
 cmp esi, 1
 jne .Lx121_55
 mov r8, rax
 jmp .Lx121_40
.Lx121_55:
 cmp esi, 2
 jne .Lx121_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx121_41
 mov r8, rax
 jmp .Lx121_40
.Lx121_56:
 cmp eax, 13
 jne .Lx121_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx121_41
 cmp rax, r8
 je .Lx121_41
 mov r8, rax
 jmp .Lx121_40
.Lx121_41:
 lea r9, [rbp + 928]
.Lx121_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx121_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx121_43
 cmp esi, 1
 jne .Lx121_57
 mov r9, rax
 jmp .Lx121_42
.Lx121_57:
 cmp esi, 2
 jne .Lx121_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx121_43
 mov r9, rax
 jmp .Lx121_42
.Lx121_58:
 cmp eax, 13
 jne .Lx121_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx121_43
 cmp rax, r9
 je .Lx121_43
 mov r9, rax
 jmp .Lx121_42
.Lx121_43:
 cmp r8, r9
 je .Lx121_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx121_44
 cmp eax, 99
 je .Lx121_44
 cmp eax, 13
 jne .Lx121_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx121_44
 jmp .Lx121_45
.Lx121_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx121_53
 cmp eax, 99
 je .Lx121_53
 cmp eax, 13
 jne .Lx121_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx121_53
 jmp .Lx121_46
.Lx121_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx121_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx121_53
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
 jmp .Lx121_51
.Lx121_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx121_47
 cmp eax, 99
 je .Lx121_47
 cmp eax, 13
 jne .Lx121_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx121_47
 jmp .Lx121_48
.Lx121_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx121_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx121_53
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
 jmp .Lx121_51
.Lx121_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx121_49
 cmp edx, 14
 je .Lx121_53
 jmp .Lx121_52
.Lx121_49:
 cmp edx, 14
 je .Lx121_52
 cmp ecx, 7
 je .Lx121_53
 cmp edx, 7
 je .Lx121_53
 cmp ecx, 6
 jne .Lx121_50
 cmp edx, 6
 jne .Lx121_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx121_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx121_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx121_51
 jmp .Lx121_52
.Lx121_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx121_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx121_53
.Lx121_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx121_54
.Lx121_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx121_54
.Lx121_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx121_54:
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain97_n12_α
 jmp xchain97_n19_α
 xchain97_n17_β:
 jmp xchain97_n12_α
# IR_VAR_REF
 xchain97_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain97_n20_α
# IR_SUSPEND yield+resume
 xchain97_n19_α:
 lea rax, [rip + xchain97_n19_β]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_test$2F2_γ
 xchain97_n19_β:
 jmp xchain97_n12_α
# IR_VAR_REF
 xchain97_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1344]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain97_n21_α
 xchain97_n21_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+576]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+592]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 600], rax
# marshal arg2 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 576]
 lea r8, [rbp + 576]
.Lx128_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx128_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx128_61
 cmp esi, 1
 jne .Lx128_62
 mov r8, rax
 jmp .Lx128_60
.Lx128_62:
 cmp esi, 2
 jne .Lx128_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx128_61
 mov r8, rax
 jmp .Lx128_60
.Lx128_63:
 cmp eax, 13
 jne .Lx128_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx128_61
 cmp rax, r8
 je .Lx128_61
 mov r8, rax
 jmp .Lx128_60
.Lx128_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx128_72
 cmp eax, 99
 je .Lx128_72
 cmp eax, 13
 jne .Lx128_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx128_72
 jmp .Lx128_74
.Lx128_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx128_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx128_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx128_73
 lea r9, [rbp + 592]
.Lx128_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx128_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx128_65
 cmp esi, 1
 jne .Lx128_66
 mov r9, rax
 jmp .Lx128_64
.Lx128_66:
 cmp esi, 2
 jne .Lx128_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx128_65
 mov r9, rax
 jmp .Lx128_64
.Lx128_67:
 cmp eax, 13
 jne .Lx128_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx128_65
 cmp rax, r9
 je .Lx128_65
 mov r9, rax
 jmp .Lx128_64
.Lx128_65:
 lea rcx, [rbp + 608]
.Lx128_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx128_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx128_69
 cmp esi, 1
 jne .Lx128_70
 mov rcx, rax
 jmp .Lx128_68
.Lx128_70:
 cmp esi, 2
 jne .Lx128_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx128_69
 mov rcx, rax
 jmp .Lx128_68
.Lx128_71:
 cmp eax, 13
 jne .Lx128_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx128_69
 cmp rax, rcx
 je .Lx128_69
 mov rcx, rax
 jmp .Lx128_68
.Lx128_69:
 cmp r9, rcx
 je .Lx128_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx128_75
 cmp eax, 99
 je .Lx128_75
 cmp eax, 13
 jne .Lx128_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx128_75
 jmp .Lx128_72
.Lx128_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx128_76
 cmp eax, 99
 je .Lx128_76
 cmp eax, 13
 jne .Lx128_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx128_76
 jmp .Lx128_72
.Lx128_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx128_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx128_72
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov qword ptr [r11 + 24], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 32], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 40], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 2
 mov dword ptr [r10 + 32], eax
 mov r10, qword ptr [r8 + 8]
 mov rax, qword ptr [r10 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r10 + 8]
 mov qword ptr [r9 + 8], rax
 mov rax, qword ptr [r10 + 16]
 mov qword ptr [rcx + 0], rax
 mov rax, qword ptr [r10 + 24]
 mov qword ptr [rcx + 8], rax
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx128_77
.Lx128_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx128_77
.Lx128_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx128_77:
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain97_n16_α
 jmp xchain97_n22_α
 xchain97_n21_β:
 jmp xchain97_n16_α
# IR_VAR_REF
 xchain97_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain97_n23_α
# IR_VAR_REF
 xchain97_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain97_n24_α
 xchain97_n24_α:
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
.Lx133_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx133_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx133_41
 cmp esi, 1
 jne .Lx133_55
 mov r8, rax
 jmp .Lx133_40
.Lx133_55:
 cmp esi, 2
 jne .Lx133_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx133_41
 mov r8, rax
 jmp .Lx133_40
.Lx133_56:
 cmp eax, 13
 jne .Lx133_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx133_41
 cmp rax, r8
 je .Lx133_41
 mov r8, rax
 jmp .Lx133_40
.Lx133_41:
 lea r9, [rbp + 448]
.Lx133_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx133_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx133_43
 cmp esi, 1
 jne .Lx133_57
 mov r9, rax
 jmp .Lx133_42
.Lx133_57:
 cmp esi, 2
 jne .Lx133_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx133_43
 mov r9, rax
 jmp .Lx133_42
.Lx133_58:
 cmp eax, 13
 jne .Lx133_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx133_43
 cmp rax, r9
 je .Lx133_43
 mov r9, rax
 jmp .Lx133_42
.Lx133_43:
 cmp r8, r9
 je .Lx133_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx133_44
 cmp eax, 99
 je .Lx133_44
 cmp eax, 13
 jne .Lx133_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx133_44
 jmp .Lx133_45
.Lx133_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx133_53
 cmp eax, 99
 je .Lx133_53
 cmp eax, 13
 jne .Lx133_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx133_53
 jmp .Lx133_46
.Lx133_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx133_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx133_53
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
 jmp .Lx133_51
.Lx133_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx133_47
 cmp eax, 99
 je .Lx133_47
 cmp eax, 13
 jne .Lx133_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx133_47
 jmp .Lx133_48
.Lx133_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx133_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx133_53
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
 jmp .Lx133_51
.Lx133_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx133_49
 cmp edx, 14
 je .Lx133_53
 jmp .Lx133_52
.Lx133_49:
 cmp edx, 14
 je .Lx133_52
 cmp ecx, 7
 je .Lx133_53
 cmp edx, 7
 je .Lx133_53
 cmp ecx, 6
 jne .Lx133_50
 cmp edx, 6
 jne .Lx133_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx133_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx133_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx133_51
 jmp .Lx133_52
.Lx133_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx133_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx133_53
.Lx133_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx133_54
.Lx133_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx133_54
.Lx133_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx133_54:
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain97_n16_α
 jmp xchain97_n25_α
 xchain97_n24_β:
 jmp xchain97_n16_α
# IR_VAR_REF
 xchain97_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1344]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain97_n26_α
# IR_VAR_REF
 xchain97_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain97_n27_α
 xchain97_n27_α:
 mov qword ptr [rbp + 320], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx139_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx139_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx139_3]
 lea rdx, [rip + .Lx139_4]
 jmp rax
.Lx139_3:
 mov qword ptr [rbp + 328], rsp
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx139_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx139_2
.Lx139_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx139_2
.Lx139_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx139_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx139_2
.Lx139_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx139_2
.Lx139_1:
 call rt_faildescr@PLT
.Lx139_2:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain97_n16_α
 jmp xchain97_n28_α
 xchain97_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 328]
 jmp qword ptr [rsp]
.Lx139_0:
 .quad .Lx139_0_s
.Lx139_0_s:
 .string "test/2"
# IR_VAR_REF
 xchain97_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain97_n29_α
# IR_VAR_REF
 xchain97_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain97_n30_α
 xchain97_n30_α:
 lea rsi, [rbp + 208]
 lea rdx, [rbp + 240]
 call proc_nd$2F2_dcα
 jmp .Lx145_2
.Lx145_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain97_n27_β
 jmp xchain97_n31_α
 xchain97_n30_β:
 jmp xchain97_n27_β
.Lx145_0:
 .quad .Lx145_0_s
.Lx145_0_s:
 .string "nd/2"
# IR_SUSPEND yield+resume
 xchain97_n31_α:
 lea rax, [rip + xchain97_n31_β]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_test$2F2_γ
 xchain97_n31_β:
 jmp xchain97_n30_β
proc_test$2F2_res:
add rsp, 8
pop rbp
proc_test$2F2_β:
jmp qword ptr [rbp + 1280]
proc_test$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_test$2F2_res]
push rax
mov rax, [rbp + 1368]
mov rbp, [rbp + 1384]
jmp rax
proc_test$2F2_ω:
mov rax, [rbp + 1376]
lea rsp, [rbp + 1392]
mov rbp, [rbp + 1384]
jmp rax
  .globl proc_nd$2F2_α
proc_nd$2F2_α:
#=======================================================================================================================
    .global proc_nd$2F2_α
    .global proc_nd$2F2_β
    .global proc_nd$2F2_γ
    .global proc_nd$2F2_ω
  sub rsp, 1664
  mov [rsp + 1640], rcx
  mov [rsp + 1648], rdx
  mov [rsp + 1656], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1512], rsp
  mov rdi, rsp
  mov esi, 1504
  mov edx, 1632
  call rt_jmp_frame_lexprep2@PLT
proc_nd$2F2_α_body:
 xchain148_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_nd$2F2_ω
 jmp xchain148_n1_α
 xchain148_n0_β:
 jmp proc_nd$2F2_ω
# IR_VAR_REF
 xchain148_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain148_n2_α
# IR_LIT_STRING
 xchain148_n2_α:
 mov qword ptr [rbp + 1472], 1
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain148_n3_α
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "p"
# IR_VAR_REF
 xchain148_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain148_n4_α
# IR_VAR_REF
 xchain148_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain148_n5_α
 xchain148_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1408]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1416], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1424]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1432], rax
# marshal arg2 = producer-box slot [zr+1360] -> [zr+1440]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1408]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n6_α
 xchain148_n5_β:
 jmp xchain148_n7_α
 xchain148_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1264]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1272], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1280]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1288], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1264]
 lea r8, [rbp + 1264]
.Lx158_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx158_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx158_41
 cmp esi, 1
 jne .Lx158_55
 mov r8, rax
 jmp .Lx158_40
.Lx158_55:
 cmp esi, 2
 jne .Lx158_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx158_41
 mov r8, rax
 jmp .Lx158_40
.Lx158_56:
 cmp eax, 13
 jne .Lx158_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx158_41
 cmp rax, r8
 je .Lx158_41
 mov r8, rax
 jmp .Lx158_40
.Lx158_41:
 lea r9, [rbp + 1280]
.Lx158_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx158_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx158_43
 cmp esi, 1
 jne .Lx158_57
 mov r9, rax
 jmp .Lx158_42
.Lx158_57:
 cmp esi, 2
 jne .Lx158_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx158_43
 mov r9, rax
 jmp .Lx158_42
.Lx158_58:
 cmp eax, 13
 jne .Lx158_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx158_43
 cmp rax, r9
 je .Lx158_43
 mov r9, rax
 jmp .Lx158_42
.Lx158_43:
 cmp r8, r9
 je .Lx158_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx158_44
 cmp eax, 99
 je .Lx158_44
 cmp eax, 13
 jne .Lx158_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx158_44
 jmp .Lx158_45
.Lx158_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx158_53
 cmp eax, 99
 je .Lx158_53
 cmp eax, 13
 jne .Lx158_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx158_53
 jmp .Lx158_46
.Lx158_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx158_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx158_53
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
 jmp .Lx158_51
.Lx158_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx158_47
 cmp eax, 99
 je .Lx158_47
 cmp eax, 13
 jne .Lx158_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx158_47
 jmp .Lx158_48
.Lx158_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx158_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx158_53
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
 jmp .Lx158_51
.Lx158_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx158_49
 cmp edx, 14
 je .Lx158_53
 jmp .Lx158_52
.Lx158_49:
 cmp edx, 14
 je .Lx158_52
 cmp ecx, 7
 je .Lx158_53
 cmp edx, 7
 je .Lx158_53
 cmp ecx, 6
 jne .Lx158_50
 cmp edx, 6
 jne .Lx158_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx158_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx158_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx158_51
 jmp .Lx158_52
.Lx158_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx158_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx158_53
.Lx158_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx158_54
.Lx158_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx158_54
.Lx158_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx158_54:
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n8_α
 xchain148_n6_β:
 jmp xchain148_n7_α
 xchain148_n7_α:
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
 je proc_nd$2F2_ω
 jmp proc_nd$2F2_ω
 xchain148_n7_β:
 jmp proc_nd$2F2_ω
# IR_VAR_REF
 xchain148_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain148_n9_α
# IR_LIT_STRING
 xchain148_n9_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx162_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain148_n10_α
.Lx162_0:
 .quad .Lx162_0_s
.Lx162_0_s:
 .string "p"
# IR_VAR_REF
 xchain148_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain148_n11_α
# IR_VAR_REF
 xchain148_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain148_n12_α
 xchain148_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1152]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1160], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1168]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1176], rax
# marshal arg2 = producer-box slot [zr+1104] -> [zr+1184]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1152]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n13_α
 xchain148_n12_β:
 jmp xchain148_n7_α
 xchain148_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+1008]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1016], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1024]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1032], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1008]
 lea r8, [rbp + 1008]
.Lx168_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx168_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx168_41
 cmp esi, 1
 jne .Lx168_55
 mov r8, rax
 jmp .Lx168_40
.Lx168_55:
 cmp esi, 2
 jne .Lx168_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx168_41
 mov r8, rax
 jmp .Lx168_40
.Lx168_56:
 cmp eax, 13
 jne .Lx168_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx168_41
 cmp rax, r8
 je .Lx168_41
 mov r8, rax
 jmp .Lx168_40
.Lx168_41:
 lea r9, [rbp + 1024]
.Lx168_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx168_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx168_43
 cmp esi, 1
 jne .Lx168_57
 mov r9, rax
 jmp .Lx168_42
.Lx168_57:
 cmp esi, 2
 jne .Lx168_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx168_43
 mov r9, rax
 jmp .Lx168_42
.Lx168_58:
 cmp eax, 13
 jne .Lx168_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx168_43
 cmp rax, r9
 je .Lx168_43
 mov r9, rax
 jmp .Lx168_42
.Lx168_43:
 cmp r8, r9
 je .Lx168_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx168_44
 cmp eax, 99
 je .Lx168_44
 cmp eax, 13
 jne .Lx168_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx168_44
 jmp .Lx168_45
.Lx168_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx168_53
 cmp eax, 99
 je .Lx168_53
 cmp eax, 13
 jne .Lx168_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx168_53
 jmp .Lx168_46
.Lx168_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx168_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx168_53
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
 jmp .Lx168_51
.Lx168_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx168_47
 cmp eax, 99
 je .Lx168_47
 cmp eax, 13
 jne .Lx168_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx168_47
 jmp .Lx168_48
.Lx168_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx168_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx168_53
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
 jmp .Lx168_51
.Lx168_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx168_49
 cmp edx, 14
 je .Lx168_53
 jmp .Lx168_52
.Lx168_49:
 cmp edx, 14
 je .Lx168_52
 cmp ecx, 7
 je .Lx168_53
 cmp edx, 7
 je .Lx168_53
 cmp ecx, 6
 jne .Lx168_50
 cmp edx, 6
 jne .Lx168_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx168_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx168_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx168_51
 jmp .Lx168_52
.Lx168_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx168_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx168_53
.Lx168_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx168_54
.Lx168_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx168_54
.Lx168_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx168_54:
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n14_α
 xchain148_n13_β:
 jmp xchain148_n7_α
# IR_VAR_REF
 xchain148_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain148_n15_α
# IR_VAR
 xchain148_n15_α:
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 936], rax
 jmp xchain148_n16_α
# IR_VAR
 xchain148_n16_α:
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 968], rax
 jmp xchain148_n17_α
 xchain148_n17_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+880]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+896]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n18_α
 xchain148_n17_β:
 jmp xchain148_n7_α
 xchain148_n18_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 808], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 800]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n19_α
 xchain148_n18_β:
 jmp xchain148_n7_α
# IR_VAR_REF
 xchain148_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1584]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain148_n20_α
# IR_VAR
 xchain148_n20_α:
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 728], rax
 jmp xchain148_n21_α
# IR_VAR
 xchain148_n21_α:
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 760], rax
 jmp xchain148_n22_α
 xchain148_n22_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+672]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+688]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n23_α
 xchain148_n22_β:
 jmp xchain148_n7_α
 xchain148_n23_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+592]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n24_α
 xchain148_n23_β:
 jmp xchain148_n7_α
# IR_VAR
 xchain148_n24_α:
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 520], rax
 jmp xchain148_n25_α
# IR_VAR
 xchain148_n25_α:
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 552], rax
 jmp xchain148_n26_α
 xchain148_n26_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+496]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 480]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n27_α
 xchain148_n26_β:
 jmp xchain148_n7_α
# IR_VAR_REF
 xchain148_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain148_n28_α
# IR_VAR
 xchain148_n28_α:
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 408], rax
 jmp xchain148_n29_α
# IR_VAR
 xchain148_n29_α:
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 440], rax
 jmp xchain148_n30_α
 xchain148_n30_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+352]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+368]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n31_α
 xchain148_n30_β:
 jmp xchain148_n7_α
 xchain148_n31_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 280], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+288]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 272]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n32_α
 xchain148_n31_β:
 jmp xchain148_n7_α
# IR_VAR
 xchain148_n32_α:
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 200], rax
 jmp xchain148_n33_α
# IR_VAR
 xchain148_n33_α:
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 232], rax
 jmp xchain148_n34_α
 xchain148_n34_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain148_n7_α
 jmp xchain148_n35_α
 xchain148_n34_β:
 jmp xchain148_n7_α
# IR_MOVE_LABEL
 xchain148_n35_α:
 lea rax, [rip + xchain148_n7_α]
 mov qword ptr [rbp + 64], rax
 jmp proc_nd$2F2_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain148_n36_α:
 jmp qword ptr [rbp + 64]
 xchain148_n36_β:
 jmp proc_nd$2F2_ω
proc_nd$2F2_res:
add rsp, 8
pop rbp
proc_nd$2F2_β:
jmp xchain148_n36_α
proc_nd$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1640]
lea rsp, [rbp + 1664]
mov rbp, [rbp + 1656]
jmp rax
proc_nd$2F2_ω:
mov rax, [rbp + 1648]
lea rsp, [rbp + 1664]
mov rbp, [rbp + 1656]
jmp rax
proc_nd$2F2_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1680
 mov qword ptr [rsp + 1672], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1632], r11
 lea rax, [rip + .Lx207_2]
 mov qword ptr [rbp + 1640], rax
 lea rax, [rip + .Lx207_3]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1512], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov rdi, rbp
 mov esi, 1504
 mov edx, 1632
 mov ecx, 2
 mov r8d, 2
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_nd$2F2_α_body
.Lx207_2:
 mov rdx, qword ptr [rsp + -1680]
 mov rcx, rsp
 add rcx, -1664
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx207_3:
 mov rdi, qword ptr [rsp + -1680]
 mov rsi, rsp
 add rsi, -1664
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_safe$2F2_α
proc_safe$2F2_α:
#=======================================================================================================================
    .global proc_safe$2F2_α
    .global proc_safe$2F2_β
    .global proc_safe$2F2_γ
    .global proc_safe$2F2_ω
  sub rsp, 1232
  mov [rsp + 1208], rcx
  mov [rsp + 1216], rdx
  mov [rsp + 1224], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1144], rsp
  mov rdi, rsp
  mov esi, 1120
  mov edx, 1200
  call rt_jmp_frame_lexprep2@PLT
proc_safe$2F2_α_body:
lea rax, [rip + xchain208_n10_β]
mov qword ptr [rbp + 1120], rax
 xchain208_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_safe$2F2_ω
 jmp xchain208_n1_α
 xchain208_n0_β:
 jmp proc_safe$2F2_ω
# IR_VAR_REF
 xchain208_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain208_n2_α
# IR_VAR_REF
 xchain208_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1152]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain208_n3_α
 xchain208_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1024]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1032], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+1040]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1048], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1024]
 lea r8, [rbp + 1024]
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
 lea r9, [rbp + 1040]
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
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain208_n5_α
 jmp xchain208_n4_α
 xchain208_n3_β:
 jmp xchain208_n5_α
# IR_VAR_REF
 xchain208_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain208_n6_α
 xchain208_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+864]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_safe$2F2_ω
 jmp xchain208_n7_α
 xchain208_n5_β:
 jmp proc_safe$2F2_ω
# IR_LIT_STRING
 xchain208_n6_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain208_n8_α
.Lx218_0:
 .quad .Lx218_0_s
.Lx218_0_s:
 .string "[]"
# IR_VAR_REF
 xchain208_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain208_n9_α
 xchain208_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+912]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 920], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 912]
 mov rsi, qword ptr [rip + .Lx221_2]
 jmp .Lx221_3
.Lx221_2:
 .quad .Lx221_2_s
.Lx221_2_s:
 .string "[]"
.Lx221_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain208_n5_α
 jmp xchain208_n10_α
 xchain208_n8_β:
 jmp xchain208_n5_α
# IR_VAR_REF
 xchain208_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1152]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain208_n11_α
# IR_SUSPEND yield+resume
 xchain208_n10_α:
 lea rax, [rip + xchain208_n10_β]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_safe$2F2_γ
 xchain208_n10_β:
 jmp xchain208_n5_α
 xchain208_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+752]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+768]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 776], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 752]
 lea r8, [rbp + 752]
.Lx226_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx226_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx226_41
 cmp esi, 1
 jne .Lx226_55
 mov r8, rax
 jmp .Lx226_40
.Lx226_55:
 cmp esi, 2
 jne .Lx226_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx226_41
 mov r8, rax
 jmp .Lx226_40
.Lx226_56:
 cmp eax, 13
 jne .Lx226_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx226_41
 cmp rax, r8
 je .Lx226_41
 mov r8, rax
 jmp .Lx226_40
.Lx226_41:
 lea r9, [rbp + 768]
.Lx226_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx226_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx226_43
 cmp esi, 1
 jne .Lx226_57
 mov r9, rax
 jmp .Lx226_42
.Lx226_57:
 cmp esi, 2
 jne .Lx226_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx226_43
 mov r9, rax
 jmp .Lx226_42
.Lx226_58:
 cmp eax, 13
 jne .Lx226_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx226_43
 cmp rax, r9
 je .Lx226_43
 mov r9, rax
 jmp .Lx226_42
.Lx226_43:
 cmp r8, r9
 je .Lx226_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx226_44
 cmp eax, 99
 je .Lx226_44
 cmp eax, 13
 jne .Lx226_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx226_44
 jmp .Lx226_45
.Lx226_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx226_53
 cmp eax, 99
 je .Lx226_53
 cmp eax, 13
 jne .Lx226_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx226_53
 jmp .Lx226_46
.Lx226_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx226_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx226_53
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
 jmp .Lx226_51
.Lx226_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx226_47
 cmp eax, 99
 je .Lx226_47
 cmp eax, 13
 jne .Lx226_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx226_47
 jmp .Lx226_48
.Lx226_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx226_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx226_53
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
 jmp .Lx226_51
.Lx226_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx226_49
 cmp edx, 14
 je .Lx226_53
 jmp .Lx226_52
.Lx226_49:
 cmp edx, 14
 je .Lx226_52
 cmp ecx, 7
 je .Lx226_53
 cmp edx, 7
 je .Lx226_53
 cmp ecx, 6
 jne .Lx226_50
 cmp edx, 6
 jne .Lx226_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx226_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx226_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx226_51
 jmp .Lx226_52
.Lx226_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx226_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx226_53
.Lx226_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx226_54
.Lx226_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx226_54
.Lx226_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx226_54:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain208_n13_α
 jmp xchain208_n12_α
 xchain208_n11_β:
 jmp xchain208_n13_α
# IR_VAR_REF
 xchain208_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain208_n14_α
 xchain208_n13_α:
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
 je proc_safe$2F2_ω
 jmp proc_safe$2F2_ω
 xchain208_n13_β:
 jmp proc_safe$2F2_ω
# IR_VAR_REF
 xchain208_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1168]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain208_n15_α
# IR_VAR_REF
 xchain208_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain208_n16_α
 xchain208_n16_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+624]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 648], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 624]
 lea r8, [rbp + 624]
.Lx234_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx234_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx234_61
 cmp esi, 1
 jne .Lx234_62
 mov r8, rax
 jmp .Lx234_60
.Lx234_62:
 cmp esi, 2
 jne .Lx234_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx234_61
 mov r8, rax
 jmp .Lx234_60
.Lx234_63:
 cmp eax, 13
 jne .Lx234_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx234_61
 cmp rax, r8
 je .Lx234_61
 mov r8, rax
 jmp .Lx234_60
.Lx234_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx234_72
 cmp eax, 99
 je .Lx234_72
 cmp eax, 13
 jne .Lx234_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx234_72
 jmp .Lx234_74
.Lx234_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx234_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx234_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx234_73
 lea r9, [rbp + 640]
.Lx234_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx234_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx234_65
 cmp esi, 1
 jne .Lx234_66
 mov r9, rax
 jmp .Lx234_64
.Lx234_66:
 cmp esi, 2
 jne .Lx234_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx234_65
 mov r9, rax
 jmp .Lx234_64
.Lx234_67:
 cmp eax, 13
 jne .Lx234_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx234_65
 cmp rax, r9
 je .Lx234_65
 mov r9, rax
 jmp .Lx234_64
.Lx234_65:
 lea rcx, [rbp + 656]
.Lx234_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx234_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx234_69
 cmp esi, 1
 jne .Lx234_70
 mov rcx, rax
 jmp .Lx234_68
.Lx234_70:
 cmp esi, 2
 jne .Lx234_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx234_69
 mov rcx, rax
 jmp .Lx234_68
.Lx234_71:
 cmp eax, 13
 jne .Lx234_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx234_69
 cmp rax, rcx
 je .Lx234_69
 mov rcx, rax
 jmp .Lx234_68
.Lx234_69:
 cmp r9, rcx
 je .Lx234_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx234_75
 cmp eax, 99
 je .Lx234_75
 cmp eax, 13
 jne .Lx234_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx234_75
 jmp .Lx234_72
.Lx234_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx234_76
 cmp eax, 99
 je .Lx234_76
 cmp eax, 13
 jne .Lx234_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx234_76
 jmp .Lx234_72
.Lx234_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx234_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx234_72
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov qword ptr [r11 + 24], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 32], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 40], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 2
 mov dword ptr [r10 + 32], eax
 mov r10, qword ptr [r8 + 8]
 mov rax, qword ptr [r10 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r10 + 8]
 mov qword ptr [r9 + 8], rax
 mov rax, qword ptr [r10 + 16]
 mov qword ptr [rcx + 0], rax
 mov rax, qword ptr [r10 + 24]
 mov qword ptr [rcx + 8], rax
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx234_77
.Lx234_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx234_77
.Lx234_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx234_77:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain208_n13_α
 jmp xchain208_n17_α
 xchain208_n16_β:
 jmp xchain208_n13_α
# IR_VAR_REF
 xchain208_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1152]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain208_n18_α
# IR_VAR_REF
 xchain208_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1168]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain208_n19_α
 xchain208_n19_α:
 mov qword ptr [rbp + 480], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx240_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx240_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx240_3]
 lea rdx, [rip + .Lx240_4]
 jmp rax
.Lx240_3:
 mov qword ptr [rbp + 488], rsp
 mov rax, qword ptr [rbp + 480]
 test rax, rax
 jne .Lx240_5
 mov qword ptr [rbp + 480], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx240_2
.Lx240_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx240_2
.Lx240_4:
 mov rax, qword ptr [rbp + 480]
 test rax, rax
 jne .Lx240_6
 mov qword ptr [rbp + 480], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx240_2
.Lx240_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx240_2
.Lx240_1:
 call rt_faildescr@PLT
.Lx240_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain208_n13_α
 jmp xchain208_n20_α
 xchain208_n19_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 488]
 jmp qword ptr [rsp]
.Lx240_0:
 .quad .Lx240_0_s
.Lx240_0_s:
 .string "test/2"
# IR_LIT_STRING
 xchain208_n20_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain208_n21_α
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "."
# IR_VAR_REF
 xchain208_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1168]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain208_n22_α
# IR_VAR_REF
 xchain208_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1152]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain208_n23_α
 xchain208_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+304]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 312], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+320]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 328], rax
# marshal arg2 = producer-box slot [zr+224] -> [zr+336]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 304]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain208_n13_α
 jmp xchain208_n24_α
 xchain208_n23_β:
 jmp xchain208_n13_α
# IR_VAR_REF
 xchain208_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain208_n25_α
 xchain208_n25_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx250_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx250_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx250_3]
 lea rdx, [rip + .Lx250_4]
 jmp rax
.Lx250_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx250_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx250_2
.Lx250_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx250_2
.Lx250_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx250_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx250_2
.Lx250_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx250_2
.Lx250_1:
 call rt_faildescr@PLT
.Lx250_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain208_n19_β
 jmp xchain208_n26_α
 xchain208_n25_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "safe/2"
# IR_SUSPEND yield+resume
 xchain208_n26_α:
 lea rax, [rip + xchain208_n26_β]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_safe$2F2_γ
 xchain208_n26_β:
 jmp xchain208_n25_β
proc_safe$2F2_res:
add rsp, 8
pop rbp
proc_safe$2F2_β:
jmp qword ptr [rbp + 1120]
proc_safe$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_safe$2F2_res]
push rax
mov rax, [rbp + 1208]
mov rbp, [rbp + 1224]
jmp rax
proc_safe$2F2_ω:
mov rax, [rbp + 1216]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
  .globl proc_perm$2F2_α
proc_perm$2F2_α:
#=======================================================================================================================
    .global proc_perm$2F2_α
    .global proc_perm$2F2_β
    .global proc_perm$2F2_γ
    .global proc_perm$2F2_ω
  sub rsp, 1312
  mov [rsp + 1288], rcx
  mov [rsp + 1296], rdx
  mov [rsp + 1304], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1208], rsp
  mov rdi, rsp
  mov esi, 1184
  mov edx, 1280
  call rt_jmp_frame_lexprep2@PLT
proc_perm$2F2_α_body:
lea rax, [rip + xchain253_n19_β]
mov qword ptr [rbp + 1184], rax
 xchain253_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_perm$2F2_ω
 jmp xchain253_n1_α
 xchain253_n0_β:
 jmp proc_perm$2F2_ω
# IR_VAR_REF
 xchain253_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain253_n2_α
# IR_LIT_INTEGER
 xchain253_n2_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain253_n3_α
.Lx257_0:
 .quad 2
# IR_LIT_STRING
 xchain253_n3_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain253_n4_α
.Lx258_0:
 .quad .Lx258_0_s
.Lx258_0_s:
 .string "[]"
 xchain253_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1040]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1056]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1064], rax
# marshal arg2 = producer-box slot [zr+1152] -> [zr+1072]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain253_n6_α
 jmp xchain253_n5_α
 xchain253_n4_β:
 jmp xchain253_n6_α
# IR_VAR_REF
 xchain253_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain253_n7_α
# IR_VAR_REF
 xchain253_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain253_n8_α
# IR_LIT_STRING
 xchain253_n7_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain253_n9_α
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
 .string "[]"
# IR_VAR_REF
 xchain253_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain253_n10_α
 xchain253_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+928]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 936], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 928]
 mov rsi, qword ptr [rip + .Lx267_2]
 jmp .Lx267_3
.Lx267_2:
 .quad .Lx267_2_s
.Lx267_2_s:
 .string "[]"
.Lx267_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain253_n12_α
 jmp xchain253_n11_α
 xchain253_n9_β:
 jmp xchain253_n12_α
 xchain253_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+656]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+672]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 680], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 656]
 lea r8, [rbp + 656]
.Lx268_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx268_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx268_41
 cmp esi, 1
 jne .Lx268_55
 mov r8, rax
 jmp .Lx268_40
.Lx268_55:
 cmp esi, 2
 jne .Lx268_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx268_41
 mov r8, rax
 jmp .Lx268_40
.Lx268_56:
 cmp eax, 13
 jne .Lx268_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx268_41
 cmp rax, r8
 je .Lx268_41
 mov r8, rax
 jmp .Lx268_40
.Lx268_41:
 lea r9, [rbp + 672]
.Lx268_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx268_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx268_43
 cmp esi, 1
 jne .Lx268_57
 mov r9, rax
 jmp .Lx268_42
.Lx268_57:
 cmp esi, 2
 jne .Lx268_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx268_43
 mov r9, rax
 jmp .Lx268_42
.Lx268_58:
 cmp eax, 13
 jne .Lx268_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx268_43
 cmp rax, r9
 je .Lx268_43
 mov r9, rax
 jmp .Lx268_42
.Lx268_43:
 cmp r8, r9
 je .Lx268_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx268_44
 cmp eax, 99
 je .Lx268_44
 cmp eax, 13
 jne .Lx268_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx268_44
 jmp .Lx268_45
.Lx268_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx268_53
 cmp eax, 99
 je .Lx268_53
 cmp eax, 13
 jne .Lx268_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx268_53
 jmp .Lx268_46
.Lx268_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx268_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx268_53
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
 jmp .Lx268_51
.Lx268_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx268_47
 cmp eax, 99
 je .Lx268_47
 cmp eax, 13
 jne .Lx268_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx268_47
 jmp .Lx268_48
.Lx268_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx268_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx268_53
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
 jmp .Lx268_51
.Lx268_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx268_49
 cmp edx, 14
 je .Lx268_53
 jmp .Lx268_52
.Lx268_49:
 cmp edx, 14
 je .Lx268_52
 cmp ecx, 7
 je .Lx268_53
 cmp edx, 7
 je .Lx268_53
 cmp ecx, 6
 jne .Lx268_50
 cmp edx, 6
 jne .Lx268_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx268_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx268_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx268_51
 jmp .Lx268_52
.Lx268_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx268_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx268_53
.Lx268_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx268_54
.Lx268_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx268_54
.Lx268_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx268_54:
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain253_n14_α
 jmp xchain253_n13_α
 xchain253_n10_β:
 jmp xchain253_n14_α
# IR_VAR_REF
 xchain253_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain253_n15_α
 xchain253_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+768]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 768]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je proc_perm$2F2_ω
 jmp xchain253_n6_α
 xchain253_n12_β:
 jmp proc_perm$2F2_ω
# IR_VAR_REF
 xchain253_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain253_n16_α
 xchain253_n14_α:
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
 je proc_perm$2F2_ω
 jmp proc_perm$2F2_ω
 xchain253_n14_β:
 jmp proc_perm$2F2_ω
# IR_LIT_STRING
 xchain253_n15_α:
 mov qword ptr [rbp + 880], 1
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain253_n17_α
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "[]"
# IR_VAR_REF
 xchain253_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain253_n18_α
 xchain253_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+816]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 816]
 mov rsi, qword ptr [rip + .Lx278_2]
 jmp .Lx278_3
.Lx278_2:
 .quad .Lx278_2_s
.Lx278_2_s:
 .string "[]"
.Lx278_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain253_n12_α
 jmp xchain253_n19_α
 xchain253_n17_β:
 jmp xchain253_n12_α
# IR_VAR_REF
 xchain253_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain253_n20_α
# IR_SUSPEND yield+resume
 xchain253_n19_α:
 lea rax, [rip + xchain253_n19_β]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_perm$2F2_γ
 xchain253_n19_β:
 jmp xchain253_n12_α
 xchain253_n20_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+528]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 552], rax
# marshal arg2 = producer-box slot [zr+608] -> [zr+560]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 568], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 528]
 lea r8, [rbp + 528]
.Lx283_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx283_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx283_61
 cmp esi, 1
 jne .Lx283_62
 mov r8, rax
 jmp .Lx283_60
.Lx283_62:
 cmp esi, 2
 jne .Lx283_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx283_61
 mov r8, rax
 jmp .Lx283_60
.Lx283_63:
 cmp eax, 13
 jne .Lx283_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx283_61
 cmp rax, r8
 je .Lx283_61
 mov r8, rax
 jmp .Lx283_60
.Lx283_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx283_72
 cmp eax, 99
 je .Lx283_72
 cmp eax, 13
 jne .Lx283_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx283_72
 jmp .Lx283_74
.Lx283_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx283_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx283_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx283_73
 lea r9, [rbp + 544]
.Lx283_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx283_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx283_65
 cmp esi, 1
 jne .Lx283_66
 mov r9, rax
 jmp .Lx283_64
.Lx283_66:
 cmp esi, 2
 jne .Lx283_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx283_65
 mov r9, rax
 jmp .Lx283_64
.Lx283_67:
 cmp eax, 13
 jne .Lx283_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx283_65
 cmp rax, r9
 je .Lx283_65
 mov r9, rax
 jmp .Lx283_64
.Lx283_65:
 lea rcx, [rbp + 560]
.Lx283_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx283_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx283_69
 cmp esi, 1
 jne .Lx283_70
 mov rcx, rax
 jmp .Lx283_68
.Lx283_70:
 cmp esi, 2
 jne .Lx283_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx283_69
 mov rcx, rax
 jmp .Lx283_68
.Lx283_71:
 cmp eax, 13
 jne .Lx283_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx283_69
 cmp rax, rcx
 je .Lx283_69
 mov rcx, rax
 jmp .Lx283_68
.Lx283_69:
 cmp r9, rcx
 je .Lx283_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx283_75
 cmp eax, 99
 je .Lx283_75
 cmp eax, 13
 jne .Lx283_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx283_75
 jmp .Lx283_72
.Lx283_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx283_76
 cmp eax, 99
 je .Lx283_76
 cmp eax, 13
 jne .Lx283_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx283_76
 jmp .Lx283_72
.Lx283_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx283_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx283_72
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov qword ptr [r11 + 24], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 32], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 40], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 2
 mov dword ptr [r10 + 32], eax
 mov r10, qword ptr [r8 + 8]
 mov rax, qword ptr [r10 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r10 + 8]
 mov qword ptr [r9 + 8], rax
 mov rax, qword ptr [r10 + 16]
 mov qword ptr [rcx + 0], rax
 mov rax, qword ptr [r10 + 24]
 mov qword ptr [rcx + 8], rax
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx283_77
.Lx283_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx283_77
.Lx283_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx283_77:
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain253_n14_α
 jmp xchain253_n21_α
 xchain253_n20_β:
 jmp xchain253_n14_α
# IR_VAR_REF
 xchain253_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain253_n22_α
# IR_VAR_REF
 xchain253_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain253_n23_α
# IR_VAR_REF
 xchain253_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1216]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain253_n24_α
 xchain253_n24_α:
 mov qword ptr [rbp + 352], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx291_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx291_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx291_3]
 lea rdx, [rip + .Lx291_4]
 jmp rax
.Lx291_3:
 mov qword ptr [rbp + 360], rsp
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx291_5
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx291_2
.Lx291_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx291_2
.Lx291_4:
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx291_6
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx291_2
.Lx291_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx291_2
.Lx291_1:
 call rt_faildescr@PLT
.Lx291_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain253_n14_α
 jmp xchain253_n25_α
 xchain253_n24_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 360]
 jmp qword ptr [rsp]
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "sel/3"
# IR_VAR_REF
 xchain253_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1216]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain253_n26_α
# IR_VAR_REF
 xchain253_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain253_n27_α
 xchain253_n27_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx297_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx297_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx297_3]
 lea rdx, [rip + .Lx297_4]
 jmp rax
.Lx297_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx297_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx297_2
.Lx297_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx297_2
.Lx297_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx297_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx297_2
.Lx297_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx297_2
.Lx297_1:
 call rt_faildescr@PLT
.Lx297_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain253_n24_β
 jmp xchain253_n28_α
 xchain253_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "perm/2"
# IR_SUSPEND yield+resume
 xchain253_n28_α:
 lea rax, [rip + xchain253_n28_β]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_perm$2F2_γ
 xchain253_n28_β:
 jmp xchain253_n27_β
proc_perm$2F2_res:
add rsp, 8
pop rbp
proc_perm$2F2_β:
jmp qword ptr [rbp + 1184]
proc_perm$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_perm$2F2_res]
push rax
mov rax, [rbp + 1288]
mov rbp, [rbp + 1304]
jmp rax
proc_perm$2F2_ω:
mov rax, [rbp + 1296]
lea rsp, [rbp + 1312]
mov rbp, [rbp + 1304]
jmp rax
  .globl proc_pair$2F3_α
proc_pair$2F3_α:
#=======================================================================================================================
    .global proc_pair$2F3_α
    .global proc_pair$2F3_β
    .global proc_pair$2F3_γ
    .global proc_pair$2F3_ω
  sub rsp, 1824
  mov [rsp + 1800], rcx
  mov [rsp + 1808], rdx
  mov [rsp + 1816], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1704], rsp
  mov rdi, rsp
  mov esi, 1680
  mov edx, 1792
  call rt_jmp_frame_lexprep2@PLT
proc_pair$2F3_α_body:
lea rax, [rip + xchain300_n25_β]
mov qword ptr [rbp + 1680], rax
 xchain300_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_pair$2F3_ω
 jmp xchain300_n1_α
 xchain300_n0_β:
 jmp proc_pair$2F3_ω
# IR_VAR_REF
 xchain300_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain300_n2_α
# IR_LIT_INTEGER
 xchain300_n2_α:
 mov qword ptr [rbp + 1616], 6
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain300_n3_α
.Lx304_0:
 .quad 2
# IR_LIT_STRING
 xchain300_n3_α:
 mov qword ptr [rbp + 1648], 1
 mov rax, qword ptr [rip + .Lx305_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain300_n4_α
.Lx305_0:
 .quad .Lx305_0_s
.Lx305_0_s:
 .string "[]"
 xchain300_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1584] -> [zr+1536]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1544], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1552]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1560], rax
# marshal arg2 = producer-box slot [zr+1648] -> [zr+1568]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1576], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1536]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain300_n6_α
 jmp xchain300_n5_α
 xchain300_n4_β:
 jmp xchain300_n6_α
# IR_VAR_REF
 xchain300_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain300_n7_α
# IR_VAR_REF
 xchain300_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain300_n8_α
# IR_LIT_STRING
 xchain300_n7_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain300_n9_α
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain300_n8_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx312_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain300_n10_α
.Lx312_0:
 .quad 3
 xchain300_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1424]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1432], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1424]
 mov rsi, qword ptr [rip + .Lx313_2]
 jmp .Lx313_3
.Lx313_2:
 .quad .Lx313_2_s
.Lx313_2_s:
 .string "[]"
.Lx313_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain300_n12_α
 jmp xchain300_n11_α
 xchain300_n9_β:
 jmp xchain300_n12_α
# IR_LIT_INTEGER
 xchain300_n10_α:
 mov qword ptr [rbp + 1104], 6
 mov rax, qword ptr [rip + .Lx314_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain300_n13_α
.Lx314_0:
 .quad 0
# IR_VAR_REF
 xchain300_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain300_n14_α
 xchain300_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1152]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1152]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je proc_pair$2F3_ω
 jmp xchain300_n6_α
 xchain300_n12_β:
 jmp proc_pair$2F3_ω
 xchain300_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+992]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1008]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1016], rax
# marshal arg2 = producer-box slot [zr+1104] -> [zr+1024]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain300_n16_α
 jmp xchain300_n15_α
 xchain300_n13_β:
 jmp xchain300_n16_α
# IR_LIT_STRING
 xchain300_n14_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain300_n17_α
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
 .string "[]"
# IR_VAR_REF
 xchain300_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain300_n18_α
 xchain300_n16_α:
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
 je proc_pair$2F3_ω
 jmp proc_pair$2F3_ω
 xchain300_n16_β:
 jmp proc_pair$2F3_ω
 xchain300_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1312]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1320], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1312]
 mov rsi, qword ptr [rip + .Lx323_2]
 jmp .Lx323_3
.Lx323_2:
 .quad .Lx323_2_s
.Lx323_2_s:
 .string "[]"
.Lx323_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je xchain300_n12_α
 jmp xchain300_n19_α
 xchain300_n17_β:
 jmp xchain300_n12_α
# IR_VAR_REF
 xchain300_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain300_n20_α
# IR_VAR_REF
 xchain300_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain300_n21_α
# IR_VAR_REF
 xchain300_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain300_n22_α
# IR_LIT_STRING
 xchain300_n21_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx330_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain300_n23_α
.Lx330_0:
 .quad .Lx330_0_s
.Lx330_0_s:
 .string "[]"
 xchain300_n22_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+864]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+880]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
# marshal arg2 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 904], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 864]
 lea r8, [rbp + 864]
.Lx331_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx331_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx331_61
 cmp esi, 1
 jne .Lx331_62
 mov r8, rax
 jmp .Lx331_60
.Lx331_62:
 cmp esi, 2
 jne .Lx331_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx331_61
 mov r8, rax
 jmp .Lx331_60
.Lx331_63:
 cmp eax, 13
 jne .Lx331_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx331_61
 cmp rax, r8
 je .Lx331_61
 mov r8, rax
 jmp .Lx331_60
.Lx331_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx331_72
 cmp eax, 99
 je .Lx331_72
 cmp eax, 13
 jne .Lx331_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx331_72
 jmp .Lx331_74
.Lx331_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx331_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx331_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx331_73
 lea r9, [rbp + 880]
.Lx331_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx331_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx331_65
 cmp esi, 1
 jne .Lx331_66
 mov r9, rax
 jmp .Lx331_64
.Lx331_66:
 cmp esi, 2
 jne .Lx331_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx331_65
 mov r9, rax
 jmp .Lx331_64
.Lx331_67:
 cmp eax, 13
 jne .Lx331_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx331_65
 cmp rax, r9
 je .Lx331_65
 mov r9, rax
 jmp .Lx331_64
.Lx331_65:
 lea rcx, [rbp + 896]
.Lx331_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx331_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx331_69
 cmp esi, 1
 jne .Lx331_70
 mov rcx, rax
 jmp .Lx331_68
.Lx331_70:
 cmp esi, 2
 jne .Lx331_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx331_69
 mov rcx, rax
 jmp .Lx331_68
.Lx331_71:
 cmp eax, 13
 jne .Lx331_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx331_69
 cmp rax, rcx
 je .Lx331_69
 mov rcx, rax
 jmp .Lx331_68
.Lx331_69:
 cmp r9, rcx
 je .Lx331_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx331_75
 cmp eax, 99
 je .Lx331_75
 cmp eax, 13
 jne .Lx331_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx331_75
 jmp .Lx331_72
.Lx331_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx331_76
 cmp eax, 99
 je .Lx331_76
 cmp eax, 13
 jne .Lx331_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx331_76
 jmp .Lx331_72
.Lx331_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx331_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx331_72
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov qword ptr [r11 + 24], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 32], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 40], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 2
 mov dword ptr [r10 + 32], eax
 mov r10, qword ptr [r8 + 8]
 mov rax, qword ptr [r10 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r10 + 8]
 mov qword ptr [r9 + 8], rax
 mov rax, qword ptr [r10 + 16]
 mov qword ptr [rcx + 0], rax
 mov rax, qword ptr [r10 + 24]
 mov qword ptr [rcx + 8], rax
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx331_77
.Lx331_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx331_77
.Lx331_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx331_77:
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain300_n16_α
 jmp xchain300_n24_α
 xchain300_n22_β:
 jmp xchain300_n16_α
 xchain300_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1200]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1208], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1200]
 mov rsi, qword ptr [rip + .Lx332_2]
 jmp .Lx332_3
.Lx332_2:
 .quad .Lx332_2_s
.Lx332_2_s:
 .string "[]"
.Lx332_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain300_n12_α
 jmp xchain300_n25_α
 xchain300_n23_β:
 jmp xchain300_n12_α
# IR_VAR_REF
 xchain300_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain300_n26_α
# IR_SUSPEND yield+resume
 xchain300_n25_α:
 lea rax, [rip + xchain300_n25_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_pair$2F3_γ
 xchain300_n25_β:
 jmp xchain300_n12_α
# IR_VAR_REF
 xchain300_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain300_n27_α
# IR_VAR_REF
 xchain300_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1728]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain300_n28_α
 xchain300_n28_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+704]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 712], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 728], rax
# marshal arg2 = producer-box slot [zr+784] -> [zr+736]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 744], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 704]
 lea r8, [rbp + 704]
.Lx341_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx341_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx341_61
 cmp esi, 1
 jne .Lx341_62
 mov r8, rax
 jmp .Lx341_60
.Lx341_62:
 cmp esi, 2
 jne .Lx341_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx341_61
 mov r8, rax
 jmp .Lx341_60
.Lx341_63:
 cmp eax, 13
 jne .Lx341_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx341_61
 cmp rax, r8
 je .Lx341_61
 mov r8, rax
 jmp .Lx341_60
.Lx341_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx341_72
 cmp eax, 99
 je .Lx341_72
 cmp eax, 13
 jne .Lx341_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx341_72
 jmp .Lx341_74
.Lx341_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx341_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx341_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx341_73
 lea r9, [rbp + 720]
.Lx341_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx341_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx341_65
 cmp esi, 1
 jne .Lx341_66
 mov r9, rax
 jmp .Lx341_64
.Lx341_66:
 cmp esi, 2
 jne .Lx341_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx341_65
 mov r9, rax
 jmp .Lx341_64
.Lx341_67:
 cmp eax, 13
 jne .Lx341_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx341_65
 cmp rax, r9
 je .Lx341_65
 mov r9, rax
 jmp .Lx341_64
.Lx341_65:
 lea rcx, [rbp + 736]
.Lx341_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx341_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx341_69
 cmp esi, 1
 jne .Lx341_70
 mov rcx, rax
 jmp .Lx341_68
.Lx341_70:
 cmp esi, 2
 jne .Lx341_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx341_69
 mov rcx, rax
 jmp .Lx341_68
.Lx341_71:
 cmp eax, 13
 jne .Lx341_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx341_69
 cmp rax, rcx
 je .Lx341_69
 mov rcx, rax
 jmp .Lx341_68
.Lx341_69:
 cmp r9, rcx
 je .Lx341_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx341_75
 cmp eax, 99
 je .Lx341_75
 cmp eax, 13
 jne .Lx341_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx341_75
 jmp .Lx341_72
.Lx341_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx341_76
 cmp eax, 99
 je .Lx341_76
 cmp eax, 13
 jne .Lx341_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx341_76
 jmp .Lx341_72
.Lx341_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx341_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx341_72
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov qword ptr [r11 + 24], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 32], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 40], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 2
 mov dword ptr [r10 + 32], eax
 mov r10, qword ptr [r8 + 8]
 mov rax, qword ptr [r10 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r10 + 8]
 mov qword ptr [r9 + 8], rax
 mov rax, qword ptr [r10 + 16]
 mov qword ptr [rcx + 0], rax
 mov rax, qword ptr [r10 + 24]
 mov qword ptr [rcx + 8], rax
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx341_77
.Lx341_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx341_77
.Lx341_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx341_77:
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain300_n16_α
 jmp xchain300_n29_α
 xchain300_n28_β:
 jmp xchain300_n16_α
# IR_VAR_REF
 xchain300_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain300_n30_α
# IR_LIT_STRING
 xchain300_n30_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx344_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain300_n31_α
.Lx344_0:
 .quad .Lx344_0_s
.Lx344_0_s:
 .string "p"
# IR_VAR_REF
 xchain300_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain300_n32_α
# IR_VAR_REF
 xchain300_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain300_n33_α
 xchain300_n33_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+528]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+544]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 552], rax
# marshal arg2 = producer-box slot [zr+480] -> [zr+560]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain300_n16_α
 jmp xchain300_n34_α
 xchain300_n33_β:
 jmp xchain300_n16_α
# IR_VAR_REF
 xchain300_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain300_n35_α
 xchain300_n35_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+400]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+416]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 424], rax
# marshal arg2 = producer-box slot [zr+624] -> [zr+432]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 440], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 400]
 lea r8, [rbp + 400]
.Lx352_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx352_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx352_61
 cmp esi, 1
 jne .Lx352_62
 mov r8, rax
 jmp .Lx352_60
.Lx352_62:
 cmp esi, 2
 jne .Lx352_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx352_61
 mov r8, rax
 jmp .Lx352_60
.Lx352_63:
 cmp eax, 13
 jne .Lx352_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx352_61
 cmp rax, r8
 je .Lx352_61
 mov r8, rax
 jmp .Lx352_60
.Lx352_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx352_72
 cmp eax, 99
 je .Lx352_72
 cmp eax, 13
 jne .Lx352_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx352_72
 jmp .Lx352_74
.Lx352_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx352_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx352_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx352_73
 lea r9, [rbp + 416]
.Lx352_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx352_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx352_65
 cmp esi, 1
 jne .Lx352_66
 mov r9, rax
 jmp .Lx352_64
.Lx352_66:
 cmp esi, 2
 jne .Lx352_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx352_65
 mov r9, rax
 jmp .Lx352_64
.Lx352_67:
 cmp eax, 13
 jne .Lx352_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx352_65
 cmp rax, r9
 je .Lx352_65
 mov r9, rax
 jmp .Lx352_64
.Lx352_65:
 lea rcx, [rbp + 432]
.Lx352_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx352_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx352_69
 cmp esi, 1
 jne .Lx352_70
 mov rcx, rax
 jmp .Lx352_68
.Lx352_70:
 cmp esi, 2
 jne .Lx352_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx352_69
 mov rcx, rax
 jmp .Lx352_68
.Lx352_71:
 cmp eax, 13
 jne .Lx352_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx352_69
 cmp rax, rcx
 je .Lx352_69
 mov rcx, rax
 jmp .Lx352_68
.Lx352_69:
 cmp r9, rcx
 je .Lx352_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx352_75
 cmp eax, 99
 je .Lx352_75
 cmp eax, 13
 jne .Lx352_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx352_75
 jmp .Lx352_72
.Lx352_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx352_76
 cmp eax, 99
 je .Lx352_76
 cmp eax, 13
 jne .Lx352_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx352_76
 jmp .Lx352_72
.Lx352_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx352_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx352_72
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov qword ptr [r11 + 24], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 32], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 40], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 2
 mov dword ptr [r10 + 32], eax
 mov r10, qword ptr [r8 + 8]
 mov rax, qword ptr [r10 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r10 + 8]
 mov qword ptr [r9 + 8], rax
 mov rax, qword ptr [r10 + 16]
 mov qword ptr [rcx + 0], rax
 mov rax, qword ptr [r10 + 24]
 mov qword ptr [rcx + 8], rax
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx352_77
.Lx352_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx352_77
.Lx352_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx352_77:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain300_n16_α
 jmp xchain300_n36_α
 xchain300_n35_β:
 jmp xchain300_n16_α
# IR_VAR_REF
 xchain300_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain300_n37_α
# IR_VAR_REF
 xchain300_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1728]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain300_n38_α
# IR_VAR_REF
 xchain300_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain300_n39_α
 xchain300_n39_α:
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
 mov rdi, qword ptr [rip + .Lx360_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx360_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx360_3]
 lea rdx, [rip + .Lx360_4]
 jmp rax
.Lx360_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx360_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx360_2
.Lx360_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx360_2
.Lx360_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx360_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx360_2
.Lx360_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx360_2
.Lx360_1:
 call rt_faildescr@PLT
.Lx360_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain300_n16_α
 jmp xchain300_n40_α
 xchain300_n39_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx360_0:
 .quad .Lx360_0_s
.Lx360_0_s:
 .string "pair/3"
# IR_SUSPEND yield+resume
 xchain300_n40_α:
 lea rax, [rip + xchain300_n40_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_pair$2F3_γ
 xchain300_n40_β:
 jmp xchain300_n39_β
proc_pair$2F3_res:
add rsp, 8
pop rbp
proc_pair$2F3_β:
jmp qword ptr [rbp + 1680]
proc_pair$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_pair$2F3_res]
push rax
mov rax, [rbp + 1800]
mov rbp, [rbp + 1816]
jmp rax
proc_pair$2F3_ω:
mov rax, [rbp + 1808]
lea rsp, [rbp + 1824]
mov rbp, [rbp + 1816]
jmp rax
  .globl proc_q$2F2_α
proc_q$2F2_α:
#=======================================================================================================================
    .global proc_q$2F2_α
    .global proc_q$2F2_β
    .global proc_q$2F2_γ
    .global proc_q$2F2_ω
  sub rsp, 960
  mov [rsp + 936], rcx
  mov [rsp + 944], rdx
  mov [rsp + 952], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 872], rsp
  mov rdi, rsp
  mov esi, 848
  mov edx, 928
  call rt_jmp_frame_lexprep2@PLT
proc_q$2F2_α_body:
lea rax, [rip + xchain363_n18_β]
mov qword ptr [rbp + 848], rax
 xchain363_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_q$2F2_ω
 jmp xchain363_n1_α
 xchain363_n0_β:
 jmp proc_q$2F2_ω
# IR_VAR_REF
 xchain363_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain363_n2_α
# IR_VAR_REF
 xchain363_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 896]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain363_n3_α
 xchain363_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+752]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+768]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 776], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 752]
 lea r8, [rbp + 752]
.Lx369_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx369_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx369_41
 cmp esi, 1
 jne .Lx369_55
 mov r8, rax
 jmp .Lx369_40
.Lx369_55:
 cmp esi, 2
 jne .Lx369_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx369_41
 mov r8, rax
 jmp .Lx369_40
.Lx369_56:
 cmp eax, 13
 jne .Lx369_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx369_41
 cmp rax, r8
 je .Lx369_41
 mov r8, rax
 jmp .Lx369_40
.Lx369_41:
 lea r9, [rbp + 768]
.Lx369_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx369_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx369_43
 cmp esi, 1
 jne .Lx369_57
 mov r9, rax
 jmp .Lx369_42
.Lx369_57:
 cmp esi, 2
 jne .Lx369_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx369_43
 mov r9, rax
 jmp .Lx369_42
.Lx369_58:
 cmp eax, 13
 jne .Lx369_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx369_43
 cmp rax, r9
 je .Lx369_43
 mov r9, rax
 jmp .Lx369_42
.Lx369_43:
 cmp r8, r9
 je .Lx369_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx369_44
 cmp eax, 99
 je .Lx369_44
 cmp eax, 13
 jne .Lx369_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx369_44
 jmp .Lx369_45
.Lx369_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx369_53
 cmp eax, 99
 je .Lx369_53
 cmp eax, 13
 jne .Lx369_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx369_53
 jmp .Lx369_46
.Lx369_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx369_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx369_53
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
 jmp .Lx369_51
.Lx369_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx369_47
 cmp eax, 99
 je .Lx369_47
 cmp eax, 13
 jne .Lx369_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx369_47
 jmp .Lx369_48
.Lx369_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx369_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx369_53
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
 jmp .Lx369_51
.Lx369_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx369_49
 cmp edx, 14
 je .Lx369_53
 jmp .Lx369_52
.Lx369_49:
 cmp edx, 14
 je .Lx369_52
 cmp ecx, 7
 je .Lx369_53
 cmp edx, 7
 je .Lx369_53
 cmp ecx, 6
 jne .Lx369_50
 cmp edx, 6
 jne .Lx369_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx369_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx369_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx369_51
 jmp .Lx369_52
.Lx369_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx369_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx369_53
.Lx369_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx369_54
.Lx369_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx369_54
.Lx369_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx369_54:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain363_n5_α
 jmp xchain363_n4_α
 xchain363_n3_β:
 jmp xchain363_n5_α
# IR_VAR_REF
 xchain363_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain363_n6_α
 xchain363_n5_α:
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
 je proc_q$2F2_ω
 jmp proc_q$2F2_ω
 xchain363_n5_β:
 jmp proc_q$2F2_ω
# IR_VAR_REF
 xchain363_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 880]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain363_n7_α
 xchain363_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 640]
 lea r8, [rbp + 640]
.Lx375_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx375_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx375_41
 cmp esi, 1
 jne .Lx375_55
 mov r8, rax
 jmp .Lx375_40
.Lx375_55:
 cmp esi, 2
 jne .Lx375_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx375_41
 mov r8, rax
 jmp .Lx375_40
.Lx375_56:
 cmp eax, 13
 jne .Lx375_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx375_41
 cmp rax, r8
 je .Lx375_41
 mov r8, rax
 jmp .Lx375_40
.Lx375_41:
 lea r9, [rbp + 656]
.Lx375_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx375_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx375_43
 cmp esi, 1
 jne .Lx375_57
 mov r9, rax
 jmp .Lx375_42
.Lx375_57:
 cmp esi, 2
 jne .Lx375_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx375_43
 mov r9, rax
 jmp .Lx375_42
.Lx375_58:
 cmp eax, 13
 jne .Lx375_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx375_43
 cmp rax, r9
 je .Lx375_43
 mov r9, rax
 jmp .Lx375_42
.Lx375_43:
 cmp r8, r9
 je .Lx375_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx375_44
 cmp eax, 99
 je .Lx375_44
 cmp eax, 13
 jne .Lx375_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx375_44
 jmp .Lx375_45
.Lx375_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx375_53
 cmp eax, 99
 je .Lx375_53
 cmp eax, 13
 jne .Lx375_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx375_53
 jmp .Lx375_46
.Lx375_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx375_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx375_53
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
 jmp .Lx375_51
.Lx375_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx375_47
 cmp eax, 99
 je .Lx375_47
 cmp eax, 13
 jne .Lx375_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx375_47
 jmp .Lx375_48
.Lx375_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx375_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx375_53
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
 jmp .Lx375_51
.Lx375_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx375_49
 cmp edx, 14
 je .Lx375_53
 jmp .Lx375_52
.Lx375_49:
 cmp edx, 14
 je .Lx375_52
 cmp ecx, 7
 je .Lx375_53
 cmp edx, 7
 je .Lx375_53
 cmp ecx, 6
 jne .Lx375_50
 cmp edx, 6
 jne .Lx375_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx375_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx375_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx375_51
 jmp .Lx375_52
.Lx375_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx375_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx375_53
.Lx375_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx375_54
.Lx375_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx375_54
.Lx375_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx375_54:
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain363_n5_α
 jmp xchain363_n8_α
 xchain363_n7_β:
 jmp xchain363_n5_α
# IR_VAR_REF
 xchain363_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 896]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain363_n9_α
# IR_VAR_REF
 xchain363_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 912]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain363_n10_α
 xchain363_n10_α:
 mov qword ptr [rbp + 528], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx381_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx381_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx381_3]
 lea rdx, [rip + .Lx381_4]
 jmp rax
.Lx381_3:
 mov qword ptr [rbp + 536], rsp
 mov rax, qword ptr [rbp + 528]
 test rax, rax
 jne .Lx381_5
 mov qword ptr [rbp + 528], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx381_2
.Lx381_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx381_2
.Lx381_4:
 mov rax, qword ptr [rbp + 528]
 test rax, rax
 jne .Lx381_6
 mov qword ptr [rbp + 528], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx381_2
.Lx381_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx381_2
.Lx381_1:
 call rt_faildescr@PLT
.Lx381_2:
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain363_n5_α
 jmp xchain363_n11_α
 xchain363_n10_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 536]
 jmp qword ptr [rsp]
.Lx381_0:
 .quad .Lx381_0_s
.Lx381_0_s:
 .string "perm/2"
# IR_VAR_REF
 xchain363_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 896]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain363_n12_α
# IR_VAR_REF
 xchain363_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 912]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain363_n13_α
# IR_VAR_REF
 xchain363_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 880]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain363_n14_α
 xchain363_n14_α:
 mov qword ptr [rbp + 352], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx389_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx389_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx389_3]
 lea rdx, [rip + .Lx389_4]
 jmp rax
.Lx389_3:
 mov qword ptr [rbp + 360], rsp
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx389_5
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx389_2
.Lx389_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx389_2
.Lx389_4:
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx389_6
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx389_2
.Lx389_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx389_2
.Lx389_1:
 call rt_faildescr@PLT
.Lx389_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain363_n10_β
 jmp xchain363_n15_α
 xchain363_n14_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 360]
 jmp qword ptr [rsp]
.Lx389_0:
 .quad .Lx389_0_s
.Lx389_0_s:
 .string "pair/3"
# IR_LIT_STRING
 xchain363_n15_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx390_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain363_n16_α
.Lx390_0:
 .quad .Lx390_0_s
.Lx390_0_s:
 .string "[]"
# IR_VAR_REF
 xchain363_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 880]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain363_n17_α
 xchain363_n17_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx394_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx394_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx394_3]
 lea rdx, [rip + .Lx394_4]
 jmp rax
.Lx394_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx394_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx394_2
.Lx394_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx394_2
.Lx394_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx394_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx394_2
.Lx394_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx394_2
.Lx394_1:
 call rt_faildescr@PLT
.Lx394_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain363_n14_β
 jmp xchain363_n18_α
 xchain363_n17_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx394_0:
 .quad .Lx394_0_s
.Lx394_0_s:
 .string "safe/2"
# IR_SUSPEND yield+resume
 xchain363_n18_α:
 lea rax, [rip + xchain363_n18_β]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_q$2F2_γ
 xchain363_n18_β:
 jmp xchain363_n17_β
proc_q$2F2_res:
add rsp, 8
pop rbp
proc_q$2F2_β:
jmp qword ptr [rbp + 848]
proc_q$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_q$2F2_res]
push rax
mov rax, [rbp + 936]
mov rbp, [rbp + 952]
jmp rax
proc_q$2F2_ω:
mov rax, [rbp + 944]
lea rsp, [rbp + 960]
mov rbp, [rbp + 952]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "sel/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_sel$2F3_α]
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
  .Lstartup_pname1: .string "q10/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_q10$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1872
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "test/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_test$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1360
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "nd/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_nd$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1632
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_nd$2F2_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname4: .string "safe/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_safe$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1200
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "perm/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_perm$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1280
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname6: .string "pair/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_pair$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1792
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname7: .string "q/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_q$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 928
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname7]
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
 xchain397_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain397_n1_α
 xchain397_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain397_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain397_n2_α
 xchain397_n2_α:
 mov qword ptr [rbp + 272], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx402_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx402_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx402_3]
 lea rdx, [rip + .Lx402_4]
 jmp rax
.Lx402_3:
 mov qword ptr [rbp + 280], rsp
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx402_5
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx402_2
.Lx402_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx402_2
.Lx402_4:
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx402_6
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx402_2
.Lx402_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx402_2
.Lx402_1:
 call rt_faildescr@PLT
.Lx402_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain397_n4_α
 jmp xchain397_n3_α
 xchain397_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 280]
 jmp qword ptr [rsp]
.Lx402_0:
 .quad .Lx402_0_s
.Lx402_0_s:
 .string "q10/1"
# IR_VAR
 xchain397_n3_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 216], rax
 jmp xchain397_n5_α
 xchain397_n4_α:
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
 xchain397_n4_β:
 jmp main_ω
 xchain397_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn407: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn407]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain397_n2_β
 jmp xchain397_n6_α
 xchain397_n5_β:
 jmp xchain397_n2_β
# IR_LIT_STRING
 xchain397_n6_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx408_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain397_n7_α
.Lx408_0:
 .quad .Lx408_0_s
.Lx408_0_s:
 .string ""
 xchain397_n7_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn410: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn410]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain397_n2_β
 jmp xchain397_n8_α
 xchain397_n7_β:
 jmp xchain397_n2_β
# IR_MOVE_LABEL
 xchain397_n8_α:
 lea rax, [rip + xchain397_n2_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain397_n9_α:
 jmp qword ptr [rbp + 32]
 xchain397_n9_β:
 jmp main_ω
main_β:
jmp xchain397_n9_α
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
