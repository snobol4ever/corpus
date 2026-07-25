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
 je .Lx18_80
 cmp eax, 99
 je .Lx18_80
 cmp eax, 13
 jne .Lx18_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx18_80
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
.Lx18_80:
# PL-SINK-3 inline $unify_lst WRITE mode: carve 2 kids off the PLJ frontier, join unbound args, bind subject to the './2 cell
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx18_72
 lea r10, [rip + g_hp_fr]
 mov eax, dword ptr [r10 + 24]
 test eax, eax
 je .Lx18_72
 mov r11, qword ptr [r10 + 0]
 mov rax, qword ptr [r10 + 8]
 sub rax, 48
 cmp r11, rax
 ja .Lx18_72
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx18_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 72
 cmp rsi, rax
 ja .Lx18_72
 lea r10, [rip + g_hp_fr]
 mov r11, qword ptr [r10 + 0]
 mov qword ptr [r11 + 0], 0
 mov dword ptr [r11 + 8], 48
 mov dword ptr [r11 + 12], 65745
 lea rdx, [r11 + 16]
 mov rax, r11
 add rax, 48
 mov qword ptr [r10 + 0], rax
 mov rax, qword ptr [r10 + 16]
 add rax, 1
 mov qword ptr [r10 + 16], rax
 lea r9, [rbp + 1008]
.Lx18_81:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx18_84
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx18_82
 cmp esi, 1
 jne .Lx18_83
 mov r9, rax
 jmp .Lx18_81
.Lx18_83:
 cmp esi, 2
 jne .Lx18_82
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx18_82
 mov r9, rax
 jmp .Lx18_81
.Lx18_84:
 cmp eax, 13
 jne .Lx18_82
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx18_82
 cmp rax, r9
 je .Lx18_82
 mov r9, rax
 jmp .Lx18_81
.Lx18_82:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx18_85
 cmp eax, 99
 je .Lx18_85
 cmp eax, 13
 jne .Lx18_86
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx18_85
 jmp .Lx18_86
.Lx18_85:
 mov qword ptr [rdx + 0], 13
 lea rax, [rdx + 0]
 mov qword ptr [rdx + 8], rax
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov qword ptr [r9 + 0], 13
 lea rax, [rdx + 0]
 mov qword ptr [r9 + 8], rax
 jmp .Lx18_87
.Lx18_86:
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [rdx + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [rdx + 8], rax
.Lx18_87:
 lea rcx, [rbp + 1024]
.Lx18_88:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx18_91
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx18_89
 cmp esi, 1
 jne .Lx18_90
 mov rcx, rax
 jmp .Lx18_88
.Lx18_90:
 cmp esi, 2
 jne .Lx18_89
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx18_89
 mov rcx, rax
 jmp .Lx18_88
.Lx18_91:
 cmp eax, 13
 jne .Lx18_89
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx18_89
 cmp rax, rcx
 je .Lx18_89
 mov rcx, rax
 jmp .Lx18_88
.Lx18_89:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx18_92
 cmp eax, 99
 je .Lx18_92
 cmp eax, 13
 jne .Lx18_93
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx18_92
 jmp .Lx18_93
.Lx18_92:
 mov qword ptr [rdx + 16], 13
 lea rax, [rdx + 16]
 mov qword ptr [rdx + 24], rax
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 add r11, rsi
 mov qword ptr [r11 + 0], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov qword ptr [rcx + 0], 13
 lea rax, [rdx + 16]
 mov qword ptr [rcx + 8], rax
 jmp .Lx18_94
.Lx18_93:
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rdx + 16], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [rdx + 24], rax
.Lx18_94:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov dword ptr [r8 + 0], 14
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 mov dword ptr [r8 + 4], eax
 mov qword ptr [r8 + 8], rdx
 mov rax, qword ptr [r8 + 0]
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
 je .Lx34_80
 cmp eax, 99
 je .Lx34_80
 cmp eax, 13
 jne .Lx34_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx34_80
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
.Lx34_80:
# PL-SINK-3 inline $unify_lst WRITE mode: carve 2 kids off the PLJ frontier, join unbound args, bind subject to the './2 cell
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx34_72
 lea r10, [rip + g_hp_fr]
 mov eax, dword ptr [r10 + 24]
 test eax, eax
 je .Lx34_72
 mov r11, qword ptr [r10 + 0]
 mov rax, qword ptr [r10 + 8]
 sub rax, 48
 cmp r11, rax
 ja .Lx34_72
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx34_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 72
 cmp rsi, rax
 ja .Lx34_72
 lea r10, [rip + g_hp_fr]
 mov r11, qword ptr [r10 + 0]
 mov qword ptr [r11 + 0], 0
 mov dword ptr [r11 + 8], 48
 mov dword ptr [r11 + 12], 65745
 lea rdx, [r11 + 16]
 mov rax, r11
 add rax, 48
 mov qword ptr [r10 + 0], rax
 mov rax, qword ptr [r10 + 16]
 add rax, 1
 mov qword ptr [r10 + 16], rax
 lea r9, [rbp + 576]
.Lx34_81:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx34_84
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx34_82
 cmp esi, 1
 jne .Lx34_83
 mov r9, rax
 jmp .Lx34_81
.Lx34_83:
 cmp esi, 2
 jne .Lx34_82
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx34_82
 mov r9, rax
 jmp .Lx34_81
.Lx34_84:
 cmp eax, 13
 jne .Lx34_82
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx34_82
 cmp rax, r9
 je .Lx34_82
 mov r9, rax
 jmp .Lx34_81
.Lx34_82:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx34_85
 cmp eax, 99
 je .Lx34_85
 cmp eax, 13
 jne .Lx34_86
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx34_85
 jmp .Lx34_86
.Lx34_85:
 mov qword ptr [rdx + 0], 13
 lea rax, [rdx + 0]
 mov qword ptr [rdx + 8], rax
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov qword ptr [r9 + 0], 13
 lea rax, [rdx + 0]
 mov qword ptr [r9 + 8], rax
 jmp .Lx34_87
.Lx34_86:
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [rdx + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [rdx + 8], rax
.Lx34_87:
 lea rcx, [rbp + 592]
.Lx34_88:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx34_91
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx34_89
 cmp esi, 1
 jne .Lx34_90
 mov rcx, rax
 jmp .Lx34_88
.Lx34_90:
 cmp esi, 2
 jne .Lx34_89
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx34_89
 mov rcx, rax
 jmp .Lx34_88
.Lx34_91:
 cmp eax, 13
 jne .Lx34_89
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx34_89
 cmp rax, rcx
 je .Lx34_89
 mov rcx, rax
 jmp .Lx34_88
.Lx34_89:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx34_92
 cmp eax, 99
 je .Lx34_92
 cmp eax, 13
 jne .Lx34_93
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx34_92
 jmp .Lx34_93
.Lx34_92:
 mov qword ptr [rdx + 16], 13
 lea rax, [rdx + 16]
 mov qword ptr [rdx + 24], rax
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 add r11, rsi
 mov qword ptr [r11 + 0], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov qword ptr [rcx + 0], 13
 lea rax, [rdx + 16]
 mov qword ptr [rcx + 8], rax
 jmp .Lx34_94
.Lx34_93:
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rdx + 16], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [rdx + 24], rax
.Lx34_94:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov dword ptr [r8 + 0], 14
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 mov dword ptr [r8 + 4], eax
 mov qword ptr [r8 + 8], rdx
 mov rax, qword ptr [r8 + 0]
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
 je .Lx41_80
 cmp eax, 99
 je .Lx41_80
 cmp eax, 13
 jne .Lx41_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx41_80
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
.Lx41_80:
# PL-SINK-3 inline $unify_lst WRITE mode: carve 2 kids off the PLJ frontier, join unbound args, bind subject to the './2 cell
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx41_72
 lea r10, [rip + g_hp_fr]
 mov eax, dword ptr [r10 + 24]
 test eax, eax
 je .Lx41_72
 mov r11, qword ptr [r10 + 0]
 mov rax, qword ptr [r10 + 8]
 sub rax, 48
 cmp r11, rax
 ja .Lx41_72
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx41_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 72
 cmp rsi, rax
 ja .Lx41_72
 lea r10, [rip + g_hp_fr]
 mov r11, qword ptr [r10 + 0]
 mov qword ptr [r11 + 0], 0
 mov dword ptr [r11 + 8], 48
 mov dword ptr [r11 + 12], 65745
 lea rdx, [r11 + 16]
 mov rax, r11
 add rax, 48
 mov qword ptr [r10 + 0], rax
 mov rax, qword ptr [r10 + 16]
 add rax, 1
 mov qword ptr [r10 + 16], rax
 lea r9, [rbp + 416]
.Lx41_81:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx41_84
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx41_82
 cmp esi, 1
 jne .Lx41_83
 mov r9, rax
 jmp .Lx41_81
.Lx41_83:
 cmp esi, 2
 jne .Lx41_82
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx41_82
 mov r9, rax
 jmp .Lx41_81
.Lx41_84:
 cmp eax, 13
 jne .Lx41_82
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx41_82
 cmp rax, r9
 je .Lx41_82
 mov r9, rax
 jmp .Lx41_81
.Lx41_82:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx41_85
 cmp eax, 99
 je .Lx41_85
 cmp eax, 13
 jne .Lx41_86
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx41_85
 jmp .Lx41_86
.Lx41_85:
 mov qword ptr [rdx + 0], 13
 lea rax, [rdx + 0]
 mov qword ptr [rdx + 8], rax
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov qword ptr [r9 + 0], 13
 lea rax, [rdx + 0]
 mov qword ptr [r9 + 8], rax
 jmp .Lx41_87
.Lx41_86:
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [rdx + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [rdx + 8], rax
.Lx41_87:
 lea rcx, [rbp + 432]
.Lx41_88:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx41_91
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx41_89
 cmp esi, 1
 jne .Lx41_90
 mov rcx, rax
 jmp .Lx41_88
.Lx41_90:
 cmp esi, 2
 jne .Lx41_89
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx41_89
 mov rcx, rax
 jmp .Lx41_88
.Lx41_91:
 cmp eax, 13
 jne .Lx41_89
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx41_89
 cmp rax, rcx
 je .Lx41_89
 mov rcx, rax
 jmp .Lx41_88
.Lx41_89:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx41_92
 cmp eax, 99
 je .Lx41_92
 cmp eax, 13
 jne .Lx41_93
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx41_92
 jmp .Lx41_93
.Lx41_92:
 mov qword ptr [rdx + 16], 13
 lea rax, [rdx + 16]
 mov qword ptr [rdx + 24], rax
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 add r11, rsi
 mov qword ptr [r11 + 0], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov qword ptr [rcx + 0], 13
 lea rax, [rdx + 16]
 mov qword ptr [rcx + 8], rax
 jmp .Lx41_94
.Lx41_93:
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rdx + 16], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [rdx + 24], rax
.Lx41_94:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov dword ptr [r8 + 0], 14
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 mov dword ptr [r8 + 4], eax
 mov qword ptr [r8 + 8], rdx
 mov rax, qword ptr [r8 + 0]
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
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx49_20
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx49_21
.Lx49_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
.Lx49_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx49_22
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx49_23
.Lx49_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
.Lx49_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx49_24
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx49_25
.Lx49_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
.Lx49_25:
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
  .globl proc_queens$2F2_α
proc_queens$2F2_α:
#=======================================================================================================================
    .global proc_queens$2F2_α
    .global proc_queens$2F2_β
    .global proc_queens$2F2_γ
    .global proc_queens$2F2_ω
  sub rsp, 656
  mov [rsp + 632], rcx
  mov [rsp + 640], rdx
  mov [rsp + 648], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 584], rsp
  mov rdi, rsp
  mov esi, 560
  mov edx, 624
  call rt_jmp_frame_lexprep2@PLT
proc_queens$2F2_α_body:
lea rax, [rip + xchain52_n12_β]
mov qword ptr [rbp + 560], rax
 xchain52_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_queens$2F2_ω
 jmp xchain52_n1_α
 xchain52_n0_β:
 jmp proc_queens$2F2_ω
# IR_VAR_REF
 xchain52_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain52_n2_α
# IR_VAR_REF
 xchain52_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 592]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain52_n3_α
 xchain52_n3_α:
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
 lea r9, [rbp + 480]
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
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n4_α
 xchain52_n3_β:
 jmp xchain52_n5_α
# IR_VAR_REF
 xchain52_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain52_n6_α
 xchain52_n5_α:
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
 je proc_queens$2F2_ω
 jmp proc_queens$2F2_ω
 xchain52_n5_β:
 jmp proc_queens$2F2_ω
# IR_VAR_REF
 xchain52_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 608]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain52_n7_α
 xchain52_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 352]
 lea r8, [rbp + 352]
.Lx64_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx64_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx64_41
 cmp esi, 1
 jne .Lx64_55
 mov r8, rax
 jmp .Lx64_40
.Lx64_55:
 cmp esi, 2
 jne .Lx64_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx64_41
 mov r8, rax
 jmp .Lx64_40
.Lx64_56:
 cmp eax, 13
 jne .Lx64_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx64_41
 cmp rax, r8
 je .Lx64_41
 mov r8, rax
 jmp .Lx64_40
.Lx64_41:
 lea r9, [rbp + 368]
.Lx64_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx64_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx64_43
 cmp esi, 1
 jne .Lx64_57
 mov r9, rax
 jmp .Lx64_42
.Lx64_57:
 cmp esi, 2
 jne .Lx64_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx64_43
 mov r9, rax
 jmp .Lx64_42
.Lx64_58:
 cmp eax, 13
 jne .Lx64_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx64_43
 cmp rax, r9
 je .Lx64_43
 mov r9, rax
 jmp .Lx64_42
.Lx64_43:
 cmp r8, r9
 je .Lx64_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx64_44
 cmp eax, 99
 je .Lx64_44
 cmp eax, 13
 jne .Lx64_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx64_44
 jmp .Lx64_45
.Lx64_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx64_53
 cmp eax, 99
 je .Lx64_53
 cmp eax, 13
 jne .Lx64_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx64_53
 jmp .Lx64_46
.Lx64_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx64_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx64_53
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
 jmp .Lx64_51
.Lx64_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx64_47
 cmp eax, 99
 je .Lx64_47
 cmp eax, 13
 jne .Lx64_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx64_47
 jmp .Lx64_48
.Lx64_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx64_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx64_53
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
 jmp .Lx64_51
.Lx64_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx64_49
 cmp edx, 14
 je .Lx64_53
 jmp .Lx64_52
.Lx64_49:
 cmp edx, 14
 je .Lx64_52
 cmp ecx, 7
 je .Lx64_53
 cmp edx, 7
 je .Lx64_53
 cmp ecx, 6
 jne .Lx64_50
 cmp edx, 6
 jne .Lx64_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx64_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx64_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx64_51
 jmp .Lx64_52
.Lx64_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx64_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx64_53
.Lx64_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx64_54
.Lx64_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx64_54
.Lx64_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx64_54:
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n8_α
 xchain52_n7_β:
 jmp xchain52_n5_α
# IR_VAR_REF
 xchain52_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 592]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain52_n9_α
# IR_LIT_STRING
 xchain52_n9_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain52_n10_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "[]"
# IR_VAR_REF
 xchain52_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 608]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain52_n11_α
 xchain52_n11_α:
 mov qword ptr [rbp + 208], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx71_20
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx71_21
.Lx71_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
.Lx71_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx71_22
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx71_23
.Lx71_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
.Lx71_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx71_24
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx71_25
.Lx71_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
.Lx71_25:
 mov rdi, qword ptr [rip + .Lx71_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx71_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx71_3]
 lea rdx, [rip + .Lx71_4]
 jmp rax
.Lx71_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx71_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx71_2
.Lx71_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx71_2
.Lx71_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx71_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx71_2
.Lx71_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx71_2
.Lx71_1:
 call rt_faildescr@PLT
.Lx71_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain52_n5_α
 jmp xchain52_n12_α
 xchain52_n11_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string "queens_2/3"
# IR_SUSPEND yield+resume
 xchain52_n12_α:
 lea rax, [rip + xchain52_n12_β]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens$2F2_γ
 xchain52_n12_β:
 jmp xchain52_n11_β
proc_queens$2F2_res:
add rsp, 8
pop rbp
proc_queens$2F2_β:
jmp qword ptr [rbp + 560]
proc_queens$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_queens$2F2_res]
push rax
mov rax, [rbp + 632]
mov rbp, [rbp + 648]
jmp rax
proc_queens$2F2_ω:
mov rax, [rbp + 640]
lea rsp, [rbp + 656]
mov rbp, [rbp + 648]
jmp rax
  .globl proc_not_attack$2F2_α
proc_not_attack$2F2_α:
#=======================================================================================================================
    .global proc_not_attack$2F2_α
    .global proc_not_attack$2F2_β
    .global proc_not_attack$2F2_γ
    .global proc_not_attack$2F2_ω
  sub rsp, 624
  mov [rsp + 600], rcx
  mov [rsp + 608], rdx
  mov [rsp + 616], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 552], rsp
  mov rdi, rsp
  mov esi, 544
  mov edx, 592
  call rt_jmp_frame_lexprep2@PLT
proc_not_attack$2F2_α_body:
 xchain74_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_not_attack$2F2_ω
 jmp xchain74_n1_α
 xchain74_n0_β:
 jmp proc_not_attack$2F2_ω
# IR_VAR_REF
 xchain74_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain74_n2_α
# IR_VAR_REF
 xchain74_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 560]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain74_n3_α
 xchain74_n3_α:
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
 lea r9, [rbp + 464]
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
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain74_n5_α
 jmp xchain74_n4_α
 xchain74_n3_β:
 jmp xchain74_n5_α
# IR_VAR_REF
 xchain74_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain74_n6_α
 xchain74_n5_α:
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
 je proc_not_attack$2F2_ω
 jmp proc_not_attack$2F2_ω
 xchain74_n5_β:
 jmp proc_not_attack$2F2_ω
# IR_VAR_REF
 xchain74_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 576]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain74_n7_α
 xchain74_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+352]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 360], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 336]
 lea r8, [rbp + 336]
.Lx86_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx86_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx86_41
 cmp esi, 1
 jne .Lx86_55
 mov r8, rax
 jmp .Lx86_40
.Lx86_55:
 cmp esi, 2
 jne .Lx86_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx86_41
 mov r8, rax
 jmp .Lx86_40
.Lx86_56:
 cmp eax, 13
 jne .Lx86_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx86_41
 cmp rax, r8
 je .Lx86_41
 mov r8, rax
 jmp .Lx86_40
.Lx86_41:
 lea r9, [rbp + 352]
.Lx86_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx86_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx86_43
 cmp esi, 1
 jne .Lx86_57
 mov r9, rax
 jmp .Lx86_42
.Lx86_57:
 cmp esi, 2
 jne .Lx86_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx86_43
 mov r9, rax
 jmp .Lx86_42
.Lx86_58:
 cmp eax, 13
 jne .Lx86_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx86_43
 cmp rax, r9
 je .Lx86_43
 mov r9, rax
 jmp .Lx86_42
.Lx86_43:
 cmp r8, r9
 je .Lx86_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx86_44
 cmp eax, 99
 je .Lx86_44
 cmp eax, 13
 jne .Lx86_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx86_44
 jmp .Lx86_45
.Lx86_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx86_53
 cmp eax, 99
 je .Lx86_53
 cmp eax, 13
 jne .Lx86_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx86_53
 jmp .Lx86_46
.Lx86_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx86_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx86_53
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
 jmp .Lx86_51
.Lx86_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx86_47
 cmp eax, 99
 je .Lx86_47
 cmp eax, 13
 jne .Lx86_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx86_47
 jmp .Lx86_48
.Lx86_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx86_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx86_53
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
 jmp .Lx86_51
.Lx86_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx86_49
 cmp edx, 14
 je .Lx86_53
 jmp .Lx86_52
.Lx86_49:
 cmp edx, 14
 je .Lx86_52
 cmp ecx, 7
 je .Lx86_53
 cmp edx, 7
 je .Lx86_53
 cmp ecx, 6
 jne .Lx86_50
 cmp edx, 6
 jne .Lx86_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx86_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx86_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx86_51
 jmp .Lx86_52
.Lx86_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx86_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx86_53
.Lx86_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx86_54
.Lx86_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx86_54
.Lx86_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx86_54:
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain74_n5_α
 jmp xchain74_n8_α
 xchain74_n7_β:
 jmp xchain74_n5_α
# IR_VAR_REF
 xchain74_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 560]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain74_n9_α
# IR_VAR_REF
 xchain74_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 576]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain74_n10_α
# IR_LIT_INTEGER
 xchain74_n10_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain74_n11_α
.Lx91_0:
 .quad 1
 xchain74_n11_α:
 lea rsi, [rbp + 224]
 lea rdx, [rbp + 256]
 lea rcx, [rbp + 288]
 call proc_not_attack$2F3_dcα
 jmp .Lx93_2
.Lx93_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain74_n5_α
 jmp xchain74_n12_α
 xchain74_n11_β:
 jmp xchain74_n5_α
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
 .string "not_attack/3"
# IR_MOVE_LABEL
 xchain74_n12_α:
 lea rax, [rip + xchain74_n11_β]
 mov qword ptr [rbp + 64], rax
 jmp proc_not_attack$2F2_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain74_n13_α:
 jmp qword ptr [rbp + 64]
 xchain74_n13_β:
 jmp proc_not_attack$2F2_ω
proc_not_attack$2F2_res:
add rsp, 8
pop rbp
proc_not_attack$2F2_β:
jmp xchain74_n13_α
proc_not_attack$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 600]
lea rsp, [rbp + 624]
mov rbp, [rbp + 616]
jmp rax
proc_not_attack$2F2_ω:
mov rax, [rbp + 608]
lea rsp, [rbp + 624]
mov rbp, [rbp + 616]
jmp rax
proc_not_attack$2F2_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 640
 mov qword ptr [rsp + 632], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 592], r11
 lea rax, [rip + .Lx98_2]
 mov qword ptr [rbp + 600], rax
 lea rax, [rip + .Lx98_3]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 552], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov rdi, rbp
 mov esi, 544
 mov edx, 592
 mov ecx, 2
 mov r8d, 2
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_not_attack$2F2_α_body
.Lx98_2:
 mov rdx, qword ptr [rsp + -640]
 mov rcx, rsp
 add rcx, -624
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx98_3:
 mov rdi, qword ptr [rsp + -640]
 mov rsi, rsp
 add rsi, -624
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_not_attack$2F3_α
proc_not_attack$2F3_α:
#=======================================================================================================================
    .global proc_not_attack$2F3_α
    .global proc_not_attack$2F3_β
    .global proc_not_attack$2F3_γ
    .global proc_not_attack$2F3_ω
  sub rsp, 2160
  mov [rsp + 2136], rcx
  mov [rsp + 2144], rdx
  mov [rsp + 2152], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2040], rsp
  mov rdi, rsp
  mov esi, 2032
  mov edx, 2128
  call rt_jmp_frame_lexprep2@PLT
proc_not_attack$2F3_α_body:
 xchain99_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_not_attack$2F3_ω
 jmp xchain99_n1_α
 xchain99_n0_β:
 jmp proc_not_attack$2F3_ω
# IR_VAR_REF
 xchain99_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain99_n2_α
# IR_LIT_INTEGER
 xchain99_n2_α:
 mov qword ptr [rbp + 1968], 6
 mov rax, qword ptr [rip + .Lx103_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain99_n3_α
.Lx103_0:
 .quad 2
# IR_LIT_STRING
 xchain99_n3_α:
 mov qword ptr [rbp + 2000], 1
 mov rax, qword ptr [rip + .Lx104_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain99_n4_α
.Lx104_0:
 .quad .Lx104_0_s
.Lx104_0_s:
 .string "[]"
 xchain99_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1936] -> [zr+1888]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1896], rax
# marshal arg1 = producer-box slot [zr+1968] -> [zr+1904]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1912], rax
# marshal arg2 = producer-box slot [zr+2000] -> [zr+1920]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1928], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1888]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je xchain99_n6_α
 jmp xchain99_n5_α
 xchain99_n4_β:
 jmp xchain99_n6_α
# IR_VAR_REF
 xchain99_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain99_n7_α
# IR_VAR_REF
 xchain99_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain99_n8_α
# IR_LIT_STRING
 xchain99_n7_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain99_n9_α
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain99_n8_α:
 mov qword ptr [rbp + 1440], 6
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain99_n10_α
.Lx111_0:
 .quad 3
 xchain99_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1776]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1776]
 mov rsi, qword ptr [rip + .Lx112_2]
 jmp .Lx112_3
.Lx112_2:
 .quad .Lx112_2_s
.Lx112_2_s:
 .string "[]"
.Lx112_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je xchain99_n12_α
 jmp xchain99_n11_α
 xchain99_n9_β:
 jmp xchain99_n12_α
# IR_LIT_INTEGER
 xchain99_n10_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx113_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain99_n13_α
.Lx113_0:
 .quad 0
# IR_VAR_REF
 xchain99_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain99_n14_α
 xchain99_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1520]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1520]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je proc_not_attack$2F3_ω
 jmp xchain99_n6_α
 xchain99_n12_β:
 jmp proc_not_attack$2F3_ω
 xchain99_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1368], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1376]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1384], rax
# marshal arg2 = producer-box slot [zr+1472] -> [zr+1392]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1360]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain99_n16_α
 jmp xchain99_n15_α
 xchain99_n13_β:
 jmp xchain99_n16_α
# IR_VAR_REF
 xchain99_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain99_n17_α
# IR_VAR_REF
 xchain99_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain99_n18_α
 xchain99_n16_α:
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
 je proc_not_attack$2F3_ω
 jmp proc_not_attack$2F3_ω
 xchain99_n16_β:
 jmp proc_not_attack$2F3_ω
 xchain99_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1664]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1672], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1680]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1688], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1664]
 lea r8, [rbp + 1664]
.Lx123_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx123_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx123_41
 cmp esi, 1
 jne .Lx123_55
 mov r8, rax
 jmp .Lx123_40
.Lx123_55:
 cmp esi, 2
 jne .Lx123_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx123_41
 mov r8, rax
 jmp .Lx123_40
.Lx123_56:
 cmp eax, 13
 jne .Lx123_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx123_41
 cmp rax, r8
 je .Lx123_41
 mov r8, rax
 jmp .Lx123_40
.Lx123_41:
 lea r9, [rbp + 1680]
.Lx123_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx123_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx123_43
 cmp esi, 1
 jne .Lx123_57
 mov r9, rax
 jmp .Lx123_42
.Lx123_57:
 cmp esi, 2
 jne .Lx123_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx123_43
 mov r9, rax
 jmp .Lx123_42
.Lx123_58:
 cmp eax, 13
 jne .Lx123_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx123_43
 cmp rax, r9
 je .Lx123_43
 mov r9, rax
 jmp .Lx123_42
.Lx123_43:
 cmp r8, r9
 je .Lx123_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx123_44
 cmp eax, 99
 je .Lx123_44
 cmp eax, 13
 jne .Lx123_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx123_44
 jmp .Lx123_45
.Lx123_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx123_53
 cmp eax, 99
 je .Lx123_53
 cmp eax, 13
 jne .Lx123_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx123_53
 jmp .Lx123_46
.Lx123_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx123_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx123_53
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
 jmp .Lx123_51
.Lx123_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx123_47
 cmp eax, 99
 je .Lx123_47
 cmp eax, 13
 jne .Lx123_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx123_47
 jmp .Lx123_48
.Lx123_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx123_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx123_53
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
 jmp .Lx123_51
.Lx123_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx123_49
 cmp edx, 14
 je .Lx123_53
 jmp .Lx123_52
.Lx123_49:
 cmp edx, 14
 je .Lx123_52
 cmp ecx, 7
 je .Lx123_53
 cmp edx, 7
 je .Lx123_53
 cmp ecx, 6
 jne .Lx123_50
 cmp edx, 6
 jne .Lx123_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx123_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx123_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx123_51
 jmp .Lx123_52
.Lx123_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx123_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx123_53
.Lx123_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx123_54
.Lx123_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx123_54
.Lx123_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx123_54:
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain99_n12_α
 jmp xchain99_n19_α
 xchain99_n17_β:
 jmp xchain99_n12_α
# IR_VAR_REF
 xchain99_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain99_n20_α
# IR_VAR_REF
 xchain99_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain99_n21_α
# IR_VAR_REF
 xchain99_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2048]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain99_n22_α
# IR_VAR_REF
 xchain99_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2048]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain99_n23_α
 xchain99_n22_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1232]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1248]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
# marshal arg2 = producer-box slot [zr+1312] -> [zr+1264]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1272], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1232]
 lea r8, [rbp + 1232]
.Lx132_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx132_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx132_61
 cmp esi, 1
 jne .Lx132_62
 mov r8, rax
 jmp .Lx132_60
.Lx132_62:
 cmp esi, 2
 jne .Lx132_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx132_61
 mov r8, rax
 jmp .Lx132_60
.Lx132_63:
 cmp eax, 13
 jne .Lx132_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx132_61
 cmp rax, r8
 je .Lx132_61
 mov r8, rax
 jmp .Lx132_60
.Lx132_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx132_80
 cmp eax, 99
 je .Lx132_80
 cmp eax, 13
 jne .Lx132_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx132_80
 jmp .Lx132_74
.Lx132_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx132_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx132_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx132_73
 lea r9, [rbp + 1248]
.Lx132_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx132_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx132_65
 cmp esi, 1
 jne .Lx132_66
 mov r9, rax
 jmp .Lx132_64
.Lx132_66:
 cmp esi, 2
 jne .Lx132_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx132_65
 mov r9, rax
 jmp .Lx132_64
.Lx132_67:
 cmp eax, 13
 jne .Lx132_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx132_65
 cmp rax, r9
 je .Lx132_65
 mov r9, rax
 jmp .Lx132_64
.Lx132_65:
 lea rcx, [rbp + 1264]
.Lx132_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx132_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx132_69
 cmp esi, 1
 jne .Lx132_70
 mov rcx, rax
 jmp .Lx132_68
.Lx132_70:
 cmp esi, 2
 jne .Lx132_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx132_69
 mov rcx, rax
 jmp .Lx132_68
.Lx132_71:
 cmp eax, 13
 jne .Lx132_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx132_69
 cmp rax, rcx
 je .Lx132_69
 mov rcx, rax
 jmp .Lx132_68
.Lx132_69:
 cmp r9, rcx
 je .Lx132_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx132_75
 cmp eax, 99
 je .Lx132_75
 cmp eax, 13
 jne .Lx132_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx132_75
 jmp .Lx132_72
.Lx132_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx132_76
 cmp eax, 99
 je .Lx132_76
 cmp eax, 13
 jne .Lx132_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx132_76
 jmp .Lx132_72
.Lx132_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx132_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx132_72
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
 jmp .Lx132_77
.Lx132_80:
# PL-SINK-3 inline $unify_lst WRITE mode: carve 2 kids off the PLJ frontier, join unbound args, bind subject to the './2 cell
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx132_72
 lea r10, [rip + g_hp_fr]
 mov eax, dword ptr [r10 + 24]
 test eax, eax
 je .Lx132_72
 mov r11, qword ptr [r10 + 0]
 mov rax, qword ptr [r10 + 8]
 sub rax, 48
 cmp r11, rax
 ja .Lx132_72
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx132_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 72
 cmp rsi, rax
 ja .Lx132_72
 lea r10, [rip + g_hp_fr]
 mov r11, qword ptr [r10 + 0]
 mov qword ptr [r11 + 0], 0
 mov dword ptr [r11 + 8], 48
 mov dword ptr [r11 + 12], 65745
 lea rdx, [r11 + 16]
 mov rax, r11
 add rax, 48
 mov qword ptr [r10 + 0], rax
 mov rax, qword ptr [r10 + 16]
 add rax, 1
 mov qword ptr [r10 + 16], rax
 lea r9, [rbp + 1248]
.Lx132_81:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx132_84
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx132_82
 cmp esi, 1
 jne .Lx132_83
 mov r9, rax
 jmp .Lx132_81
.Lx132_83:
 cmp esi, 2
 jne .Lx132_82
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx132_82
 mov r9, rax
 jmp .Lx132_81
.Lx132_84:
 cmp eax, 13
 jne .Lx132_82
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx132_82
 cmp rax, r9
 je .Lx132_82
 mov r9, rax
 jmp .Lx132_81
.Lx132_82:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx132_85
 cmp eax, 99
 je .Lx132_85
 cmp eax, 13
 jne .Lx132_86
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx132_85
 jmp .Lx132_86
.Lx132_85:
 mov qword ptr [rdx + 0], 13
 lea rax, [rdx + 0]
 mov qword ptr [rdx + 8], rax
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov qword ptr [r9 + 0], 13
 lea rax, [rdx + 0]
 mov qword ptr [r9 + 8], rax
 jmp .Lx132_87
.Lx132_86:
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [rdx + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [rdx + 8], rax
.Lx132_87:
 lea rcx, [rbp + 1264]
.Lx132_88:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx132_91
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx132_89
 cmp esi, 1
 jne .Lx132_90
 mov rcx, rax
 jmp .Lx132_88
.Lx132_90:
 cmp esi, 2
 jne .Lx132_89
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx132_89
 mov rcx, rax
 jmp .Lx132_88
.Lx132_91:
 cmp eax, 13
 jne .Lx132_89
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx132_89
 cmp rax, rcx
 je .Lx132_89
 mov rcx, rax
 jmp .Lx132_88
.Lx132_89:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx132_92
 cmp eax, 99
 je .Lx132_92
 cmp eax, 13
 jne .Lx132_93
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx132_92
 jmp .Lx132_93
.Lx132_92:
 mov qword ptr [rdx + 16], 13
 lea rax, [rdx + 16]
 mov qword ptr [rdx + 24], rax
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 add r11, rsi
 mov qword ptr [r11 + 0], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov qword ptr [rcx + 0], 13
 lea rax, [rdx + 16]
 mov qword ptr [rcx + 8], rax
 jmp .Lx132_94
.Lx132_93:
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rdx + 16], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [rdx + 24], rax
.Lx132_94:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov dword ptr [r8 + 0], 14
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 mov dword ptr [r8 + 4], eax
 mov qword ptr [r8 + 8], rdx
 mov rax, qword ptr [r8 + 0]
 jmp .Lx132_77
.Lx132_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx132_77
.Lx132_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx132_77:
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain99_n16_α
 jmp xchain99_n24_α
 xchain99_n22_β:
 jmp xchain99_n16_α
 xchain99_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1584] -> [zr+1552]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1560], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1568]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1576], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1552]
 lea r8, [rbp + 1552]
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
 lea r9, [rbp + 1568]
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
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain99_n12_α
 jmp xchain99_n25_α
 xchain99_n23_β:
 jmp xchain99_n12_α
# IR_VAR_REF
 xchain99_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain99_n26_α
 xchain99_n25_α:
# IR_CUT
 jmp xchain99_n27_α
# IR_VAR_REF
 xchain99_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2064]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain99_n28_α
# IR_MOVE_LABEL
 xchain99_n27_α:
 lea rax, [rip + xchain99_n12_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_not_attack$2F3_γ
 xchain99_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1088]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1112], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1088]
 lea r8, [rbp + 1088]
.Lx141_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx141_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx141_41
 cmp esi, 1
 jne .Lx141_55
 mov r8, rax
 jmp .Lx141_40
.Lx141_55:
 cmp esi, 2
 jne .Lx141_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx141_41
 mov r8, rax
 jmp .Lx141_40
.Lx141_56:
 cmp eax, 13
 jne .Lx141_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx141_41
 cmp rax, r8
 je .Lx141_41
 mov r8, rax
 jmp .Lx141_40
.Lx141_41:
 lea r9, [rbp + 1104]
.Lx141_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx141_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx141_43
 cmp esi, 1
 jne .Lx141_57
 mov r9, rax
 jmp .Lx141_42
.Lx141_57:
 cmp esi, 2
 jne .Lx141_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx141_43
 mov r9, rax
 jmp .Lx141_42
.Lx141_58:
 cmp eax, 13
 jne .Lx141_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx141_43
 cmp rax, r9
 je .Lx141_43
 mov r9, rax
 jmp .Lx141_42
.Lx141_43:
 cmp r8, r9
 je .Lx141_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx141_44
 cmp eax, 99
 je .Lx141_44
 cmp eax, 13
 jne .Lx141_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx141_44
 jmp .Lx141_45
.Lx141_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx141_53
 cmp eax, 99
 je .Lx141_53
 cmp eax, 13
 jne .Lx141_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx141_53
 jmp .Lx141_46
.Lx141_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx141_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx141_53
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
 jmp .Lx141_51
.Lx141_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx141_47
 cmp eax, 99
 je .Lx141_47
 cmp eax, 13
 jne .Lx141_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx141_47
 jmp .Lx141_48
.Lx141_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx141_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx141_53
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
 jmp .Lx141_51
.Lx141_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx141_49
 cmp edx, 14
 je .Lx141_53
 jmp .Lx141_52
.Lx141_49:
 cmp edx, 14
 je .Lx141_52
 cmp ecx, 7
 je .Lx141_53
 cmp edx, 7
 je .Lx141_53
 cmp ecx, 6
 jne .Lx141_50
 cmp edx, 6
 jne .Lx141_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx141_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx141_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx141_51
 jmp .Lx141_52
.Lx141_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx141_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx141_53
.Lx141_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx141_54
.Lx141_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx141_54
.Lx141_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx141_54:
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain99_n16_α
 jmp xchain99_n30_α
 xchain99_n28_β:
 jmp xchain99_n16_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain99_n29_α:
 jmp qword ptr [rbp + 80]
 xchain99_n29_β:
 jmp proc_not_attack$2F3_ω
# IR_VAR_REF
 xchain99_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain99_n31_α
# IR_VAR_REF
 xchain99_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain99_n32_α
 xchain99_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+976]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 984], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+992]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1000], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 976]
 lea r8, [rbp + 976]
.Lx148_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx148_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx148_41
 cmp esi, 1
 jne .Lx148_55
 mov r8, rax
 jmp .Lx148_40
.Lx148_55:
 cmp esi, 2
 jne .Lx148_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx148_41
 mov r8, rax
 jmp .Lx148_40
.Lx148_56:
 cmp eax, 13
 jne .Lx148_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx148_41
 cmp rax, r8
 je .Lx148_41
 mov r8, rax
 jmp .Lx148_40
.Lx148_41:
 lea r9, [rbp + 992]
.Lx148_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx148_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx148_43
 cmp esi, 1
 jne .Lx148_57
 mov r9, rax
 jmp .Lx148_42
.Lx148_57:
 cmp esi, 2
 jne .Lx148_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx148_43
 mov r9, rax
 jmp .Lx148_42
.Lx148_58:
 cmp eax, 13
 jne .Lx148_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx148_43
 cmp rax, r9
 je .Lx148_43
 mov r9, rax
 jmp .Lx148_42
.Lx148_43:
 cmp r8, r9
 je .Lx148_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx148_44
 cmp eax, 99
 je .Lx148_44
 cmp eax, 13
 jne .Lx148_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx148_44
 jmp .Lx148_45
.Lx148_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx148_53
 cmp eax, 99
 je .Lx148_53
 cmp eax, 13
 jne .Lx148_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx148_53
 jmp .Lx148_46
.Lx148_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx148_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx148_53
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
 jmp .Lx148_51
.Lx148_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx148_47
 cmp eax, 99
 je .Lx148_47
 cmp eax, 13
 jne .Lx148_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx148_47
 jmp .Lx148_48
.Lx148_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx148_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx148_53
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
 jmp .Lx148_51
.Lx148_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx148_49
 cmp edx, 14
 je .Lx148_53
 jmp .Lx148_52
.Lx148_49:
 cmp edx, 14
 je .Lx148_52
 cmp ecx, 7
 je .Lx148_53
 cmp edx, 7
 je .Lx148_53
 cmp ecx, 6
 jne .Lx148_50
 cmp edx, 6
 jne .Lx148_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx148_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx148_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx148_51
 jmp .Lx148_52
.Lx148_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx148_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx148_53
.Lx148_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx148_54
.Lx148_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx148_54
.Lx148_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx148_54:
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain99_n16_α
 jmp xchain99_n33_α
 xchain99_n32_β:
 jmp xchain99_n16_α
# IR_VAR
 xchain99_n33_α:
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 808], rax
 jmp xchain99_n34_α
# IR_VAR
 xchain99_n34_α:
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 904], rax
 jmp xchain99_n35_α
# IR_VAR
 xchain99_n35_α:
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 936], rax
 jmp xchain99_n36_α
 xchain99_n36_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+848]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+864]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 848]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain99_n16_α
 jmp xchain99_n37_α
 xchain99_n36_β:
 jmp xchain99_n16_α
 xchain99_n37_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+768]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 776], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 768]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain99_n16_α
 jmp xchain99_n38_α
 xchain99_n37_β:
 jmp xchain99_n16_α
# IR_VAR
 xchain99_n38_α:
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 600], rax
 jmp xchain99_n39_α
# IR_VAR
 xchain99_n39_α:
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 696], rax
 jmp xchain99_n40_α
# IR_VAR
 xchain99_n40_α:
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 728], rax
 jmp xchain99_n41_α
 xchain99_n41_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 640]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain99_n16_α
 jmp xchain99_n42_α
 xchain99_n41_β:
 jmp xchain99_n16_α
 xchain99_n42_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain99_n16_α
 jmp xchain99_n43_α
 xchain99_n42_β:
 jmp xchain99_n16_α
# IR_VAR_REF
 xchain99_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2080]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain99_n44_α
# IR_VAR
 xchain99_n44_α:
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 488], rax
 jmp xchain99_n45_α
# IR_LIT_INTEGER
 xchain99_n45_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx169_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain99_n46_α
.Lx169_0:
 .quad 1
 xchain99_n46_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+448]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain99_n16_α
 jmp xchain99_n47_α
 xchain99_n46_β:
 jmp xchain99_n16_α
 xchain99_n47_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain99_n16_α
 jmp xchain99_n48_α
 xchain99_n47_β:
 jmp xchain99_n16_α
# IR_VAR_REF
 xchain99_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2048]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain99_n49_α
# IR_VAR_REF
 xchain99_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2064]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain99_n50_α
# IR_VAR_REF
 xchain99_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2080]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain99_n51_α
 xchain99_n51_α:
 lea rsi, [rbp + 240]
 lea rdx, [rbp + 272]
 lea rcx, [rbp + 304]
 call proc_not_attack$2F3_dcα
 jmp .Lx179_2
.Lx179_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain99_n16_α
 jmp xchain99_n52_α
 xchain99_n51_β:
 jmp xchain99_n16_α
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "not_attack/3"
# IR_MOVE_LABEL
 xchain99_n52_α:
 lea rax, [rip + xchain99_n51_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_not_attack$2F3_γ
proc_not_attack$2F3_res:
add rsp, 8
pop rbp
proc_not_attack$2F3_β:
jmp xchain99_n29_α
proc_not_attack$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2136]
lea rsp, [rbp + 2160]
mov rbp, [rbp + 2152]
jmp rax
proc_not_attack$2F3_ω:
mov rax, [rbp + 2144]
lea rsp, [rbp + 2160]
mov rbp, [rbp + 2152]
jmp rax
proc_not_attack$2F3_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 2176
 mov qword ptr [rsp + 2168], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 2128], r11
 lea rax, [rip + .Lx182_2]
 mov qword ptr [rbp + 2136], rax
 lea rax, [rip + .Lx182_3]
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2040], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov qword ptr [rbp + 32], rcx
 mov rdi, rbp
 mov esi, 2032
 mov edx, 2128
 mov ecx, 3
 mov r8d, 3
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_not_attack$2F3_α_body
.Lx182_2:
 mov rdx, qword ptr [rsp + -2176]
 mov rcx, rsp
 add rcx, -2160
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx182_3:
 mov rdi, qword ptr [rsp + -2176]
 mov rsi, rsp
 add rsi, -2160
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_queens_2$2F3_α
proc_queens_2$2F3_α:
#=======================================================================================================================
    .global proc_queens_2$2F3_α
    .global proc_queens_2$2F3_β
    .global proc_queens_2$2F3_γ
    .global proc_queens_2$2F3_ω
  sub rsp, 2208
  mov [rsp + 2184], rcx
  mov [rsp + 2192], rdx
  mov [rsp + 2200], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2072], rsp
  mov rdi, rsp
  mov esi, 2048
  mov edx, 2176
  call rt_jmp_frame_lexprep2@PLT
proc_queens_2$2F3_α_body:
lea rax, [rip + xchain183_n25_β]
mov qword ptr [rbp + 2048], rax
 xchain183_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_queens_2$2F3_ω
 jmp xchain183_n1_α
 xchain183_n0_β:
 jmp proc_queens_2$2F3_ω
# IR_VAR_REF
 xchain183_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain183_n2_α
# IR_LIT_INTEGER
 xchain183_n2_α:
 mov qword ptr [rbp + 1984], 6
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain183_n3_α
.Lx187_0:
 .quad 2
# IR_LIT_STRING
 xchain183_n3_α:
 mov qword ptr [rbp + 2016], 1
 mov rax, qword ptr [rip + .Lx188_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain183_n4_α
.Lx188_0:
 .quad .Lx188_0_s
.Lx188_0_s:
 .string "[]"
 xchain183_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1952] -> [zr+1904]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1912], rax
# marshal arg1 = producer-box slot [zr+1984] -> [zr+1920]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1928], rax
# marshal arg2 = producer-box slot [zr+2016] -> [zr+1936]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1944], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1904]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je xchain183_n6_α
 jmp xchain183_n5_α
 xchain183_n4_β:
 jmp xchain183_n6_α
# IR_VAR_REF
 xchain183_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain183_n7_α
# IR_VAR_REF
 xchain183_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain183_n8_α
# IR_LIT_STRING
 xchain183_n7_α:
 mov qword ptr [rbp + 1856], 1
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 1864], rax
 jmp xchain183_n9_α
.Lx194_0:
 .quad .Lx194_0_s
.Lx194_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain183_n8_α:
 mov qword ptr [rbp + 1440], 6
 mov rax, qword ptr [rip + .Lx195_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain183_n10_α
.Lx195_0:
 .quad 3
 xchain183_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1792]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1800], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1792]
 mov rsi, qword ptr [rip + .Lx196_2]
 jmp .Lx196_3
.Lx196_2:
 .quad .Lx196_2_s
.Lx196_2_s:
 .string "[]"
.Lx196_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je xchain183_n12_α
 jmp xchain183_n11_α
 xchain183_n9_β:
 jmp xchain183_n12_α
# IR_LIT_INTEGER
 xchain183_n10_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain183_n13_α
.Lx197_0:
 .quad 0
# IR_VAR_REF
 xchain183_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain183_n14_α
 xchain183_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1520]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1520]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je proc_queens_2$2F3_ω
 jmp xchain183_n6_α
 xchain183_n12_β:
 jmp proc_queens_2$2F3_ω
 xchain183_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1368], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1376]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1384], rax
# marshal arg2 = producer-box slot [zr+1472] -> [zr+1392]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1360]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain183_n16_α
 jmp xchain183_n15_α
 xchain183_n13_β:
 jmp xchain183_n16_α
# IR_VAR_REF
 xchain183_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain183_n17_α
# IR_VAR_REF
 xchain183_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain183_n18_α
 xchain183_n16_α:
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
 je proc_queens_2$2F3_ω
 jmp proc_queens_2$2F3_ω
 xchain183_n16_β:
 jmp proc_queens_2$2F3_ω
 xchain183_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1712] -> [zr+1680]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1688], rax
# marshal arg1 = producer-box slot [zr+1744] -> [zr+1696]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1704], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1680]
 lea r8, [rbp + 1680]
.Lx207_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx207_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx207_41
 cmp esi, 1
 jne .Lx207_55
 mov r8, rax
 jmp .Lx207_40
.Lx207_55:
 cmp esi, 2
 jne .Lx207_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx207_41
 mov r8, rax
 jmp .Lx207_40
.Lx207_56:
 cmp eax, 13
 jne .Lx207_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx207_41
 cmp rax, r8
 je .Lx207_41
 mov r8, rax
 jmp .Lx207_40
.Lx207_41:
 lea r9, [rbp + 1696]
.Lx207_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx207_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx207_43
 cmp esi, 1
 jne .Lx207_57
 mov r9, rax
 jmp .Lx207_42
.Lx207_57:
 cmp esi, 2
 jne .Lx207_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx207_43
 mov r9, rax
 jmp .Lx207_42
.Lx207_58:
 cmp eax, 13
 jne .Lx207_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx207_43
 cmp rax, r9
 je .Lx207_43
 mov r9, rax
 jmp .Lx207_42
.Lx207_43:
 cmp r8, r9
 je .Lx207_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx207_44
 cmp eax, 99
 je .Lx207_44
 cmp eax, 13
 jne .Lx207_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx207_44
 jmp .Lx207_45
.Lx207_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx207_53
 cmp eax, 99
 je .Lx207_53
 cmp eax, 13
 jne .Lx207_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx207_53
 jmp .Lx207_46
.Lx207_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx207_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx207_53
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
 jmp .Lx207_51
.Lx207_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx207_47
 cmp eax, 99
 je .Lx207_47
 cmp eax, 13
 jne .Lx207_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx207_47
 jmp .Lx207_48
.Lx207_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx207_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx207_53
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
 jmp .Lx207_51
.Lx207_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx207_49
 cmp edx, 14
 je .Lx207_53
 jmp .Lx207_52
.Lx207_49:
 cmp edx, 14
 je .Lx207_52
 cmp ecx, 7
 je .Lx207_53
 cmp edx, 7
 je .Lx207_53
 cmp ecx, 6
 jne .Lx207_50
 cmp edx, 6
 jne .Lx207_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx207_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx207_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx207_51
 jmp .Lx207_52
.Lx207_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx207_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx207_53
.Lx207_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx207_54
.Lx207_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx207_54
.Lx207_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx207_54:
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 cmp eax, 99
 je xchain183_n12_α
 jmp xchain183_n19_α
 xchain183_n17_β:
 jmp xchain183_n12_α
# IR_VAR_REF
 xchain183_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2160]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain183_n20_α
# IR_VAR_REF
 xchain183_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain183_n21_α
# IR_VAR_REF
 xchain183_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2144]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain183_n22_α
# IR_VAR_REF
 xchain183_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain183_n23_α
 xchain183_n22_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1232]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1248]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
# marshal arg2 = producer-box slot [zr+1312] -> [zr+1264]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1272], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1232]
 lea r8, [rbp + 1232]
.Lx216_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx216_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx216_61
 cmp esi, 1
 jne .Lx216_62
 mov r8, rax
 jmp .Lx216_60
.Lx216_62:
 cmp esi, 2
 jne .Lx216_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx216_61
 mov r8, rax
 jmp .Lx216_60
.Lx216_63:
 cmp eax, 13
 jne .Lx216_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx216_61
 cmp rax, r8
 je .Lx216_61
 mov r8, rax
 jmp .Lx216_60
.Lx216_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx216_80
 cmp eax, 99
 je .Lx216_80
 cmp eax, 13
 jne .Lx216_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx216_80
 jmp .Lx216_74
.Lx216_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx216_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx216_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx216_73
 lea r9, [rbp + 1248]
.Lx216_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx216_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx216_65
 cmp esi, 1
 jne .Lx216_66
 mov r9, rax
 jmp .Lx216_64
.Lx216_66:
 cmp esi, 2
 jne .Lx216_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx216_65
 mov r9, rax
 jmp .Lx216_64
.Lx216_67:
 cmp eax, 13
 jne .Lx216_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx216_65
 cmp rax, r9
 je .Lx216_65
 mov r9, rax
 jmp .Lx216_64
.Lx216_65:
 lea rcx, [rbp + 1264]
.Lx216_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx216_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx216_69
 cmp esi, 1
 jne .Lx216_70
 mov rcx, rax
 jmp .Lx216_68
.Lx216_70:
 cmp esi, 2
 jne .Lx216_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx216_69
 mov rcx, rax
 jmp .Lx216_68
.Lx216_71:
 cmp eax, 13
 jne .Lx216_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx216_69
 cmp rax, rcx
 je .Lx216_69
 mov rcx, rax
 jmp .Lx216_68
.Lx216_69:
 cmp r9, rcx
 je .Lx216_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx216_75
 cmp eax, 99
 je .Lx216_75
 cmp eax, 13
 jne .Lx216_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx216_75
 jmp .Lx216_72
.Lx216_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx216_76
 cmp eax, 99
 je .Lx216_76
 cmp eax, 13
 jne .Lx216_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx216_76
 jmp .Lx216_72
.Lx216_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx216_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx216_72
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
 jmp .Lx216_77
.Lx216_80:
# PL-SINK-3 inline $unify_lst WRITE mode: carve 2 kids off the PLJ frontier, join unbound args, bind subject to the './2 cell
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx216_72
 lea r10, [rip + g_hp_fr]
 mov eax, dword ptr [r10 + 24]
 test eax, eax
 je .Lx216_72
 mov r11, qword ptr [r10 + 0]
 mov rax, qword ptr [r10 + 8]
 sub rax, 48
 cmp r11, rax
 ja .Lx216_72
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx216_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 72
 cmp rsi, rax
 ja .Lx216_72
 lea r10, [rip + g_hp_fr]
 mov r11, qword ptr [r10 + 0]
 mov qword ptr [r11 + 0], 0
 mov dword ptr [r11 + 8], 48
 mov dword ptr [r11 + 12], 65745
 lea rdx, [r11 + 16]
 mov rax, r11
 add rax, 48
 mov qword ptr [r10 + 0], rax
 mov rax, qword ptr [r10 + 16]
 add rax, 1
 mov qword ptr [r10 + 16], rax
 lea r9, [rbp + 1248]
.Lx216_81:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx216_84
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx216_82
 cmp esi, 1
 jne .Lx216_83
 mov r9, rax
 jmp .Lx216_81
.Lx216_83:
 cmp esi, 2
 jne .Lx216_82
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx216_82
 mov r9, rax
 jmp .Lx216_81
.Lx216_84:
 cmp eax, 13
 jne .Lx216_82
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx216_82
 cmp rax, r9
 je .Lx216_82
 mov r9, rax
 jmp .Lx216_81
.Lx216_82:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx216_85
 cmp eax, 99
 je .Lx216_85
 cmp eax, 13
 jne .Lx216_86
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx216_85
 jmp .Lx216_86
.Lx216_85:
 mov qword ptr [rdx + 0], 13
 lea rax, [rdx + 0]
 mov qword ptr [rdx + 8], rax
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov qword ptr [r9 + 0], 13
 lea rax, [rdx + 0]
 mov qword ptr [r9 + 8], rax
 jmp .Lx216_87
.Lx216_86:
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [rdx + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [rdx + 8], rax
.Lx216_87:
 lea rcx, [rbp + 1264]
.Lx216_88:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx216_91
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx216_89
 cmp esi, 1
 jne .Lx216_90
 mov rcx, rax
 jmp .Lx216_88
.Lx216_90:
 cmp esi, 2
 jne .Lx216_89
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx216_89
 mov rcx, rax
 jmp .Lx216_88
.Lx216_91:
 cmp eax, 13
 jne .Lx216_89
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx216_89
 cmp rax, rcx
 je .Lx216_89
 mov rcx, rax
 jmp .Lx216_88
.Lx216_89:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx216_92
 cmp eax, 99
 je .Lx216_92
 cmp eax, 13
 jne .Lx216_93
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx216_92
 jmp .Lx216_93
.Lx216_92:
 mov qword ptr [rdx + 16], 13
 lea rax, [rdx + 16]
 mov qword ptr [rdx + 24], rax
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 add r11, rsi
 mov qword ptr [r11 + 0], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov qword ptr [rcx + 0], 13
 lea rax, [rdx + 16]
 mov qword ptr [rcx + 8], rax
 jmp .Lx216_94
.Lx216_93:
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rdx + 16], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [rdx + 24], rax
.Lx216_94:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov dword ptr [r8 + 0], 14
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 mov dword ptr [r8 + 4], eax
 mov qword ptr [r8 + 8], rdx
 mov rax, qword ptr [r8 + 0]
 jmp .Lx216_77
.Lx216_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx216_77
.Lx216_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx216_77:
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain183_n16_α
 jmp xchain183_n24_α
 xchain183_n22_β:
 jmp xchain183_n16_α
 xchain183_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1568]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1576], rax
# marshal arg1 = producer-box slot [zr+1632] -> [zr+1584]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1592], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1568]
 lea r8, [rbp + 1568]
.Lx217_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx217_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx217_41
 cmp esi, 1
 jne .Lx217_55
 mov r8, rax
 jmp .Lx217_40
.Lx217_55:
 cmp esi, 2
 jne .Lx217_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx217_41
 mov r8, rax
 jmp .Lx217_40
.Lx217_56:
 cmp eax, 13
 jne .Lx217_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx217_41
 cmp rax, r8
 je .Lx217_41
 mov r8, rax
 jmp .Lx217_40
.Lx217_41:
 lea r9, [rbp + 1584]
.Lx217_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx217_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx217_43
 cmp esi, 1
 jne .Lx217_57
 mov r9, rax
 jmp .Lx217_42
.Lx217_57:
 cmp esi, 2
 jne .Lx217_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx217_43
 mov r9, rax
 jmp .Lx217_42
.Lx217_58:
 cmp eax, 13
 jne .Lx217_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx217_43
 cmp rax, r9
 je .Lx217_43
 mov r9, rax
 jmp .Lx217_42
.Lx217_43:
 cmp r8, r9
 je .Lx217_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx217_44
 cmp eax, 99
 je .Lx217_44
 cmp eax, 13
 jne .Lx217_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx217_44
 jmp .Lx217_45
.Lx217_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx217_53
 cmp eax, 99
 je .Lx217_53
 cmp eax, 13
 jne .Lx217_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx217_53
 jmp .Lx217_46
.Lx217_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx217_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx217_53
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
 jmp .Lx217_51
.Lx217_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx217_47
 cmp eax, 99
 je .Lx217_47
 cmp eax, 13
 jne .Lx217_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx217_47
 jmp .Lx217_48
.Lx217_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx217_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx217_53
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
 jmp .Lx217_51
.Lx217_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx217_49
 cmp edx, 14
 je .Lx217_53
 jmp .Lx217_52
.Lx217_49:
 cmp edx, 14
 je .Lx217_52
 cmp ecx, 7
 je .Lx217_53
 cmp edx, 7
 je .Lx217_53
 cmp ecx, 6
 jne .Lx217_50
 cmp edx, 6
 jne .Lx217_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx217_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx217_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx217_51
 jmp .Lx217_52
.Lx217_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx217_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx217_53
.Lx217_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx217_54
.Lx217_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx217_54
.Lx217_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx217_54:
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain183_n12_α
 jmp xchain183_n25_α
 xchain183_n23_β:
 jmp xchain183_n12_α
# IR_VAR_REF
 xchain183_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain183_n26_α
# IR_SUSPEND yield+resume
 xchain183_n25_α:
 lea rax, [rip + xchain183_n25_β]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens_2$2F3_γ
 xchain183_n25_β:
 jmp xchain183_n12_α
# IR_VAR_REF
 xchain183_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain183_n27_α
 xchain183_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1088]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1112], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1088]
 lea r8, [rbp + 1088]
.Lx224_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx224_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx224_41
 cmp esi, 1
 jne .Lx224_55
 mov r8, rax
 jmp .Lx224_40
.Lx224_55:
 cmp esi, 2
 jne .Lx224_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx224_41
 mov r8, rax
 jmp .Lx224_40
.Lx224_56:
 cmp eax, 13
 jne .Lx224_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx224_41
 cmp rax, r8
 je .Lx224_41
 mov r8, rax
 jmp .Lx224_40
.Lx224_41:
 lea r9, [rbp + 1104]
.Lx224_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx224_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx224_43
 cmp esi, 1
 jne .Lx224_57
 mov r9, rax
 jmp .Lx224_42
.Lx224_57:
 cmp esi, 2
 jne .Lx224_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx224_43
 mov r9, rax
 jmp .Lx224_42
.Lx224_58:
 cmp eax, 13
 jne .Lx224_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx224_43
 cmp rax, r9
 je .Lx224_43
 mov r9, rax
 jmp .Lx224_42
.Lx224_43:
 cmp r8, r9
 je .Lx224_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx224_44
 cmp eax, 99
 je .Lx224_44
 cmp eax, 13
 jne .Lx224_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx224_44
 jmp .Lx224_45
.Lx224_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx224_53
 cmp eax, 99
 je .Lx224_53
 cmp eax, 13
 jne .Lx224_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx224_53
 jmp .Lx224_46
.Lx224_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx224_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx224_53
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
 jmp .Lx224_51
.Lx224_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx224_47
 cmp eax, 99
 je .Lx224_47
 cmp eax, 13
 jne .Lx224_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx224_47
 jmp .Lx224_48
.Lx224_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx224_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx224_53
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
 jmp .Lx224_51
.Lx224_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx224_49
 cmp edx, 14
 je .Lx224_53
 jmp .Lx224_52
.Lx224_49:
 cmp edx, 14
 je .Lx224_52
 cmp ecx, 7
 je .Lx224_53
 cmp edx, 7
 je .Lx224_53
 cmp ecx, 6
 jne .Lx224_50
 cmp edx, 6
 jne .Lx224_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx224_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx224_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx224_51
 jmp .Lx224_52
.Lx224_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx224_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx224_53
.Lx224_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx224_54
.Lx224_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx224_54
.Lx224_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx224_54:
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain183_n16_α
 jmp xchain183_n28_α
 xchain183_n27_β:
 jmp xchain183_n16_α
# IR_VAR_REF
 xchain183_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain183_n29_α
# IR_VAR_REF
 xchain183_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain183_n30_α
 xchain183_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+976]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 984], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+992]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1000], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 976]
 lea r8, [rbp + 976]
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
 lea r9, [rbp + 992]
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
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain183_n16_α
 jmp xchain183_n31_α
 xchain183_n30_β:
 jmp xchain183_n16_α
# IR_VAR_REF
 xchain183_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain183_n32_α
# IR_LIT_STRING
 xchain183_n32_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx232_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain183_n33_α
.Lx232_0:
 .quad .Lx232_0_s
.Lx232_0_s:
 .string "."
# IR_VAR_REF
 xchain183_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2160]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain183_n34_α
# IR_VAR_REF
 xchain183_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2144]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain183_n35_α
 xchain183_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+832]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 840], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+848]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 856], rax
# marshal arg2 = producer-box slot [zr+752] -> [zr+864]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 832]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain183_n16_α
 jmp xchain183_n36_α
 xchain183_n35_β:
 jmp xchain183_n16_α
# IR_VAR_REF
 xchain183_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2080]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain183_n37_α
 xchain183_n37_α:
 mov qword ptr [rbp + 688], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx241_20
 mov rax, qword ptr [rbp + 720]
 mov rdx, qword ptr [rbp + 728]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx241_21
.Lx241_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 720]
 mov rdx, qword ptr [rbp + 728]
 call rt_arg_stage@PLT
.Lx241_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx241_22
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx241_23
.Lx241_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 call rt_arg_stage@PLT
.Lx241_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx241_24
 mov rax, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx241_25
.Lx241_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 call rt_arg_stage@PLT
.Lx241_25:
 mov rdi, qword ptr [rip + .Lx241_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx241_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx241_3]
 lea rdx, [rip + .Lx241_4]
 jmp rax
.Lx241_3:
 mov qword ptr [rbp + 696], rsp
 mov rax, qword ptr [rbp + 688]
 test rax, rax
 jne .Lx241_5
 mov qword ptr [rbp + 688], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx241_2
.Lx241_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx241_2
.Lx241_4:
 mov rax, qword ptr [rbp + 688]
 test rax, rax
 jne .Lx241_6
 mov qword ptr [rbp + 688], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx241_2
.Lx241_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx241_2
.Lx241_1:
 call rt_faildescr@PLT
.Lx241_2:
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain183_n16_α
 jmp xchain183_n38_α
 xchain183_n37_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 696]
 jmp qword ptr [rsp]
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "sel/3"
# IR_VAR_REF
 xchain183_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain183_n39_α
# IR_VAR_REF
 xchain183_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain183_n40_α
 xchain183_n40_α:
 lea rsi, [rbp + 560]
 lea rdx, [rbp + 592]
 call proc_not_attack$2F2_dcα
 jmp .Lx247_2
.Lx247_2:
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain183_n37_β
 jmp xchain183_n41_α
 xchain183_n40_β:
 jmp xchain183_n37_β
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "not_attack/2"
# IR_VAR_REF
 xchain183_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2080]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain183_n42_α
# IR_LIT_STRING
 xchain183_n42_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain183_n43_α
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "."
# IR_VAR_REF
 xchain183_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain183_n44_α
# IR_VAR_REF
 xchain183_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain183_n45_α
 xchain183_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+368]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+384]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 392], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+400]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 368]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain183_n16_α
 jmp xchain183_n46_α
 xchain183_n45_β:
 jmp xchain183_n16_α
# IR_VAR_REF
 xchain183_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain183_n47_α
 xchain183_n47_α:
 mov qword ptr [rbp + 224], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx259_20
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx259_21
.Lx259_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
.Lx259_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx259_22
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx259_23
.Lx259_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
.Lx259_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx259_24
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx259_25
.Lx259_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
.Lx259_25:
 mov rdi, qword ptr [rip + .Lx259_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx259_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx259_3]
 lea rdx, [rip + .Lx259_4]
 jmp rax
.Lx259_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx259_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx259_2
.Lx259_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx259_2
.Lx259_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx259_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx259_2
.Lx259_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx259_2
.Lx259_1:
 call rt_faildescr@PLT
.Lx259_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain183_n40_β
 jmp xchain183_n48_α
 xchain183_n47_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx259_0:
 .quad .Lx259_0_s
.Lx259_0_s:
 .string "queens_2/3"
# IR_SUSPEND yield+resume
 xchain183_n48_α:
 lea rax, [rip + xchain183_n48_β]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens_2$2F3_γ
 xchain183_n48_β:
 jmp xchain183_n47_β
proc_queens_2$2F3_res:
add rsp, 8
pop rbp
proc_queens_2$2F3_β:
jmp qword ptr [rbp + 2048]
proc_queens_2$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_queens_2$2F3_res]
push rax
mov rax, [rbp + 2184]
mov rbp, [rbp + 2200]
jmp rax
proc_queens_2$2F3_ω:
mov rax, [rbp + 2192]
lea rsp, [rbp + 2208]
mov rbp, [rbp + 2200]
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
  .Lstartup_pname1: .string "queens/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_queens$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 624
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "not_attack/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_not_attack$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 592
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_not_attack$2F2_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname3: .string "not_attack/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_not_attack$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2128
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_not_attack$2F3_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname4: .string "queens_2/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_queens_2$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2176
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
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
  mov qword ptr [rsp + 1544], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain262_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain262_n1_α
 xchain262_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain262_n1_α:
 mov qword ptr [rbp + 1472], 1
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain262_n2_α
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain262_n2_α:
 mov qword ptr [rbp + 1360], 6
 mov rax, qword ptr [rip + .Lx265_0]
 mov qword ptr [rbp + 1368], rax
 jmp xchain262_n3_α
.Lx265_0:
 .quad 1
# IR_LIT_STRING
 xchain262_n3_α:
 mov qword ptr [rbp + 1328], 1
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain262_n4_α
.Lx266_0:
 .quad .Lx266_0_s
.Lx266_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain262_n4_α:
 mov qword ptr [rbp + 1216], 6
 mov rax, qword ptr [rip + .Lx267_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain262_n5_α
.Lx267_0:
 .quad 2
# IR_LIT_STRING
 xchain262_n5_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain262_n6_α
.Lx268_0:
 .quad .Lx268_0_s
.Lx268_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain262_n6_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain262_n7_α
.Lx269_0:
 .quad 3
# IR_LIT_STRING
 xchain262_n7_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx270_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain262_n8_α
.Lx270_0:
 .quad .Lx270_0_s
.Lx270_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain262_n8_α:
 mov qword ptr [rbp + 928], 6
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain262_n9_α
.Lx271_0:
 .quad 4
# IR_LIT_STRING
 xchain262_n9_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx272_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain262_n10_α
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain262_n10_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain262_n11_α
.Lx273_0:
 .quad 5
# IR_LIT_STRING
 xchain262_n11_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx274_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain262_n12_α
.Lx274_0:
 .quad .Lx274_0_s
.Lx274_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain262_n12_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain262_n13_α
.Lx275_0:
 .quad 6
# IR_LIT_STRING
 xchain262_n13_α:
 mov qword ptr [rbp + 608], 1
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain262_n14_α
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain262_n14_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx277_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain262_n15_α
.Lx277_0:
 .quad 7
# IR_LIT_STRING
 xchain262_n15_α:
 mov qword ptr [rbp + 464], 1
 mov rax, qword ptr [rip + .Lx278_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain262_n16_α
.Lx278_0:
 .quad .Lx278_0_s
.Lx278_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain262_n16_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx279_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain262_n17_α
.Lx279_0:
 .quad 8
# IR_LIT_STRING
 xchain262_n17_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain262_n18_α
.Lx280_0:
 .quad .Lx280_0_s
.Lx280_0_s:
 .string "[]"
 xchain262_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+400]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+416]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 424], rax
# marshal arg2 = producer-box slot [zr+320] -> [zr+432]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 400]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je main_ω
 jmp xchain262_n19_α
 xchain262_n18_β:
 jmp main_ω
 xchain262_n19_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+544]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+560]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 568], rax
# marshal arg2 = producer-box slot [zr+384] -> [zr+576]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 544]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je main_ω
 jmp xchain262_n20_α
 xchain262_n19_β:
 jmp main_ω
 xchain262_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+688]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+704]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 712], rax
# marshal arg2 = producer-box slot [zr+528] -> [zr+720]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 688]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je main_ω
 jmp xchain262_n21_α
 xchain262_n20_β:
 jmp main_ω
 xchain262_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+832]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 840], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+848]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 856], rax
# marshal arg2 = producer-box slot [zr+672] -> [zr+864]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 832]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je main_ω
 jmp xchain262_n22_α
 xchain262_n21_β:
 jmp main_ω
 xchain262_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+976]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 984], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+992]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 1000], rax
# marshal arg2 = producer-box slot [zr+816] -> [zr+1008]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 976]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je main_ω
 jmp xchain262_n23_α
 xchain262_n22_β:
 jmp main_ω
 xchain262_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1120]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1128], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1136]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1144], rax
# marshal arg2 = producer-box slot [zr+960] -> [zr+1152]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 1160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1120]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je main_ω
 jmp xchain262_n24_α
 xchain262_n23_β:
 jmp main_ω
 xchain262_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1264]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1272], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1280]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1288], rax
# marshal arg2 = producer-box slot [zr+1104] -> [zr+1296]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1264]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je main_ω
 jmp xchain262_n25_α
 xchain262_n24_β:
 jmp main_ω
 xchain262_n25_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1408]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1416], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1424]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1432], rax
# marshal arg2 = producer-box slot [zr+1248] -> [zr+1440]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1408]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain262_n27_α
 jmp xchain262_n26_α
 xchain262_n25_β:
 jmp xchain262_n27_α
# IR_VAR_REF
 xchain262_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain262_n28_α
 xchain262_n27_α:
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
 xchain262_n27_β:
 jmp main_ω
 xchain262_n28_α:
 mov qword ptr [rbp + 288], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx293_20
 mov rax, qword ptr [rbp + 1392]
 mov rdx, qword ptr [rbp + 1400]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx293_21
.Lx293_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1392]
 mov rdx, qword ptr [rbp + 1400]
 call rt_arg_stage@PLT
.Lx293_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx293_22
 mov rax, qword ptr [rbp + 1504]
 mov rdx, qword ptr [rbp + 1512]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx293_23
.Lx293_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 1504]
 mov rdx, qword ptr [rbp + 1512]
 call rt_arg_stage@PLT
.Lx293_23:
 mov rdi, qword ptr [rip + .Lx293_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx293_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx293_3]
 lea rdx, [rip + .Lx293_4]
 jmp rax
.Lx293_3:
 mov qword ptr [rbp + 296], rsp
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx293_5
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx293_2
.Lx293_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx293_2
.Lx293_4:
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx293_6
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx293_2
.Lx293_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx293_2
.Lx293_1:
 call rt_faildescr@PLT
.Lx293_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain262_n27_α
 jmp xchain262_n29_α
 xchain262_n28_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 296]
 jmp qword ptr [rsp]
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "queens/2"
# IR_VAR
 xchain262_n29_α:
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 216], rax
 jmp xchain262_n30_α
 xchain262_n30_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn297: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn297]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain262_n28_β
 jmp xchain262_n31_α
 xchain262_n30_β:
 jmp xchain262_n28_β
# IR_LIT_STRING
 xchain262_n31_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx298_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain262_n32_α
.Lx298_0:
 .quad .Lx298_0_s
.Lx298_0_s:
 .string ""
 xchain262_n32_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn300: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn300]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain262_n28_β
 jmp xchain262_n33_α
 xchain262_n32_β:
 jmp xchain262_n28_β
# IR_MOVE_LABEL
 xchain262_n33_α:
 lea rax, [rip + xchain262_n28_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain262_n34_α:
 jmp qword ptr [rbp + 32]
 xchain262_n34_β:
 jmp main_ω
main_β:
jmp xchain262_n34_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1544]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 1544]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
