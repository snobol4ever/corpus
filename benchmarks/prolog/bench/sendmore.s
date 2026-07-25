  .intel_syntax noprefix
  .text
  .globl proc_sumdigit$2F5_α
proc_sumdigit$2F5_α:
#=======================================================================================================================
    .global proc_sumdigit$2F5_α
    .global proc_sumdigit$2F5_β
    .global proc_sumdigit$2F5_γ
    .global proc_sumdigit$2F5_ω
  sub rsp, 1888
  mov [rsp + 1864], rcx
  mov [rsp + 1872], rdx
  mov [rsp + 1880], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1752], rsp
  mov rdi, rsp
  mov esi, 1728
  mov edx, 1856
  call rt_jmp_frame_lexprep2@PLT
proc_sumdigit$2F5_α_body:
lea rax, [rip + xchain0_n41_β]
mov qword ptr [rbp + 1728], rax
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
 lea rdi, [rbp + 144]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx1_101:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_sumdigit$2F5_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_sumdigit$2F5_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1808]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain0_n3_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1632]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1640], rax
# marshal arg1 = producer-box slot [zr+1696] -> [zr+1648]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1656], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1632]
 lea r8, [rbp + 1632]
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
 lea r9, [rbp + 1648]
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
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+176]
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 176]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je proc_sumdigit$2F5_ω
 jmp proc_sumdigit$2F5_ω
 xchain0_n5_β:
 jmp proc_sumdigit$2F5_ω
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1824]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain0_n7_α
 xchain0_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1520]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1528], rax
# marshal arg1 = producer-box slot [zr+1584] -> [zr+1536]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1544], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1520]
 lea r8, [rbp + 1520]
.Lx12_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx12_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx12_41
 cmp esi, 1
 jne .Lx12_55
 mov r8, rax
 jmp .Lx12_40
.Lx12_55:
 cmp esi, 2
 jne .Lx12_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx12_41
 mov r8, rax
 jmp .Lx12_40
.Lx12_56:
 cmp eax, 13
 jne .Lx12_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx12_41
 cmp rax, r8
 je .Lx12_41
 mov r8, rax
 jmp .Lx12_40
.Lx12_41:
 lea r9, [rbp + 1536]
.Lx12_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx12_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx12_43
 cmp esi, 1
 jne .Lx12_57
 mov r9, rax
 jmp .Lx12_42
.Lx12_57:
 cmp esi, 2
 jne .Lx12_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx12_43
 mov r9, rax
 jmp .Lx12_42
.Lx12_58:
 cmp eax, 13
 jne .Lx12_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx12_43
 cmp rax, r9
 je .Lx12_43
 mov r9, rax
 jmp .Lx12_42
.Lx12_43:
 cmp r8, r9
 je .Lx12_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx12_44
 cmp eax, 99
 je .Lx12_44
 cmp eax, 13
 jne .Lx12_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx12_44
 jmp .Lx12_45
.Lx12_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx12_53
 cmp eax, 99
 je .Lx12_53
 cmp eax, 13
 jne .Lx12_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx12_53
 jmp .Lx12_46
.Lx12_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx12_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx12_53
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
 jmp .Lx12_51
.Lx12_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx12_47
 cmp eax, 99
 je .Lx12_47
 cmp eax, 13
 jne .Lx12_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx12_47
 jmp .Lx12_48
.Lx12_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx12_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx12_53
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
 jmp .Lx12_51
.Lx12_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx12_49
 cmp edx, 14
 je .Lx12_53
 jmp .Lx12_52
.Lx12_49:
 cmp edx, 14
 je .Lx12_52
 cmp ecx, 7
 je .Lx12_53
 cmp edx, 7
 je .Lx12_53
 cmp ecx, 6
 jne .Lx12_50
 cmp edx, 6
 jne .Lx12_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx12_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx12_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx12_51
 jmp .Lx12_52
.Lx12_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx12_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx12_53
.Lx12_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx12_54
.Lx12_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx12_54
.Lx12_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx12_54:
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain0_n9_α
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1840]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain0_n10_α
 xchain0_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1408]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1416], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1424]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1432], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1408]
 lea r8, [rbp + 1408]
.Lx17_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx17_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx17_41
 cmp esi, 1
 jne .Lx17_55
 mov r8, rax
 jmp .Lx17_40
.Lx17_55:
 cmp esi, 2
 jne .Lx17_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx17_41
 mov r8, rax
 jmp .Lx17_40
.Lx17_56:
 cmp eax, 13
 jne .Lx17_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx17_41
 cmp rax, r8
 je .Lx17_41
 mov r8, rax
 jmp .Lx17_40
.Lx17_41:
 lea r9, [rbp + 1424]
.Lx17_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx17_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx17_43
 cmp esi, 1
 jne .Lx17_57
 mov r9, rax
 jmp .Lx17_42
.Lx17_57:
 cmp esi, 2
 jne .Lx17_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx17_43
 mov r9, rax
 jmp .Lx17_42
.Lx17_58:
 cmp eax, 13
 jne .Lx17_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx17_43
 cmp rax, r9
 je .Lx17_43
 mov r9, rax
 jmp .Lx17_42
.Lx17_43:
 cmp r8, r9
 je .Lx17_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx17_44
 cmp eax, 99
 je .Lx17_44
 cmp eax, 13
 jne .Lx17_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx17_44
 jmp .Lx17_45
.Lx17_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx17_53
 cmp eax, 99
 je .Lx17_53
 cmp eax, 13
 jne .Lx17_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx17_53
 jmp .Lx17_46
.Lx17_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx17_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx17_53
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
 jmp .Lx17_51
.Lx17_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx17_47
 cmp eax, 99
 je .Lx17_47
 cmp eax, 13
 jne .Lx17_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx17_47
 jmp .Lx17_48
.Lx17_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx17_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx17_53
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
 jmp .Lx17_51
.Lx17_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx17_49
 cmp edx, 14
 je .Lx17_53
 jmp .Lx17_52
.Lx17_49:
 cmp edx, 14
 je .Lx17_52
 cmp ecx, 7
 je .Lx17_53
 cmp edx, 7
 je .Lx17_53
 cmp ecx, 6
 jne .Lx17_50
 cmp edx, 6
 jne .Lx17_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx17_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx17_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx17_51
 jmp .Lx17_52
.Lx17_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx17_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx17_53
.Lx17_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx17_54
.Lx17_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx17_54
.Lx17_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx17_54:
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain0_n12_α
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain0_n13_α
 xchain0_n13_α:
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
.Lx22_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx22_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx22_41
 cmp esi, 1
 jne .Lx22_55
 mov r8, rax
 jmp .Lx22_40
.Lx22_55:
 cmp esi, 2
 jne .Lx22_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx22_41
 mov r8, rax
 jmp .Lx22_40
.Lx22_56:
 cmp eax, 13
 jne .Lx22_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx22_41
 cmp rax, r8
 je .Lx22_41
 mov r8, rax
 jmp .Lx22_40
.Lx22_41:
 lea r9, [rbp + 1312]
.Lx22_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx22_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx22_43
 cmp esi, 1
 jne .Lx22_57
 mov r9, rax
 jmp .Lx22_42
.Lx22_57:
 cmp esi, 2
 jne .Lx22_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx22_43
 mov r9, rax
 jmp .Lx22_42
.Lx22_58:
 cmp eax, 13
 jne .Lx22_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx22_43
 cmp rax, r9
 je .Lx22_43
 mov r9, rax
 jmp .Lx22_42
.Lx22_43:
 cmp r8, r9
 je .Lx22_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx22_44
 cmp eax, 99
 je .Lx22_44
 cmp eax, 13
 jne .Lx22_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx22_44
 jmp .Lx22_45
.Lx22_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx22_53
 cmp eax, 99
 je .Lx22_53
 cmp eax, 13
 jne .Lx22_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx22_53
 jmp .Lx22_46
.Lx22_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx22_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx22_53
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
 jmp .Lx22_51
.Lx22_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx22_47
 cmp eax, 99
 je .Lx22_47
 cmp eax, 13
 jne .Lx22_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx22_47
 jmp .Lx22_48
.Lx22_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx22_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx22_53
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
 jmp .Lx22_51
.Lx22_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx22_49
 cmp edx, 14
 je .Lx22_53
 jmp .Lx22_52
.Lx22_49:
 cmp edx, 14
 je .Lx22_52
 cmp ecx, 7
 je .Lx22_53
 cmp edx, 7
 je .Lx22_53
 cmp ecx, 6
 jne .Lx22_50
 cmp edx, 6
 jne .Lx22_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx22_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx22_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx22_51
 jmp .Lx22_52
.Lx22_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx22_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx22_53
.Lx22_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx22_54
.Lx22_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx22_54
.Lx22_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx22_54:
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 80]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain0_n15_α
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain0_n16_α
 xchain0_n16_α:
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
.Lx27_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx27_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx27_41
 cmp esi, 1
 jne .Lx27_55
 mov r8, rax
 jmp .Lx27_40
.Lx27_55:
 cmp esi, 2
 jne .Lx27_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx27_41
 mov r8, rax
 jmp .Lx27_40
.Lx27_56:
 cmp eax, 13
 jne .Lx27_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx27_41
 cmp rax, r8
 je .Lx27_41
 mov r8, rax
 jmp .Lx27_40
.Lx27_41:
 lea r9, [rbp + 1200]
.Lx27_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx27_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx27_43
 cmp esi, 1
 jne .Lx27_57
 mov r9, rax
 jmp .Lx27_42
.Lx27_57:
 cmp esi, 2
 jne .Lx27_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx27_43
 mov r9, rax
 jmp .Lx27_42
.Lx27_58:
 cmp eax, 13
 jne .Lx27_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx27_43
 cmp rax, r9
 je .Lx27_43
 mov r9, rax
 jmp .Lx27_42
.Lx27_43:
 cmp r8, r9
 je .Lx27_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx27_44
 cmp eax, 99
 je .Lx27_44
 cmp eax, 13
 jne .Lx27_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx27_44
 jmp .Lx27_45
.Lx27_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx27_53
 cmp eax, 99
 je .Lx27_53
 cmp eax, 13
 jne .Lx27_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx27_53
 jmp .Lx27_46
.Lx27_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx27_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx27_53
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
 jmp .Lx27_51
.Lx27_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx27_47
 cmp eax, 99
 je .Lx27_47
 cmp eax, 13
 jne .Lx27_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx27_47
 jmp .Lx27_48
.Lx27_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx27_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx27_53
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
 jmp .Lx27_51
.Lx27_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx27_49
 cmp edx, 14
 je .Lx27_53
 jmp .Lx27_52
.Lx27_49:
 cmp edx, 14
 je .Lx27_52
 cmp ecx, 7
 je .Lx27_53
 cmp edx, 7
 je .Lx27_53
 cmp ecx, 6
 jne .Lx27_50
 cmp edx, 6
 jne .Lx27_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx27_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx27_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx27_51
 jmp .Lx27_52
.Lx27_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx27_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx27_53
.Lx27_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx27_54
.Lx27_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx27_54
.Lx27_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx27_54:
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain0_n18_α
# IR_VAR
 xchain0_n18_α:
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1080], rax
 jmp xchain0_n19_α
# IR_VAR
 xchain0_n19_α:
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1112], rax
 jmp xchain0_n20_α
 xchain0_n20_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1024]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1032], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1040]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 1024]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n5_α
# IR_VAR
 xchain0_n21_α:
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1144], rax
 jmp xchain0_n22_α
 xchain0_n22_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+960]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 968], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+976]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 960]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n5_α
 xchain0_n23_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+880]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n5_α
# IR_VAR
 xchain0_n24_α:
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 808], rax
 jmp xchain0_n25_α
# IR_LIT_INTEGER
 xchain0_n25_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain0_n27_α
.Lx41_0:
 .quad 10
# IR_VAR_REF
 xchain0_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain0_n28_α
 xchain0_n27_α:
# BOX IR_CALL $cmp_lt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_lt (no by-name dispatch)
 lea rdi, [rbp + 768]
 mov esi, 2
 call rt_pl_dop_cmp_lt@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain0_n26_α
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n26_α
# IR_VAR
 xchain0_n28_α:
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 696], rax
 jmp xchain0_n30_α
# IR_VAR_REF
 xchain0_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain0_n31_α
# IR_LIT_INTEGER
 xchain0_n30_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain0_n32_α
.Lx49_0:
 .quad 10
# IR_VAR_REF
 xchain0_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain0_n33_α
 xchain0_n32_α:
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
 je xchain0_n5_α
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n5_α
 xchain0_n33_α:
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
.Lx53_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx53_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx53_41
 cmp esi, 1
 jne .Lx53_55
 mov r8, rax
 jmp .Lx53_40
.Lx53_55:
 cmp esi, 2
 jne .Lx53_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx53_41
 mov r8, rax
 jmp .Lx53_40
.Lx53_56:
 cmp eax, 13
 jne .Lx53_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx53_41
 cmp rax, r8
 je .Lx53_41
 mov r8, rax
 jmp .Lx53_40
.Lx53_41:
 lea r9, [rbp + 352]
.Lx53_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx53_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx53_43
 cmp esi, 1
 jne .Lx53_57
 mov r9, rax
 jmp .Lx53_42
.Lx53_57:
 cmp esi, 2
 jne .Lx53_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx53_43
 mov r9, rax
 jmp .Lx53_42
.Lx53_58:
 cmp eax, 13
 jne .Lx53_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx53_43
 cmp rax, r9
 je .Lx53_43
 mov r9, rax
 jmp .Lx53_42
.Lx53_43:
 cmp r8, r9
 je .Lx53_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx53_44
 cmp eax, 99
 je .Lx53_44
 cmp eax, 13
 jne .Lx53_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx53_44
 jmp .Lx53_45
.Lx53_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx53_53
 cmp eax, 99
 je .Lx53_53
 cmp eax, 13
 jne .Lx53_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx53_53
 jmp .Lx53_46
.Lx53_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx53_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx53_53
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
 jmp .Lx53_51
.Lx53_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx53_47
 cmp eax, 99
 je .Lx53_47
 cmp eax, 13
 jne .Lx53_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx53_47
 jmp .Lx53_48
.Lx53_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx53_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx53_53
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
 jmp .Lx53_51
.Lx53_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx53_49
 cmp edx, 14
 je .Lx53_53
 jmp .Lx53_52
.Lx53_49:
 cmp edx, 14
 je .Lx53_52
 cmp ecx, 7
 je .Lx53_53
 cmp edx, 7
 je .Lx53_53
 cmp ecx, 6
 jne .Lx53_50
 cmp edx, 6
 jne .Lx53_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx53_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx53_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx53_51
 jmp .Lx53_52
.Lx53_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx53_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx53_53
.Lx53_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx53_54
.Lx53_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx53_54
.Lx53_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx53_54:
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n5_α
 xchain0_n34_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n36_α
 xchain0_n34_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain0_n37_α
# IR_VAR_REF
 xchain0_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain0_n38_α
# IR_LIT_INTEGER
 xchain0_n37_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain0_n39_α
.Lx59_0:
 .quad 0
# IR_LIT_INTEGER
 xchain0_n38_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain0_n40_α
.Lx60_0:
 .quad 1
 xchain0_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 224]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n41_α
 xchain0_n39_β:
 jmp xchain0_n5_α
 xchain0_n40_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 448]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp xchain0_n5_α
# IR_SUSPEND yield+resume
 xchain0_n41_α:
 lea rax, [rip + xchain0_n41_β]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 8], rax
 jmp proc_sumdigit$2F5_γ
 xchain0_n41_β:
 jmp xchain0_n5_α
proc_sumdigit$2F5_res:
add rsp, 8
pop rbp
proc_sumdigit$2F5_β:
jmp qword ptr [rbp + 1728]
proc_sumdigit$2F5_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_sumdigit$2F5_res]
push rax
mov rax, [rbp + 1864]
mov rbp, [rbp + 1880]
jmp rax
proc_sumdigit$2F5_ω:
mov rax, [rbp + 1872]
lea rsp, [rbp + 1888]
mov rbp, [rbp + 1880]
jmp rax
  .globl proc_digit$2F1_α
proc_digit$2F1_α:
#=======================================================================================================================
    .global proc_digit$2F1_α
    .global proc_digit$2F1_β
    .global proc_digit$2F1_γ
    .global proc_digit$2F1_ω
  sub rsp, 3360
  mov [rsp + 3336], rcx
  mov [rsp + 3344], rdx
  mov [rsp + 3352], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3320], rsp
  mov rdi, rsp
  mov esi, 3296
  mov edx, 3328
  call rt_jmp_frame_lexprep2@PLT
proc_digit$2F1_α_body:
lea rax, [rip + xchain65_n11_β]
mov qword ptr [rbp + 3296], rax
 xchain65_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx66_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx66_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx66_101
.Lx66_100:
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx66_101:
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_digit$2F1_ω
 jmp xchain65_n1_α
 xchain65_n0_β:
 jmp proc_digit$2F1_ω
# IR_VAR_REF
 xchain65_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain65_n2_α
# IR_LIT_INTEGER
 xchain65_n2_α:
 mov qword ptr [rbp + 3232], 6
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain65_n3_α
.Lx69_0:
 .quad 1
# IR_LIT_INTEGER
 xchain65_n3_α:
 mov qword ptr [rbp + 3264], 6
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [rbp + 3272], rax
 jmp xchain65_n4_α
.Lx70_0:
 .quad 0
 xchain65_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3200] -> [zr+3152]
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3160], rax
# marshal arg1 = producer-box slot [zr+3232] -> [zr+3168]
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3176], rax
# marshal arg2 = producer-box slot [zr+3264] -> [zr+3184]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3192], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 3152]
 lea r8, [rbp + 3152]
.Lx71_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx71_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx71_111
 cmp esi, 1
 jne .Lx71_112
 mov r8, rax
 jmp .Lx71_110
.Lx71_112:
 cmp esi, 2
 jne .Lx71_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx71_111
 mov r8, rax
 jmp .Lx71_110
.Lx71_113:
 cmp eax, 13
 jne .Lx71_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx71_111
 cmp rax, r8
 je .Lx71_111
 mov r8, rax
 jmp .Lx71_110
.Lx71_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx71_114
 cmp eax, 99
 je .Lx71_114
 cmp eax, 13
 jne .Lx71_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx71_114
 jmp .Lx71_118
.Lx71_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx71_115
 cmp eax, 6
 jne .Lx71_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx71_114
 movabs rdx, 0
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx71_115
 jmp .Lx71_114
.Lx71_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx71_117
.Lx71_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx71_117
.Lx71_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx71_117:
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 cmp eax, 99
 je xchain65_n6_α
 jmp xchain65_n5_α
 xchain65_n4_β:
 jmp xchain65_n6_α
# IR_VAR_REF
 xchain65_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain65_n7_α
# IR_VAR_REF
 xchain65_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain65_n8_α
# IR_LIT_INTEGER
 xchain65_n7_α:
 mov qword ptr [rbp + 3104], 6
 mov rax, qword ptr [rip + .Lx76_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain65_n9_α
.Lx76_0:
 .quad 0
# IR_LIT_INTEGER
 xchain65_n8_α:
 mov qword ptr [rbp + 2912], 6
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [rbp + 2920], rax
 jmp xchain65_n10_α
.Lx77_0:
 .quad 1
 xchain65_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3072] -> [zr+3040]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3048], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3040]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain65_n12_α
 jmp xchain65_n11_α
 xchain65_n9_β:
 jmp xchain65_n12_α
# IR_LIT_INTEGER
 xchain65_n10_α:
 mov qword ptr [rbp + 2944], 6
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain65_n13_α
.Lx79_0:
 .quad 1
# IR_SUSPEND yield+resume
 xchain65_n11_α:
 lea rax, [rip + xchain65_n11_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$2F1_γ
 xchain65_n11_β:
 jmp xchain65_n12_α
 xchain65_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+2992]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 3000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2992]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 cmp eax, 99
 je proc_digit$2F1_ω
 jmp xchain65_n6_α
 xchain65_n12_β:
 jmp proc_digit$2F1_ω
 xchain65_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2880] -> [zr+2832]
 mov rax, qword ptr [rbp + 2880]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2888]
 mov qword ptr [rbp + 2840], rax
# marshal arg1 = producer-box slot [zr+2912] -> [zr+2848]
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 2856], rax
# marshal arg2 = producer-box slot [zr+2944] -> [zr+2864]
 mov rax, qword ptr [rbp + 2944]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2952]
 mov qword ptr [rbp + 2872], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 2832]
 lea r8, [rbp + 2832]
.Lx83_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx83_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx83_111
 cmp esi, 1
 jne .Lx83_112
 mov r8, rax
 jmp .Lx83_110
.Lx83_112:
 cmp esi, 2
 jne .Lx83_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx83_111
 mov r8, rax
 jmp .Lx83_110
.Lx83_113:
 cmp eax, 13
 jne .Lx83_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx83_111
 cmp rax, r8
 je .Lx83_111
 mov r8, rax
 jmp .Lx83_110
.Lx83_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx83_114
 cmp eax, 99
 je .Lx83_114
 cmp eax, 13
 jne .Lx83_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx83_114
 jmp .Lx83_118
.Lx83_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx83_115
 cmp eax, 6
 jne .Lx83_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx83_114
 movabs rdx, 1
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx83_115
 jmp .Lx83_114
.Lx83_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx83_117
.Lx83_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx83_117
.Lx83_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx83_117:
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 cmp eax, 99
 je xchain65_n15_α
 jmp xchain65_n14_α
 xchain65_n13_β:
 jmp xchain65_n15_α
# IR_VAR_REF
 xchain65_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain65_n16_α
# IR_VAR_REF
 xchain65_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain65_n17_α
# IR_LIT_INTEGER
 xchain65_n16_α:
 mov qword ptr [rbp + 2784], 6
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain65_n18_α
.Lx88_0:
 .quad 1
# IR_LIT_INTEGER
 xchain65_n17_α:
 mov qword ptr [rbp + 2592], 6
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [rbp + 2600], rax
 jmp xchain65_n19_α
.Lx89_0:
 .quad 1
 xchain65_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2720]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2728], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2720]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 cmp eax, 99
 je xchain65_n21_α
 jmp xchain65_n20_α
 xchain65_n18_β:
 jmp xchain65_n21_α
# IR_LIT_INTEGER
 xchain65_n19_α:
 mov qword ptr [rbp + 2624], 6
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [rbp + 2632], rax
 jmp xchain65_n22_α
.Lx91_0:
 .quad 2
# IR_SUSPEND yield+resume
 xchain65_n20_α:
 lea rax, [rip + xchain65_n20_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$2F1_γ
 xchain65_n20_β:
 jmp xchain65_n21_α
 xchain65_n21_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+2672]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 2680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2672]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 cmp eax, 99
 je proc_digit$2F1_ω
 jmp xchain65_n15_α
 xchain65_n21_β:
 jmp proc_digit$2F1_ω
 xchain65_n22_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2512]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2520], rax
# marshal arg1 = producer-box slot [zr+2592] -> [zr+2528]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2536], rax
# marshal arg2 = producer-box slot [zr+2624] -> [zr+2544]
 mov rax, qword ptr [rbp + 2624]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 2552], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 2512]
 lea r8, [rbp + 2512]
.Lx95_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx95_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx95_111
 cmp esi, 1
 jne .Lx95_112
 mov r8, rax
 jmp .Lx95_110
.Lx95_112:
 cmp esi, 2
 jne .Lx95_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx95_111
 mov r8, rax
 jmp .Lx95_110
.Lx95_113:
 cmp eax, 13
 jne .Lx95_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx95_111
 cmp rax, r8
 je .Lx95_111
 mov r8, rax
 jmp .Lx95_110
.Lx95_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx95_114
 cmp eax, 99
 je .Lx95_114
 cmp eax, 13
 jne .Lx95_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx95_114
 jmp .Lx95_118
.Lx95_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx95_115
 cmp eax, 6
 jne .Lx95_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx95_114
 movabs rdx, 2
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx95_115
 jmp .Lx95_114
.Lx95_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx95_117
.Lx95_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx95_117
.Lx95_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx95_117:
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 cmp eax, 99
 je xchain65_n24_α
 jmp xchain65_n23_α
 xchain65_n22_β:
 jmp xchain65_n24_α
# IR_VAR_REF
 xchain65_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain65_n25_α
# IR_VAR_REF
 xchain65_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain65_n26_α
# IR_LIT_INTEGER
 xchain65_n25_α:
 mov qword ptr [rbp + 2464], 6
 mov rax, qword ptr [rip + .Lx100_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain65_n27_α
.Lx100_0:
 .quad 2
# IR_LIT_INTEGER
 xchain65_n26_α:
 mov qword ptr [rbp + 2272], 6
 mov rax, qword ptr [rip + .Lx101_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain65_n28_α
.Lx101_0:
 .quad 1
 xchain65_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2432] -> [zr+2400]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2408], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2400]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 cmp eax, 99
 je xchain65_n30_α
 jmp xchain65_n29_α
 xchain65_n27_β:
 jmp xchain65_n30_α
# IR_LIT_INTEGER
 xchain65_n28_α:
 mov qword ptr [rbp + 2304], 6
 mov rax, qword ptr [rip + .Lx103_0]
 mov qword ptr [rbp + 2312], rax
 jmp xchain65_n31_α
.Lx103_0:
 .quad 3
# IR_SUSPEND yield+resume
 xchain65_n29_α:
 lea rax, [rip + xchain65_n29_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$2F1_γ
 xchain65_n29_β:
 jmp xchain65_n30_α
 xchain65_n30_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+2352]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 2360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2352]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je proc_digit$2F1_ω
 jmp xchain65_n24_α
 xchain65_n30_β:
 jmp proc_digit$2F1_ω
 xchain65_n31_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2240] -> [zr+2192]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2200], rax
# marshal arg1 = producer-box slot [zr+2272] -> [zr+2208]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2216], rax
# marshal arg2 = producer-box slot [zr+2304] -> [zr+2224]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2232], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 2192]
 lea r8, [rbp + 2192]
.Lx107_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx107_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx107_111
 cmp esi, 1
 jne .Lx107_112
 mov r8, rax
 jmp .Lx107_110
.Lx107_112:
 cmp esi, 2
 jne .Lx107_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx107_111
 mov r8, rax
 jmp .Lx107_110
.Lx107_113:
 cmp eax, 13
 jne .Lx107_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx107_111
 cmp rax, r8
 je .Lx107_111
 mov r8, rax
 jmp .Lx107_110
.Lx107_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx107_114
 cmp eax, 99
 je .Lx107_114
 cmp eax, 13
 jne .Lx107_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx107_114
 jmp .Lx107_118
.Lx107_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx107_115
 cmp eax, 6
 jne .Lx107_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx107_114
 movabs rdx, 3
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx107_115
 jmp .Lx107_114
.Lx107_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx107_117
.Lx107_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx107_117
.Lx107_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx107_117:
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain65_n33_α
 jmp xchain65_n32_α
 xchain65_n31_β:
 jmp xchain65_n33_α
# IR_VAR_REF
 xchain65_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain65_n34_α
# IR_VAR_REF
 xchain65_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain65_n35_α
# IR_LIT_INTEGER
 xchain65_n34_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx112_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain65_n36_α
.Lx112_0:
 .quad 3
# IR_LIT_INTEGER
 xchain65_n35_α:
 mov qword ptr [rbp + 1952], 6
 mov rax, qword ptr [rip + .Lx113_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain65_n37_α
.Lx113_0:
 .quad 1
 xchain65_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2112] -> [zr+2080]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2088], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2080]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 cmp eax, 99
 je xchain65_n39_α
 jmp xchain65_n38_α
 xchain65_n36_β:
 jmp xchain65_n39_α
# IR_LIT_INTEGER
 xchain65_n37_α:
 mov qword ptr [rbp + 1984], 6
 mov rax, qword ptr [rip + .Lx115_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain65_n40_α
.Lx115_0:
 .quad 4
# IR_SUSPEND yield+resume
 xchain65_n38_α:
 lea rax, [rip + xchain65_n38_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$2F1_γ
 xchain65_n38_β:
 jmp xchain65_n39_α
 xchain65_n39_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+2032]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 2040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2032]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je proc_digit$2F1_ω
 jmp xchain65_n33_α
 xchain65_n39_β:
 jmp proc_digit$2F1_ω
 xchain65_n40_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1920] -> [zr+1872]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1880], rax
# marshal arg1 = producer-box slot [zr+1952] -> [zr+1888]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1896], rax
# marshal arg2 = producer-box slot [zr+1984] -> [zr+1904]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1912], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1872]
 lea r8, [rbp + 1872]
.Lx119_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx119_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx119_111
 cmp esi, 1
 jne .Lx119_112
 mov r8, rax
 jmp .Lx119_110
.Lx119_112:
 cmp esi, 2
 jne .Lx119_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx119_111
 mov r8, rax
 jmp .Lx119_110
.Lx119_113:
 cmp eax, 13
 jne .Lx119_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx119_111
 cmp rax, r8
 je .Lx119_111
 mov r8, rax
 jmp .Lx119_110
.Lx119_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx119_114
 cmp eax, 99
 je .Lx119_114
 cmp eax, 13
 jne .Lx119_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx119_114
 jmp .Lx119_118
.Lx119_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx119_115
 cmp eax, 6
 jne .Lx119_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx119_114
 movabs rdx, 4
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx119_115
 jmp .Lx119_114
.Lx119_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx119_117
.Lx119_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx119_117
.Lx119_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx119_117:
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je xchain65_n42_α
 jmp xchain65_n41_α
 xchain65_n40_β:
 jmp xchain65_n42_α
# IR_VAR_REF
 xchain65_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain65_n43_α
# IR_VAR_REF
 xchain65_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain65_n44_α
# IR_LIT_INTEGER
 xchain65_n43_α:
 mov qword ptr [rbp + 1824], 6
 mov rax, qword ptr [rip + .Lx124_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain65_n45_α
.Lx124_0:
 .quad 4
# IR_LIT_INTEGER
 xchain65_n44_α:
 mov qword ptr [rbp + 1632], 6
 mov rax, qword ptr [rip + .Lx125_0]
 mov qword ptr [rbp + 1640], rax
 jmp xchain65_n46_α
.Lx125_0:
 .quad 1
 xchain65_n45_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1760]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1768], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1760]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je xchain65_n48_α
 jmp xchain65_n47_α
 xchain65_n45_β:
 jmp xchain65_n48_α
# IR_LIT_INTEGER
 xchain65_n46_α:
 mov qword ptr [rbp + 1664], 6
 mov rax, qword ptr [rip + .Lx127_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain65_n49_α
.Lx127_0:
 .quad 5
# IR_SUSPEND yield+resume
 xchain65_n47_α:
 lea rax, [rip + xchain65_n47_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$2F1_γ
 xchain65_n47_β:
 jmp xchain65_n48_α
 xchain65_n48_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1712]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1720], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1712]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je proc_digit$2F1_ω
 jmp xchain65_n42_α
 xchain65_n48_β:
 jmp proc_digit$2F1_ω
 xchain65_n49_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1552]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1560], rax
# marshal arg1 = producer-box slot [zr+1632] -> [zr+1568]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1576], rax
# marshal arg2 = producer-box slot [zr+1664] -> [zr+1584]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1592], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1552]
 lea r8, [rbp + 1552]
.Lx131_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx131_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx131_111
 cmp esi, 1
 jne .Lx131_112
 mov r8, rax
 jmp .Lx131_110
.Lx131_112:
 cmp esi, 2
 jne .Lx131_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx131_111
 mov r8, rax
 jmp .Lx131_110
.Lx131_113:
 cmp eax, 13
 jne .Lx131_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx131_111
 cmp rax, r8
 je .Lx131_111
 mov r8, rax
 jmp .Lx131_110
.Lx131_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx131_114
 cmp eax, 99
 je .Lx131_114
 cmp eax, 13
 jne .Lx131_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx131_114
 jmp .Lx131_118
.Lx131_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx131_115
 cmp eax, 6
 jne .Lx131_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx131_114
 movabs rdx, 5
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx131_115
 jmp .Lx131_114
.Lx131_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx131_117
.Lx131_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx131_117
.Lx131_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx131_117:
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain65_n51_α
 jmp xchain65_n50_α
 xchain65_n49_β:
 jmp xchain65_n51_α
# IR_VAR_REF
 xchain65_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain65_n52_α
# IR_VAR_REF
 xchain65_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain65_n53_α
# IR_LIT_INTEGER
 xchain65_n52_α:
 mov qword ptr [rbp + 1504], 6
 mov rax, qword ptr [rip + .Lx136_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain65_n54_α
.Lx136_0:
 .quad 5
# IR_LIT_INTEGER
 xchain65_n53_α:
 mov qword ptr [rbp + 1312], 6
 mov rax, qword ptr [rip + .Lx137_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain65_n55_α
.Lx137_0:
 .quad 1
 xchain65_n54_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1440]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1440]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 cmp eax, 99
 je xchain65_n57_α
 jmp xchain65_n56_α
 xchain65_n54_β:
 jmp xchain65_n57_α
# IR_LIT_INTEGER
 xchain65_n55_α:
 mov qword ptr [rbp + 1344], 6
 mov rax, qword ptr [rip + .Lx139_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain65_n58_α
.Lx139_0:
 .quad 6
# IR_SUSPEND yield+resume
 xchain65_n56_α:
 lea rax, [rip + xchain65_n56_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$2F1_γ
 xchain65_n56_β:
 jmp xchain65_n57_α
 xchain65_n57_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1392]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1392]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je proc_digit$2F1_ω
 jmp xchain65_n51_α
 xchain65_n57_β:
 jmp proc_digit$2F1_ω
 xchain65_n58_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1248]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1256], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1264]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1272], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1232]
 lea r8, [rbp + 1232]
.Lx143_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx143_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx143_111
 cmp esi, 1
 jne .Lx143_112
 mov r8, rax
 jmp .Lx143_110
.Lx143_112:
 cmp esi, 2
 jne .Lx143_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx143_111
 mov r8, rax
 jmp .Lx143_110
.Lx143_113:
 cmp eax, 13
 jne .Lx143_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx143_111
 cmp rax, r8
 je .Lx143_111
 mov r8, rax
 jmp .Lx143_110
.Lx143_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx143_114
 cmp eax, 99
 je .Lx143_114
 cmp eax, 13
 jne .Lx143_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx143_114
 jmp .Lx143_118
.Lx143_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx143_115
 cmp eax, 6
 jne .Lx143_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx143_114
 movabs rdx, 6
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx143_115
 jmp .Lx143_114
.Lx143_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx143_117
.Lx143_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx143_117
.Lx143_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx143_117:
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain65_n60_α
 jmp xchain65_n59_α
 xchain65_n58_β:
 jmp xchain65_n60_α
# IR_VAR_REF
 xchain65_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain65_n61_α
# IR_VAR_REF
 xchain65_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain65_n62_α
# IR_LIT_INTEGER
 xchain65_n61_α:
 mov qword ptr [rbp + 1184], 6
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain65_n63_α
.Lx148_0:
 .quad 6
# IR_LIT_INTEGER
 xchain65_n62_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain65_n64_α
.Lx149_0:
 .quad 1
 xchain65_n63_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1120]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1120]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain65_n66_α
 jmp xchain65_n65_α
 xchain65_n63_β:
 jmp xchain65_n66_α
# IR_LIT_INTEGER
 xchain65_n64_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain65_n67_α
.Lx151_0:
 .quad 7
# IR_SUSPEND yield+resume
 xchain65_n65_α:
 lea rax, [rip + xchain65_n65_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$2F1_γ
 xchain65_n65_β:
 jmp xchain65_n66_α
 xchain65_n66_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1072]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je proc_digit$2F1_ω
 jmp xchain65_n60_α
 xchain65_n66_β:
 jmp proc_digit$2F1_ω
 xchain65_n67_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+928]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 936], rax
# marshal arg2 = producer-box slot [zr+1024] -> [zr+944]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 952], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 912]
 lea r8, [rbp + 912]
.Lx155_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx155_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx155_111
 cmp esi, 1
 jne .Lx155_112
 mov r8, rax
 jmp .Lx155_110
.Lx155_112:
 cmp esi, 2
 jne .Lx155_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx155_111
 mov r8, rax
 jmp .Lx155_110
.Lx155_113:
 cmp eax, 13
 jne .Lx155_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx155_111
 cmp rax, r8
 je .Lx155_111
 mov r8, rax
 jmp .Lx155_110
.Lx155_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx155_114
 cmp eax, 99
 je .Lx155_114
 cmp eax, 13
 jne .Lx155_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx155_114
 jmp .Lx155_118
.Lx155_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx155_115
 cmp eax, 6
 jne .Lx155_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx155_114
 movabs rdx, 7
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx155_115
 jmp .Lx155_114
.Lx155_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx155_117
.Lx155_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx155_117
.Lx155_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx155_117:
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain65_n69_α
 jmp xchain65_n68_α
 xchain65_n67_β:
 jmp xchain65_n69_α
# IR_VAR_REF
 xchain65_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain65_n70_α
# IR_VAR_REF
 xchain65_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain65_n71_α
# IR_LIT_INTEGER
 xchain65_n70_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain65_n72_α
.Lx160_0:
 .quad 7
# IR_LIT_INTEGER
 xchain65_n71_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain65_n73_α
.Lx161_0:
 .quad 1
 xchain65_n72_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 800]
 movabs rsi, 7
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain65_n75_α
 jmp xchain65_n74_α
 xchain65_n72_β:
 jmp xchain65_n75_α
# IR_LIT_INTEGER
 xchain65_n73_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx163_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain65_n76_α
.Lx163_0:
 .quad 8
# IR_SUSPEND yield+resume
 xchain65_n74_α:
 lea rax, [rip + xchain65_n74_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$2F1_γ
 xchain65_n74_β:
 jmp xchain65_n75_α
 xchain65_n75_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+752]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je proc_digit$2F1_ω
 jmp xchain65_n69_α
 xchain65_n75_β:
 jmp proc_digit$2F1_ω
 xchain65_n76_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+608]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 616], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+624]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 632], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 592]
 lea r8, [rbp + 592]
.Lx167_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx167_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx167_111
 cmp esi, 1
 jne .Lx167_112
 mov r8, rax
 jmp .Lx167_110
.Lx167_112:
 cmp esi, 2
 jne .Lx167_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx167_111
 mov r8, rax
 jmp .Lx167_110
.Lx167_113:
 cmp eax, 13
 jne .Lx167_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx167_111
 cmp rax, r8
 je .Lx167_111
 mov r8, rax
 jmp .Lx167_110
.Lx167_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx167_114
 cmp eax, 99
 je .Lx167_114
 cmp eax, 13
 jne .Lx167_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx167_114
 jmp .Lx167_118
.Lx167_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx167_115
 cmp eax, 6
 jne .Lx167_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx167_114
 movabs rdx, 8
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx167_115
 jmp .Lx167_114
.Lx167_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx167_117
.Lx167_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx167_117
.Lx167_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx167_117:
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain65_n78_α
 jmp xchain65_n77_α
 xchain65_n76_β:
 jmp xchain65_n78_α
# IR_VAR_REF
 xchain65_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain65_n79_α
# IR_VAR_REF
 xchain65_n78_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain65_n80_α
# IR_LIT_INTEGER
 xchain65_n79_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain65_n81_α
.Lx172_0:
 .quad 8
# IR_LIT_INTEGER
 xchain65_n80_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain65_n82_α
.Lx173_0:
 .quad 1
 xchain65_n81_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 480]
 movabs rsi, 8
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain65_n84_α
 jmp xchain65_n83_α
 xchain65_n81_β:
 jmp xchain65_n84_α
# IR_LIT_INTEGER
 xchain65_n82_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain65_n85_α
.Lx175_0:
 .quad 9
# IR_SUSPEND yield+resume
 xchain65_n83_α:
 lea rax, [rip + xchain65_n83_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$2F1_γ
 xchain65_n83_β:
 jmp xchain65_n84_α
 xchain65_n84_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+432]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je proc_digit$2F1_ω
 jmp xchain65_n78_α
 xchain65_n84_β:
 jmp proc_digit$2F1_ω
 xchain65_n85_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+272]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 280], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 296], rax
# marshal arg2 = producer-box slot [zr+384] -> [zr+304]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 312], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 272]
 lea r8, [rbp + 272]
.Lx179_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx179_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx179_111
 cmp esi, 1
 jne .Lx179_112
 mov r8, rax
 jmp .Lx179_110
.Lx179_112:
 cmp esi, 2
 jne .Lx179_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx179_111
 mov r8, rax
 jmp .Lx179_110
.Lx179_113:
 cmp eax, 13
 jne .Lx179_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx179_111
 cmp rax, r8
 je .Lx179_111
 mov r8, rax
 jmp .Lx179_110
.Lx179_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx179_114
 cmp eax, 99
 je .Lx179_114
 cmp eax, 13
 jne .Lx179_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx179_114
 jmp .Lx179_118
.Lx179_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx179_115
 cmp eax, 6
 jne .Lx179_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx179_114
 movabs rdx, 9
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx179_115
 jmp .Lx179_114
.Lx179_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx179_117
.Lx179_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx179_117
.Lx179_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx179_117:
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain65_n87_α
 jmp xchain65_n86_α
 xchain65_n85_β:
 jmp xchain65_n87_α
# IR_VAR_REF
 xchain65_n86_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain65_n88_α
 xchain65_n87_α:
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
 je proc_digit$2F1_ω
 jmp proc_digit$2F1_ω
 xchain65_n87_β:
 jmp proc_digit$2F1_ω
# IR_LIT_INTEGER
 xchain65_n88_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx183_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain65_n89_α
.Lx183_0:
 .quad 9
 xchain65_n89_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 160]
 movabs rsi, 9
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain65_n87_α
 jmp xchain65_n90_α
 xchain65_n89_β:
 jmp xchain65_n87_α
# IR_SUSPEND yield+resume
 xchain65_n90_α:
 lea rax, [rip + xchain65_n90_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$2F1_γ
 xchain65_n90_β:
 jmp xchain65_n87_α
proc_digit$2F1_res:
add rsp, 8
pop rbp
proc_digit$2F1_β:
jmp qword ptr [rbp + 3296]
proc_digit$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_digit$2F1_res]
push rax
mov rax, [rbp + 3336]
mov rbp, [rbp + 3352]
jmp rax
proc_digit$2F1_ω:
mov rax, [rbp + 3344]
lea rsp, [rbp + 3360]
mov rbp, [rbp + 3352]
jmp rax
  .globl proc_solve$2F8_α
proc_solve$2F8_α:
#=======================================================================================================================
    .global proc_solve$2F8_α
    .global proc_solve$2F8_β
    .global proc_solve$2F8_γ
    .global proc_solve$2F8_ω
  sub rsp, 6112
  mov [rsp + 6088], rcx
  mov [rsp + 6096], rdx
  mov [rsp + 6104], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 5896], rsp
  mov rdi, rsp
  mov esi, 5872
  mov edx, 6080
  call rt_jmp_frame_lexprep2@PLT
proc_solve$2F8_α_body:
lea rax, [rip + xchain187_n142_β]
mov qword ptr [rbp + 5872], rax
 xchain187_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx188_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx188_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx188_101
.Lx188_100:
 lea rdi, [rbp + 192]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx188_101:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je proc_solve$2F8_ω
 jmp xchain187_n1_α
 xchain187_n0_β:
 jmp proc_solve$2F8_ω
# IR_VAR_REF
 xchain187_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5808], rax
 mov qword ptr [rbp + 5816], rdx
 jmp xchain187_n2_α
# IR_VAR_REF
 xchain187_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5920]
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 jmp xchain187_n3_α
 xchain187_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5808] -> [zr+5776]
 mov rax, qword ptr [rbp + 5808]
 mov qword ptr [rbp + 5776], rax
 mov rax, qword ptr [rbp + 5816]
 mov qword ptr [rbp + 5784], rax
# marshal arg1 = producer-box slot [zr+5840] -> [zr+5792]
 mov rax, qword ptr [rbp + 5840]
 mov qword ptr [rbp + 5792], rax
 mov rax, qword ptr [rbp + 5848]
 mov qword ptr [rbp + 5800], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 5776]
 lea r8, [rbp + 5776]
.Lx193_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx193_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx193_41
 cmp esi, 1
 jne .Lx193_55
 mov r8, rax
 jmp .Lx193_40
.Lx193_55:
 cmp esi, 2
 jne .Lx193_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx193_41
 mov r8, rax
 jmp .Lx193_40
.Lx193_56:
 cmp eax, 13
 jne .Lx193_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx193_41
 cmp rax, r8
 je .Lx193_41
 mov r8, rax
 jmp .Lx193_40
.Lx193_41:
 lea r9, [rbp + 5792]
.Lx193_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx193_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx193_43
 cmp esi, 1
 jne .Lx193_57
 mov r9, rax
 jmp .Lx193_42
.Lx193_57:
 cmp esi, 2
 jne .Lx193_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx193_43
 mov r9, rax
 jmp .Lx193_42
.Lx193_58:
 cmp eax, 13
 jne .Lx193_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx193_43
 cmp rax, r9
 je .Lx193_43
 mov r9, rax
 jmp .Lx193_42
.Lx193_43:
 cmp r8, r9
 je .Lx193_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx193_44
 cmp eax, 99
 je .Lx193_44
 cmp eax, 13
 jne .Lx193_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx193_44
 jmp .Lx193_45
.Lx193_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx193_53
 cmp eax, 99
 je .Lx193_53
 cmp eax, 13
 jne .Lx193_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx193_53
 jmp .Lx193_46
.Lx193_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx193_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx193_53
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
 jmp .Lx193_51
.Lx193_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx193_47
 cmp eax, 99
 je .Lx193_47
 cmp eax, 13
 jne .Lx193_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx193_47
 jmp .Lx193_48
.Lx193_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx193_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx193_53
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
 jmp .Lx193_51
.Lx193_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx193_49
 cmp edx, 14
 je .Lx193_53
 jmp .Lx193_52
.Lx193_49:
 cmp edx, 14
 je .Lx193_52
 cmp ecx, 7
 je .Lx193_53
 cmp edx, 7
 je .Lx193_53
 cmp ecx, 6
 jne .Lx193_50
 cmp edx, 6
 jne .Lx193_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx193_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx193_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx193_51
 jmp .Lx193_52
.Lx193_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx193_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx193_53
.Lx193_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx193_54
.Lx193_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx193_54
.Lx193_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx193_54:
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 cmp eax, 99
 je xchain187_n5_α
 jmp xchain187_n4_α
 xchain187_n3_β:
 jmp xchain187_n5_α
# IR_VAR_REF
 xchain187_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5696], rax
 mov qword ptr [rbp + 5704], rdx
 jmp xchain187_n6_α
 xchain187_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+224]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 224]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je proc_solve$2F8_ω
 jmp proc_solve$2F8_ω
 xchain187_n5_β:
 jmp proc_solve$2F8_ω
# IR_VAR_REF
 xchain187_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5984]
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 jmp xchain187_n7_α
 xchain187_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5696] -> [zr+5664]
 mov rax, qword ptr [rbp + 5696]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5704]
 mov qword ptr [rbp + 5672], rax
# marshal arg1 = producer-box slot [zr+5728] -> [zr+5680]
 mov rax, qword ptr [rbp + 5728]
 mov qword ptr [rbp + 5680], rax
 mov rax, qword ptr [rbp + 5736]
 mov qword ptr [rbp + 5688], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 5664]
 lea r8, [rbp + 5664]
.Lx199_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx199_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx199_41
 cmp esi, 1
 jne .Lx199_55
 mov r8, rax
 jmp .Lx199_40
.Lx199_55:
 cmp esi, 2
 jne .Lx199_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx199_41
 mov r8, rax
 jmp .Lx199_40
.Lx199_56:
 cmp eax, 13
 jne .Lx199_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx199_41
 cmp rax, r8
 je .Lx199_41
 mov r8, rax
 jmp .Lx199_40
.Lx199_41:
 lea r9, [rbp + 5680]
.Lx199_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx199_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx199_43
 cmp esi, 1
 jne .Lx199_57
 mov r9, rax
 jmp .Lx199_42
.Lx199_57:
 cmp esi, 2
 jne .Lx199_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx199_43
 mov r9, rax
 jmp .Lx199_42
.Lx199_58:
 cmp eax, 13
 jne .Lx199_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx199_43
 cmp rax, r9
 je .Lx199_43
 mov r9, rax
 jmp .Lx199_42
.Lx199_43:
 cmp r8, r9
 je .Lx199_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx199_44
 cmp eax, 99
 je .Lx199_44
 cmp eax, 13
 jne .Lx199_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx199_44
 jmp .Lx199_45
.Lx199_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx199_53
 cmp eax, 99
 je .Lx199_53
 cmp eax, 13
 jne .Lx199_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx199_53
 jmp .Lx199_46
.Lx199_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx199_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx199_53
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
 jmp .Lx199_51
.Lx199_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx199_47
 cmp eax, 99
 je .Lx199_47
 cmp eax, 13
 jne .Lx199_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx199_47
 jmp .Lx199_48
.Lx199_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx199_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx199_53
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
 jmp .Lx199_51
.Lx199_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx199_49
 cmp edx, 14
 je .Lx199_53
 jmp .Lx199_52
.Lx199_49:
 cmp edx, 14
 je .Lx199_52
 cmp ecx, 7
 je .Lx199_53
 cmp edx, 7
 je .Lx199_53
 cmp ecx, 6
 jne .Lx199_50
 cmp edx, 6
 jne .Lx199_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx199_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx199_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx199_51
 jmp .Lx199_52
.Lx199_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx199_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx199_53
.Lx199_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx199_54
.Lx199_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx199_54
.Lx199_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx199_54:
 mov qword ptr [rbp + 5648], rax
 mov qword ptr [rbp + 5656], rdx
 cmp eax, 99
 je xchain187_n5_α
 jmp xchain187_n8_α
 xchain187_n7_β:
 jmp xchain187_n5_α
# IR_VAR_REF
 xchain187_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 5584], rax
 mov qword ptr [rbp + 5592], rdx
 jmp xchain187_n9_α
# IR_VAR_REF
 xchain187_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6016]
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 jmp xchain187_n10_α
 xchain187_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5584] -> [zr+5552]
 mov rax, qword ptr [rbp + 5584]
 mov qword ptr [rbp + 5552], rax
 mov rax, qword ptr [rbp + 5592]
 mov qword ptr [rbp + 5560], rax
# marshal arg1 = producer-box slot [zr+5616] -> [zr+5568]
 mov rax, qword ptr [rbp + 5616]
 mov qword ptr [rbp + 5568], rax
 mov rax, qword ptr [rbp + 5624]
 mov qword ptr [rbp + 5576], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 5552]
 lea r8, [rbp + 5552]
.Lx204_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx204_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx204_41
 cmp esi, 1
 jne .Lx204_55
 mov r8, rax
 jmp .Lx204_40
.Lx204_55:
 cmp esi, 2
 jne .Lx204_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx204_41
 mov r8, rax
 jmp .Lx204_40
.Lx204_56:
 cmp eax, 13
 jne .Lx204_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx204_41
 cmp rax, r8
 je .Lx204_41
 mov r8, rax
 jmp .Lx204_40
.Lx204_41:
 lea r9, [rbp + 5568]
.Lx204_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx204_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx204_43
 cmp esi, 1
 jne .Lx204_57
 mov r9, rax
 jmp .Lx204_42
.Lx204_57:
 cmp esi, 2
 jne .Lx204_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx204_43
 mov r9, rax
 jmp .Lx204_42
.Lx204_58:
 cmp eax, 13
 jne .Lx204_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx204_43
 cmp rax, r9
 je .Lx204_43
 mov r9, rax
 jmp .Lx204_42
.Lx204_43:
 cmp r8, r9
 je .Lx204_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx204_44
 cmp eax, 99
 je .Lx204_44
 cmp eax, 13
 jne .Lx204_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx204_44
 jmp .Lx204_45
.Lx204_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx204_53
 cmp eax, 99
 je .Lx204_53
 cmp eax, 13
 jne .Lx204_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx204_53
 jmp .Lx204_46
.Lx204_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx204_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx204_53
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
 jmp .Lx204_51
.Lx204_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx204_47
 cmp eax, 99
 je .Lx204_47
 cmp eax, 13
 jne .Lx204_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx204_47
 jmp .Lx204_48
.Lx204_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx204_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx204_53
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
 jmp .Lx204_51
.Lx204_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx204_49
 cmp edx, 14
 je .Lx204_53
 jmp .Lx204_52
.Lx204_49:
 cmp edx, 14
 je .Lx204_52
 cmp ecx, 7
 je .Lx204_53
 cmp edx, 7
 je .Lx204_53
 cmp ecx, 6
 jne .Lx204_50
 cmp edx, 6
 jne .Lx204_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx204_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx204_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx204_51
 jmp .Lx204_52
.Lx204_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx204_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx204_53
.Lx204_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx204_54
.Lx204_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx204_54
.Lx204_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx204_54:
 mov qword ptr [rbp + 5536], rax
 mov qword ptr [rbp + 5544], rdx
 cmp eax, 99
 je xchain187_n5_α
 jmp xchain187_n11_α
 xchain187_n10_β:
 jmp xchain187_n5_α
# IR_VAR_REF
 xchain187_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 jmp xchain187_n12_α
# IR_VAR_REF
 xchain187_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5968]
 mov qword ptr [rbp + 5504], rax
 mov qword ptr [rbp + 5512], rdx
 jmp xchain187_n13_α
 xchain187_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5472] -> [zr+5440]
 mov rax, qword ptr [rbp + 5472]
 mov qword ptr [rbp + 5440], rax
 mov rax, qword ptr [rbp + 5480]
 mov qword ptr [rbp + 5448], rax
# marshal arg1 = producer-box slot [zr+5504] -> [zr+5456]
 mov rax, qword ptr [rbp + 5504]
 mov qword ptr [rbp + 5456], rax
 mov rax, qword ptr [rbp + 5512]
 mov qword ptr [rbp + 5464], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 5440]
 lea r8, [rbp + 5440]
.Lx209_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx209_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx209_41
 cmp esi, 1
 jne .Lx209_55
 mov r8, rax
 jmp .Lx209_40
.Lx209_55:
 cmp esi, 2
 jne .Lx209_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx209_41
 mov r8, rax
 jmp .Lx209_40
.Lx209_56:
 cmp eax, 13
 jne .Lx209_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx209_41
 cmp rax, r8
 je .Lx209_41
 mov r8, rax
 jmp .Lx209_40
.Lx209_41:
 lea r9, [rbp + 5456]
.Lx209_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx209_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx209_43
 cmp esi, 1
 jne .Lx209_57
 mov r9, rax
 jmp .Lx209_42
.Lx209_57:
 cmp esi, 2
 jne .Lx209_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx209_43
 mov r9, rax
 jmp .Lx209_42
.Lx209_58:
 cmp eax, 13
 jne .Lx209_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx209_43
 cmp rax, r9
 je .Lx209_43
 mov r9, rax
 jmp .Lx209_42
.Lx209_43:
 cmp r8, r9
 je .Lx209_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx209_44
 cmp eax, 99
 je .Lx209_44
 cmp eax, 13
 jne .Lx209_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx209_44
 jmp .Lx209_45
.Lx209_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx209_53
 cmp eax, 99
 je .Lx209_53
 cmp eax, 13
 jne .Lx209_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx209_53
 jmp .Lx209_46
.Lx209_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx209_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx209_53
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
 jmp .Lx209_51
.Lx209_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx209_47
 cmp eax, 99
 je .Lx209_47
 cmp eax, 13
 jne .Lx209_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx209_47
 jmp .Lx209_48
.Lx209_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx209_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx209_53
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
 jmp .Lx209_51
.Lx209_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx209_49
 cmp edx, 14
 je .Lx209_53
 jmp .Lx209_52
.Lx209_49:
 cmp edx, 14
 je .Lx209_52
 cmp ecx, 7
 je .Lx209_53
 cmp edx, 7
 je .Lx209_53
 cmp ecx, 6
 jne .Lx209_50
 cmp edx, 6
 jne .Lx209_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx209_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx209_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx209_51
 jmp .Lx209_52
.Lx209_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx209_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx209_53
.Lx209_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx209_54
.Lx209_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx209_54
.Lx209_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx209_54:
 mov qword ptr [rbp + 5424], rax
 mov qword ptr [rbp + 5432], rdx
 cmp eax, 99
 je xchain187_n5_α
 jmp xchain187_n14_α
 xchain187_n13_β:
 jmp xchain187_n5_α
# IR_VAR_REF
 xchain187_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 80]
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 jmp xchain187_n15_α
# IR_VAR_REF
 xchain187_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5936]
 mov qword ptr [rbp + 5392], rax
 mov qword ptr [rbp + 5400], rdx
 jmp xchain187_n16_α
 xchain187_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5360] -> [zr+5328]
 mov rax, qword ptr [rbp + 5360]
 mov qword ptr [rbp + 5328], rax
 mov rax, qword ptr [rbp + 5368]
 mov qword ptr [rbp + 5336], rax
# marshal arg1 = producer-box slot [zr+5392] -> [zr+5344]
 mov rax, qword ptr [rbp + 5392]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 5400]
 mov qword ptr [rbp + 5352], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 5328]
 lea r8, [rbp + 5328]
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
 lea r9, [rbp + 5344]
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
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 cmp eax, 99
 je xchain187_n5_α
 jmp xchain187_n17_α
 xchain187_n16_β:
 jmp xchain187_n5_α
# IR_VAR_REF
 xchain187_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 96]
 mov qword ptr [rbp + 5248], rax
 mov qword ptr [rbp + 5256], rdx
 jmp xchain187_n18_α
# IR_VAR_REF
 xchain187_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5952]
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 jmp xchain187_n19_α
 xchain187_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5248] -> [zr+5216]
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 5216], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 5224], rax
# marshal arg1 = producer-box slot [zr+5280] -> [zr+5232]
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 5232], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 5240], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 5216]
 lea r8, [rbp + 5216]
.Lx219_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx219_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx219_41
 cmp esi, 1
 jne .Lx219_55
 mov r8, rax
 jmp .Lx219_40
.Lx219_55:
 cmp esi, 2
 jne .Lx219_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx219_41
 mov r8, rax
 jmp .Lx219_40
.Lx219_56:
 cmp eax, 13
 jne .Lx219_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx219_41
 cmp rax, r8
 je .Lx219_41
 mov r8, rax
 jmp .Lx219_40
.Lx219_41:
 lea r9, [rbp + 5232]
.Lx219_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx219_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx219_43
 cmp esi, 1
 jne .Lx219_57
 mov r9, rax
 jmp .Lx219_42
.Lx219_57:
 cmp esi, 2
 jne .Lx219_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx219_43
 mov r9, rax
 jmp .Lx219_42
.Lx219_58:
 cmp eax, 13
 jne .Lx219_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx219_43
 cmp rax, r9
 je .Lx219_43
 mov r9, rax
 jmp .Lx219_42
.Lx219_43:
 cmp r8, r9
 je .Lx219_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx219_44
 cmp eax, 99
 je .Lx219_44
 cmp eax, 13
 jne .Lx219_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx219_44
 jmp .Lx219_45
.Lx219_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx219_53
 cmp eax, 99
 je .Lx219_53
 cmp eax, 13
 jne .Lx219_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx219_53
 jmp .Lx219_46
.Lx219_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx219_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx219_53
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
 jmp .Lx219_51
.Lx219_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx219_47
 cmp eax, 99
 je .Lx219_47
 cmp eax, 13
 jne .Lx219_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx219_47
 jmp .Lx219_48
.Lx219_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx219_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx219_53
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
 jmp .Lx219_51
.Lx219_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx219_49
 cmp edx, 14
 je .Lx219_53
 jmp .Lx219_52
.Lx219_49:
 cmp edx, 14
 je .Lx219_52
 cmp ecx, 7
 je .Lx219_53
 cmp edx, 7
 je .Lx219_53
 cmp ecx, 6
 jne .Lx219_50
 cmp edx, 6
 jne .Lx219_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx219_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx219_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx219_51
 jmp .Lx219_52
.Lx219_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx219_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx219_53
.Lx219_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx219_54
.Lx219_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx219_54
.Lx219_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx219_54:
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 cmp eax, 99
 je xchain187_n5_α
 jmp xchain187_n20_α
 xchain187_n19_β:
 jmp xchain187_n5_α
# IR_VAR_REF
 xchain187_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 112]
 mov qword ptr [rbp + 5136], rax
 mov qword ptr [rbp + 5144], rdx
 jmp xchain187_n21_α
# IR_VAR_REF
 xchain187_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6032]
 mov qword ptr [rbp + 5168], rax
 mov qword ptr [rbp + 5176], rdx
 jmp xchain187_n22_α
 xchain187_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5136] -> [zr+5104]
 mov rax, qword ptr [rbp + 5136]
 mov qword ptr [rbp + 5104], rax
 mov rax, qword ptr [rbp + 5144]
 mov qword ptr [rbp + 5112], rax
# marshal arg1 = producer-box slot [zr+5168] -> [zr+5120]
 mov rax, qword ptr [rbp + 5168]
 mov qword ptr [rbp + 5120], rax
 mov rax, qword ptr [rbp + 5176]
 mov qword ptr [rbp + 5128], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 5104]
 lea r8, [rbp + 5104]
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
 lea r9, [rbp + 5120]
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
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 cmp eax, 99
 je xchain187_n5_α
 jmp xchain187_n23_α
 xchain187_n22_β:
 jmp xchain187_n5_α
# IR_VAR_REF
 xchain187_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 128]
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 jmp xchain187_n24_α
# IR_VAR_REF
 xchain187_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6000]
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 jmp xchain187_n25_α
 xchain187_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5024] -> [zr+4992]
 mov rax, qword ptr [rbp + 5024]
 mov qword ptr [rbp + 4992], rax
 mov rax, qword ptr [rbp + 5032]
 mov qword ptr [rbp + 5000], rax
# marshal arg1 = producer-box slot [zr+5056] -> [zr+5008]
 mov rax, qword ptr [rbp + 5056]
 mov qword ptr [rbp + 5008], rax
 mov rax, qword ptr [rbp + 5064]
 mov qword ptr [rbp + 5016], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 4992]
 lea r8, [rbp + 4992]
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
 lea r9, [rbp + 5008]
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
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 cmp eax, 99
 je xchain187_n5_α
 jmp xchain187_n26_α
 xchain187_n25_β:
 jmp xchain187_n5_α
# IR_VAR_REF
 xchain187_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5968]
 mov qword ptr [rbp + 4944], rax
 mov qword ptr [rbp + 4952], rdx
 jmp xchain187_n27_α
 xchain187_n27_α:
 mov qword ptr [rbp + 4912], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx233_20
 mov rax, qword ptr [rbp + 4944]
 mov rdx, qword ptr [rbp + 4952]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx233_21
.Lx233_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4944]
 mov rdx, qword ptr [rbp + 4952]
 call rt_arg_stage@PLT
.Lx233_21:
 mov edi, 1
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx233_1
 lea rcx, [rip + .Lx233_3]
 lea rdx, [rip + .Lx233_4]
 jmp rax
.Lx233_3:
 mov qword ptr [rbp + 4920], rsp
 mov rax, qword ptr [rbp + 4912]
 test rax, rax
 jne .Lx233_5
 mov qword ptr [rbp + 4912], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx233_2
.Lx233_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx233_2
.Lx233_4:
 mov rax, qword ptr [rbp + 4912]
 test rax, rax
 jne .Lx233_6
 mov qword ptr [rbp + 4912], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx233_2
.Lx233_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx233_2
.Lx233_1:
 call rt_faildescr@PLT
.Lx233_2:
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 cmp eax, 99
 je xchain187_n5_α
 jmp xchain187_n28_α
 xchain187_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4920]
 jmp qword ptr [rsp]
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "digit/1"
# IR_VAR_REF
 xchain187_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5984]
 mov qword ptr [rbp + 4848], rax
 mov qword ptr [rbp + 4856], rdx
 jmp xchain187_n29_α
 xchain187_n29_α:
 mov qword ptr [rbp + 4816], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx237_20
 mov rax, qword ptr [rbp + 4848]
 mov rdx, qword ptr [rbp + 4856]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx237_21
.Lx237_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4848]
 mov rdx, qword ptr [rbp + 4856]
 call rt_arg_stage@PLT
.Lx237_21:
 mov edi, 1
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx237_1
 lea rcx, [rip + .Lx237_3]
 lea rdx, [rip + .Lx237_4]
 jmp rax
.Lx237_3:
 mov qword ptr [rbp + 4824], rsp
 mov rax, qword ptr [rbp + 4816]
 test rax, rax
 jne .Lx237_5
 mov qword ptr [rbp + 4816], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx237_2
.Lx237_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx237_2
.Lx237_4:
 mov rax, qword ptr [rbp + 4816]
 test rax, rax
 jne .Lx237_6
 mov qword ptr [rbp + 4816], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx237_2
.Lx237_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx237_2
.Lx237_1:
 call rt_faildescr@PLT
.Lx237_2:
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4792], rdx
 cmp eax, 99
 je xchain187_n27_β
 jmp xchain187_n30_α
 xchain187_n29_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4824]
 jmp qword ptr [rsp]
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "digit/1"
# IR_VAR
 xchain187_n30_α:
 mov rax, qword ptr [rbp + 5968]
 mov qword ptr [rbp + 4720], rax
 mov rax, qword ptr [rbp + 5976]
 mov qword ptr [rbp + 4728], rax
 jmp xchain187_n31_α
# IR_VAR
 xchain187_n31_α:
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 4760], rax
 jmp xchain187_n32_α
 xchain187_n32_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4720] -> [zr+4688]
 mov rax, qword ptr [rbp + 4720]
 mov qword ptr [rbp + 4688], rax
 mov rax, qword ptr [rbp + 4728]
 mov qword ptr [rbp + 4696], rax
# marshal arg1 = producer-box slot [zr+4752] -> [zr+4704]
 mov rax, qword ptr [rbp + 4752]
 mov qword ptr [rbp + 4704], rax
 mov rax, qword ptr [rbp + 4760]
 mov qword ptr [rbp + 4712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 4688]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 cmp eax, 99
 je xchain187_n29_β
 jmp xchain187_n33_α
 xchain187_n32_β:
 jmp xchain187_n29_β
# IR_LIT_INTEGER
 xchain187_n33_α:
 mov qword ptr [rbp + 4512], 6
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 4520], rax
 jmp xchain187_n34_α
.Lx243_0:
 .quad 0
# IR_VAR_REF
 xchain187_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5968]
 mov qword ptr [rbp + 4544], rax
 mov qword ptr [rbp + 4552], rdx
 jmp xchain187_n35_α
# IR_VAR_REF
 xchain187_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5984]
 mov qword ptr [rbp + 4576], rax
 mov qword ptr [rbp + 4584], rdx
 jmp xchain187_n36_α
# IR_VAR_REF
 xchain187_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6000]
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 jmp xchain187_n37_α
# IR_VAR_REF
 xchain187_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6064]
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 jmp xchain187_n38_α
 xchain187_n38_α:
 mov qword ptr [rbp + 4480], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx253_20
 mov rax, qword ptr [rbp + 4512]
 mov rdx, qword ptr [rbp + 4520]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx253_21
.Lx253_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4512]
 mov rdx, qword ptr [rbp + 4520]
 call rt_arg_stage@PLT
.Lx253_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx253_22
 mov rax, qword ptr [rbp + 4544]
 mov rdx, qword ptr [rbp + 4552]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx253_23
.Lx253_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 4544]
 mov rdx, qword ptr [rbp + 4552]
 call rt_arg_stage@PLT
.Lx253_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx253_24
 mov rax, qword ptr [rbp + 4576]
 mov rdx, qword ptr [rbp + 4584]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx253_25
.Lx253_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 4576]
 mov rdx, qword ptr [rbp + 4584]
 call rt_arg_stage@PLT
.Lx253_25:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx253_26
 mov rax, qword ptr [rbp + 4608]
 mov rdx, qword ptr [rbp + 4616]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 48], rax
 mov qword ptr [r10 + 56], rdx
 jmp .Lx253_27
.Lx253_26:
 mov edi, 3
 mov rsi, qword ptr [rbp + 4608]
 mov rdx, qword ptr [rbp + 4616]
 call rt_arg_stage@PLT
.Lx253_27:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx253_28
 mov rax, qword ptr [rbp + 4640]
 mov rdx, qword ptr [rbp + 4648]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 64], rax
 mov qword ptr [r10 + 72], rdx
 jmp .Lx253_29
.Lx253_28:
 mov edi, 4
 mov rsi, qword ptr [rbp + 4640]
 mov rdx, qword ptr [rbp + 4648]
 call rt_arg_stage@PLT
.Lx253_29:
 mov edi, 0
 mov esi, 5
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx253_1
 lea rcx, [rip + .Lx253_3]
 lea rdx, [rip + .Lx253_4]
 jmp rax
.Lx253_3:
 mov qword ptr [rbp + 4488], rsp
 mov rax, qword ptr [rbp + 4480]
 test rax, rax
 jne .Lx253_5
 mov qword ptr [rbp + 4480], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx253_2
.Lx253_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx253_2
.Lx253_4:
 mov rax, qword ptr [rbp + 4480]
 test rax, rax
 jne .Lx253_6
 mov qword ptr [rbp + 4480], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx253_2
.Lx253_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx253_2
.Lx253_1:
 call rt_faildescr@PLT
.Lx253_2:
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
 cmp eax, 99
 je xchain187_n29_β
 jmp xchain187_n39_α
 xchain187_n38_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4488]
 jmp qword ptr [rsp]
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "sumdigit/5"
# IR_VAR_REF
 xchain187_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6016]
 mov qword ptr [rbp + 4352], rax
 mov qword ptr [rbp + 4360], rdx
 jmp xchain187_n40_α
 xchain187_n40_α:
 mov qword ptr [rbp + 4320], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx257_20
 mov rax, qword ptr [rbp + 4352]
 mov rdx, qword ptr [rbp + 4360]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx257_21
.Lx257_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4352]
 mov rdx, qword ptr [rbp + 4360]
 call rt_arg_stage@PLT
.Lx257_21:
 mov edi, 1
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx257_1
 lea rcx, [rip + .Lx257_3]
 lea rdx, [rip + .Lx257_4]
 jmp rax
.Lx257_3:
 mov qword ptr [rbp + 4328], rsp
 mov rax, qword ptr [rbp + 4320]
 test rax, rax
 jne .Lx257_5
 mov qword ptr [rbp + 4320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx257_2
.Lx257_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx257_2
.Lx257_4:
 mov rax, qword ptr [rbp + 4320]
 test rax, rax
 jne .Lx257_6
 mov qword ptr [rbp + 4320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx257_2
.Lx257_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx257_2
.Lx257_1:
 call rt_faildescr@PLT
.Lx257_2:
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 cmp eax, 99
 je xchain187_n38_β
 jmp xchain187_n41_α
 xchain187_n40_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4328]
 jmp qword ptr [rsp]
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "digit/1"
# IR_VAR
 xchain187_n41_α:
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 4224], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 4232], rax
 jmp xchain187_n42_α
# IR_VAR
 xchain187_n42_α:
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 4264], rax
 jmp xchain187_n43_α
 xchain187_n43_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4224] -> [zr+4192]
 mov rax, qword ptr [rbp + 4224]
 mov qword ptr [rbp + 4192], rax
 mov rax, qword ptr [rbp + 4232]
 mov qword ptr [rbp + 4200], rax
# marshal arg1 = producer-box slot [zr+4256] -> [zr+4208]
 mov rax, qword ptr [rbp + 4256]
 mov qword ptr [rbp + 4208], rax
 mov rax, qword ptr [rbp + 4264]
 mov qword ptr [rbp + 4216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 4192]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 cmp eax, 99
 je xchain187_n40_β
 jmp xchain187_n44_α
 xchain187_n43_β:
 jmp xchain187_n40_β
# IR_VAR
 xchain187_n44_α:
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 4112], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 4120], rax
 jmp xchain187_n45_α
# IR_VAR
 xchain187_n45_α:
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 4144], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 4152], rax
 jmp xchain187_n46_α
 xchain187_n46_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4112] -> [zr+4080]
 mov rax, qword ptr [rbp + 4112]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 4120]
 mov qword ptr [rbp + 4088], rax
# marshal arg1 = producer-box slot [zr+4144] -> [zr+4096]
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 4096], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 4104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 4080]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 4064], rax
 mov qword ptr [rbp + 4072], rdx
 cmp eax, 99
 je xchain187_n40_β
 jmp xchain187_n47_α
 xchain187_n46_β:
 jmp xchain187_n40_β
# IR_VAR
 xchain187_n47_α:
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 4000], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 4008], rax
 jmp xchain187_n48_α
# IR_VAR
 xchain187_n48_α:
 mov rax, qword ptr [rbp + 5968]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 5976]
 mov qword ptr [rbp + 4040], rax
 jmp xchain187_n49_α
 xchain187_n49_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4000] -> [zr+3968]
 mov rax, qword ptr [rbp + 4000]
 mov qword ptr [rbp + 3968], rax
 mov rax, qword ptr [rbp + 4008]
 mov qword ptr [rbp + 3976], rax
# marshal arg1 = producer-box slot [zr+4032] -> [zr+3984]
 mov rax, qword ptr [rbp + 4032]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 4040]
 mov qword ptr [rbp + 3992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 3968]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 cmp eax, 99
 je xchain187_n40_β
 jmp xchain187_n50_α
 xchain187_n49_β:
 jmp xchain187_n40_β
# IR_VAR_REF
 xchain187_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6032]
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain187_n51_α
 xchain187_n51_α:
 mov qword ptr [rbp + 3888], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx276_20
 mov rax, qword ptr [rbp + 3920]
 mov rdx, qword ptr [rbp + 3928]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx276_21
.Lx276_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3920]
 mov rdx, qword ptr [rbp + 3928]
 call rt_arg_stage@PLT
.Lx276_21:
 mov edi, 1
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx276_1
 lea rcx, [rip + .Lx276_3]
 lea rdx, [rip + .Lx276_4]
 jmp rax
.Lx276_3:
 mov qword ptr [rbp + 3896], rsp
 mov rax, qword ptr [rbp + 3888]
 test rax, rax
 jne .Lx276_5
 mov qword ptr [rbp + 3888], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx276_2
.Lx276_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx276_2
.Lx276_4:
 mov rax, qword ptr [rbp + 3888]
 test rax, rax
 jne .Lx276_6
 mov qword ptr [rbp + 3888], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx276_2
.Lx276_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx276_2
.Lx276_1:
 call rt_faildescr@PLT
.Lx276_2:
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 cmp eax, 99
 je xchain187_n40_β
 jmp xchain187_n52_α
 xchain187_n51_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3896]
 jmp qword ptr [rsp]
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string "digit/1"
# IR_VAR
 xchain187_n52_α:
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 3792], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 3800], rax
 jmp xchain187_n53_α
# IR_VAR
 xchain187_n53_α:
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 3824], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 3832], rax
 jmp xchain187_n54_α
 xchain187_n54_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3792] -> [zr+3760]
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 3760], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 3768], rax
# marshal arg1 = producer-box slot [zr+3824] -> [zr+3776]
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 3784], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 3760]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 cmp eax, 99
 je xchain187_n51_β
 jmp xchain187_n55_α
 xchain187_n54_β:
 jmp xchain187_n51_β
# IR_VAR
 xchain187_n55_α:
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 3680], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 3688], rax
 jmp xchain187_n56_α
# IR_VAR
 xchain187_n56_α:
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 3712], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 3720], rax
 jmp xchain187_n57_α
 xchain187_n57_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 3648]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je xchain187_n51_β
 jmp xchain187_n58_α
 xchain187_n57_β:
 jmp xchain187_n51_β
# IR_VAR
 xchain187_n58_α:
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 3568], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 3576], rax
 jmp xchain187_n59_α
# IR_VAR
 xchain187_n59_α:
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 3608], rax
 jmp xchain187_n60_α
 xchain187_n60_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3568] -> [zr+3536]
 mov rax, qword ptr [rbp + 3568]
 mov qword ptr [rbp + 3536], rax
 mov rax, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 3544], rax
# marshal arg1 = producer-box slot [zr+3600] -> [zr+3552]
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 3552], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 3560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 3536]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 3520], rax
 mov qword ptr [rbp + 3528], rdx
 cmp eax, 99
 je xchain187_n51_β
 jmp xchain187_n61_α
 xchain187_n60_β:
 jmp xchain187_n51_β
# IR_VAR
 xchain187_n61_α:
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 3464], rax
 jmp xchain187_n62_α
# IR_VAR
 xchain187_n62_α:
 mov rax, qword ptr [rbp + 5968]
 mov qword ptr [rbp + 3488], rax
 mov rax, qword ptr [rbp + 5976]
 mov qword ptr [rbp + 3496], rax
 jmp xchain187_n63_α
 xchain187_n63_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3456] -> [zr+3424]
 mov rax, qword ptr [rbp + 3456]
 mov qword ptr [rbp + 3424], rax
 mov rax, qword ptr [rbp + 3464]
 mov qword ptr [rbp + 3432], rax
# marshal arg1 = producer-box slot [zr+3488] -> [zr+3440]
 mov rax, qword ptr [rbp + 3488]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3496]
 mov qword ptr [rbp + 3448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 3424]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 cmp eax, 99
 je xchain187_n51_β
 jmp xchain187_n64_α
 xchain187_n63_β:
 jmp xchain187_n51_β
# IR_VAR_REF
 xchain187_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6064]
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 jmp xchain187_n65_α
# IR_VAR_REF
 xchain187_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6016]
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain187_n66_α
# IR_VAR_REF
 xchain187_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6032]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain187_n67_α
# IR_VAR_REF
 xchain187_n67_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5984]
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain187_n68_α
# IR_VAR_REF
 xchain187_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6048]
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain187_n69_α
 xchain187_n69_α:
 mov qword ptr [rbp + 3216], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx308_20
 mov rax, qword ptr [rbp + 3248]
 mov rdx, qword ptr [rbp + 3256]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx308_21
.Lx308_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3248]
 mov rdx, qword ptr [rbp + 3256]
 call rt_arg_stage@PLT
.Lx308_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx308_22
 mov rax, qword ptr [rbp + 3280]
 mov rdx, qword ptr [rbp + 3288]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx308_23
.Lx308_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 3280]
 mov rdx, qword ptr [rbp + 3288]
 call rt_arg_stage@PLT
.Lx308_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx308_24
 mov rax, qword ptr [rbp + 3312]
 mov rdx, qword ptr [rbp + 3320]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx308_25
.Lx308_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 3312]
 mov rdx, qword ptr [rbp + 3320]
 call rt_arg_stage@PLT
.Lx308_25:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx308_26
 mov rax, qword ptr [rbp + 3344]
 mov rdx, qword ptr [rbp + 3352]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 48], rax
 mov qword ptr [r10 + 56], rdx
 jmp .Lx308_27
.Lx308_26:
 mov edi, 3
 mov rsi, qword ptr [rbp + 3344]
 mov rdx, qword ptr [rbp + 3352]
 call rt_arg_stage@PLT
.Lx308_27:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx308_28
 mov rax, qword ptr [rbp + 3376]
 mov rdx, qword ptr [rbp + 3384]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 64], rax
 mov qword ptr [r10 + 72], rdx
 jmp .Lx308_29
.Lx308_28:
 mov edi, 4
 mov rsi, qword ptr [rbp + 3376]
 mov rdx, qword ptr [rbp + 3384]
 call rt_arg_stage@PLT
.Lx308_29:
 mov edi, 0
 mov esi, 5
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx308_1
 lea rcx, [rip + .Lx308_3]
 lea rdx, [rip + .Lx308_4]
 jmp rax
.Lx308_3:
 mov qword ptr [rbp + 3224], rsp
 mov rax, qword ptr [rbp + 3216]
 test rax, rax
 jne .Lx308_5
 mov qword ptr [rbp + 3216], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx308_2
.Lx308_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx308_2
.Lx308_4:
 mov rax, qword ptr [rbp + 3216]
 test rax, rax
 jne .Lx308_6
 mov qword ptr [rbp + 3216], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx308_2
.Lx308_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx308_2
.Lx308_1:
 call rt_faildescr@PLT
.Lx308_2:
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 cmp eax, 99
 je xchain187_n51_β
 jmp xchain187_n70_α
 xchain187_n69_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3224]
 jmp qword ptr [rsp]
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
 .string "sumdigit/5"
# IR_VAR_REF
 xchain187_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5952]
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain187_n71_α
 xchain187_n71_α:
 mov qword ptr [rbp + 3056], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx312_20
 mov rax, qword ptr [rbp + 3088]
 mov rdx, qword ptr [rbp + 3096]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx312_21
.Lx312_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3088]
 mov rdx, qword ptr [rbp + 3096]
 call rt_arg_stage@PLT
.Lx312_21:
 mov edi, 1
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx312_1
 lea rcx, [rip + .Lx312_3]
 lea rdx, [rip + .Lx312_4]
 jmp rax
.Lx312_3:
 mov qword ptr [rbp + 3064], rsp
 mov rax, qword ptr [rbp + 3056]
 test rax, rax
 jne .Lx312_5
 mov qword ptr [rbp + 3056], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx312_2
.Lx312_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx312_2
.Lx312_4:
 mov rax, qword ptr [rbp + 3056]
 test rax, rax
 jne .Lx312_6
 mov qword ptr [rbp + 3056], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx312_2
.Lx312_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx312_2
.Lx312_1:
 call rt_faildescr@PLT
.Lx312_2:
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain187_n69_β
 jmp xchain187_n72_α
 xchain187_n71_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3064]
 jmp qword ptr [rsp]
.Lx312_0:
 .quad .Lx312_0_s
.Lx312_0_s:
 .string "digit/1"
# IR_VAR
 xchain187_n72_α:
 mov rax, qword ptr [rbp + 5952]
 mov qword ptr [rbp + 2960], rax
 mov rax, qword ptr [rbp + 5960]
 mov qword ptr [rbp + 2968], rax
 jmp xchain187_n73_α
# IR_VAR
 xchain187_n73_α:
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 3000], rax
 jmp xchain187_n74_α
 xchain187_n74_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2960] -> [zr+2928]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2928], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2936], rax
# marshal arg1 = producer-box slot [zr+2992] -> [zr+2944]
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2944], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 2928]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 cmp eax, 99
 je xchain187_n71_β
 jmp xchain187_n75_α
 xchain187_n74_β:
 jmp xchain187_n71_β
# IR_VAR
 xchain187_n75_α:
 mov rax, qword ptr [rbp + 5952]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 5960]
 mov qword ptr [rbp + 2856], rax
 jmp xchain187_n76_α
# IR_VAR
 xchain187_n76_α:
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 2888], rax
 jmp xchain187_n77_α
 xchain187_n77_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2848] -> [zr+2816]
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2824], rax
# marshal arg1 = producer-box slot [zr+2880] -> [zr+2832]
 mov rax, qword ptr [rbp + 2880]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2888]
 mov qword ptr [rbp + 2840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 2816]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 cmp eax, 99
 je xchain187_n71_β
 jmp xchain187_n78_α
 xchain187_n77_β:
 jmp xchain187_n71_β
# IR_VAR
 xchain187_n78_α:
 mov rax, qword ptr [rbp + 5952]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 5960]
 mov qword ptr [rbp + 2744], rax
 jmp xchain187_n79_α
# IR_VAR
 xchain187_n79_α:
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 2776], rax
 jmp xchain187_n80_α
 xchain187_n80_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2736] -> [zr+2704]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2712], rax
# marshal arg1 = producer-box slot [zr+2768] -> [zr+2720]
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 2728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 2704]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 cmp eax, 99
 je xchain187_n71_β
 jmp xchain187_n81_α
 xchain187_n80_β:
 jmp xchain187_n71_β
# IR_VAR
 xchain187_n81_α:
 mov rax, qword ptr [rbp + 5952]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 5960]
 mov qword ptr [rbp + 2632], rax
 jmp xchain187_n82_α
# IR_VAR
 xchain187_n82_α:
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 2664], rax
 jmp xchain187_n83_α
 xchain187_n83_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2624] -> [zr+2592]
 mov rax, qword ptr [rbp + 2624]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 2600], rax
# marshal arg1 = producer-box slot [zr+2656] -> [zr+2608]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 2592]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 cmp eax, 99
 je xchain187_n71_β
 jmp xchain187_n84_α
 xchain187_n83_β:
 jmp xchain187_n71_β
# IR_VAR
 xchain187_n84_α:
 mov rax, qword ptr [rbp + 5952]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 5960]
 mov qword ptr [rbp + 2520], rax
 jmp xchain187_n85_α
# IR_VAR
 xchain187_n85_α:
 mov rax, qword ptr [rbp + 5968]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 5976]
 mov qword ptr [rbp + 2552], rax
 jmp xchain187_n86_α
 xchain187_n86_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2512] -> [zr+2480]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2488], rax
# marshal arg1 = producer-box slot [zr+2544] -> [zr+2496]
 mov rax, qword ptr [rbp + 2544]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 2504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 2480]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 cmp eax, 99
 je xchain187_n71_β
 jmp xchain187_n87_α
 xchain187_n86_β:
 jmp xchain187_n71_β
# IR_VAR_REF
 xchain187_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6048]
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain187_n88_α
# IR_VAR_REF
 xchain187_n88_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5984]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 jmp xchain187_n89_α
# IR_VAR_REF
 xchain187_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5952]
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain187_n90_α
# IR_VAR_REF
 xchain187_n90_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6016]
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain187_n91_α
# IR_VAR_REF
 xchain187_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5904]
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain187_n92_α
 xchain187_n92_α:
 mov qword ptr [rbp + 2272], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx349_20
 mov rax, qword ptr [rbp + 2304]
 mov rdx, qword ptr [rbp + 2312]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx349_21
.Lx349_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2304]
 mov rdx, qword ptr [rbp + 2312]
 call rt_arg_stage@PLT
.Lx349_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx349_22
 mov rax, qword ptr [rbp + 2336]
 mov rdx, qword ptr [rbp + 2344]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx349_23
.Lx349_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 2336]
 mov rdx, qword ptr [rbp + 2344]
 call rt_arg_stage@PLT
.Lx349_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx349_24
 mov rax, qword ptr [rbp + 2368]
 mov rdx, qword ptr [rbp + 2376]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx349_25
.Lx349_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 2368]
 mov rdx, qword ptr [rbp + 2376]
 call rt_arg_stage@PLT
.Lx349_25:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx349_26
 mov rax, qword ptr [rbp + 2400]
 mov rdx, qword ptr [rbp + 2408]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 48], rax
 mov qword ptr [r10 + 56], rdx
 jmp .Lx349_27
.Lx349_26:
 mov edi, 3
 mov rsi, qword ptr [rbp + 2400]
 mov rdx, qword ptr [rbp + 2408]
 call rt_arg_stage@PLT
.Lx349_27:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx349_28
 mov rax, qword ptr [rbp + 2432]
 mov rdx, qword ptr [rbp + 2440]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 64], rax
 mov qword ptr [r10 + 72], rdx
 jmp .Lx349_29
.Lx349_28:
 mov edi, 4
 mov rsi, qword ptr [rbp + 2432]
 mov rdx, qword ptr [rbp + 2440]
 call rt_arg_stage@PLT
.Lx349_29:
 mov edi, 0
 mov esi, 5
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx349_1
 lea rcx, [rip + .Lx349_3]
 lea rdx, [rip + .Lx349_4]
 jmp rax
.Lx349_3:
 mov qword ptr [rbp + 2280], rsp
 mov rax, qword ptr [rbp + 2272]
 test rax, rax
 jne .Lx349_5
 mov qword ptr [rbp + 2272], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx349_2
.Lx349_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx349_2
.Lx349_4:
 mov rax, qword ptr [rbp + 2272]
 test rax, rax
 jne .Lx349_6
 mov qword ptr [rbp + 2272], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx349_2
.Lx349_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx349_2
.Lx349_1:
 call rt_faildescr@PLT
.Lx349_2:
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain187_n71_β
 jmp xchain187_n93_α
 xchain187_n92_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2280]
 jmp qword ptr [rsp]
.Lx349_0:
 .quad .Lx349_0_s
.Lx349_0_s:
 .string "sumdigit/5"
# IR_VAR_REF
 xchain187_n93_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5920]
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain187_n94_α
 xchain187_n94_α:
 mov qword ptr [rbp + 2112], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx353_20
 mov rax, qword ptr [rbp + 2144]
 mov rdx, qword ptr [rbp + 2152]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx353_21
.Lx353_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2144]
 mov rdx, qword ptr [rbp + 2152]
 call rt_arg_stage@PLT
.Lx353_21:
 mov edi, 3
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx353_1
 lea rcx, [rip + .Lx353_3]
 lea rdx, [rip + .Lx353_4]
 jmp rax
.Lx353_3:
 mov qword ptr [rbp + 2120], rsp
 mov rax, qword ptr [rbp + 2112]
 test rax, rax
 jne .Lx353_5
 mov qword ptr [rbp + 2112], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx353_2
.Lx353_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx353_2
.Lx353_4:
 mov rax, qword ptr [rbp + 2112]
 test rax, rax
 jne .Lx353_6
 mov qword ptr [rbp + 2112], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx353_2
.Lx353_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx353_2
.Lx353_1:
 call rt_faildescr@PLT
.Lx353_2:
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 cmp eax, 99
 je xchain187_n92_β
 jmp xchain187_n95_α
 xchain187_n94_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2120]
 jmp qword ptr [rsp]
.Lx353_0:
 .quad .Lx353_0_s
.Lx353_0_s:
 .string "leftdigit/1"
# IR_VAR
 xchain187_n95_α:
 mov rax, qword ptr [rbp + 5920]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 5928]
 mov qword ptr [rbp + 2024], rax
 jmp xchain187_n96_α
# IR_VAR
 xchain187_n96_α:
 mov rax, qword ptr [rbp + 5952]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 5960]
 mov qword ptr [rbp + 2056], rax
 jmp xchain187_n97_α
 xchain187_n97_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2016] -> [zr+1984]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1992], rax
# marshal arg1 = producer-box slot [zr+2048] -> [zr+2000]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 2008], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1984]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 cmp eax, 99
 je xchain187_n94_β
 jmp xchain187_n98_α
 xchain187_n97_β:
 jmp xchain187_n94_β
# IR_VAR
 xchain187_n98_α:
 mov rax, qword ptr [rbp + 5920]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 5928]
 mov qword ptr [rbp + 1912], rax
 jmp xchain187_n99_α
# IR_VAR
 xchain187_n99_α:
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 1944], rax
 jmp xchain187_n100_α
 xchain187_n100_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1872]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1880], rax
# marshal arg1 = producer-box slot [zr+1936] -> [zr+1888]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1896], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1872]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je xchain187_n94_β
 jmp xchain187_n101_α
 xchain187_n100_β:
 jmp xchain187_n94_β
# IR_VAR
 xchain187_n101_α:
 mov rax, qword ptr [rbp + 5920]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 5928]
 mov qword ptr [rbp + 1800], rax
 jmp xchain187_n102_α
# IR_VAR
 xchain187_n102_α:
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 1832], rax
 jmp xchain187_n103_α
 xchain187_n103_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1760]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1768], rax
# marshal arg1 = producer-box slot [zr+1824] -> [zr+1776]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1784], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1760]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je xchain187_n94_β
 jmp xchain187_n104_α
 xchain187_n103_β:
 jmp xchain187_n94_β
# IR_VAR
 xchain187_n104_α:
 mov rax, qword ptr [rbp + 5920]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 5928]
 mov qword ptr [rbp + 1688], rax
 jmp xchain187_n105_α
# IR_VAR
 xchain187_n105_α:
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 1720], rax
 jmp xchain187_n106_α
 xchain187_n106_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1648]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1656], rax
# marshal arg1 = producer-box slot [zr+1712] -> [zr+1664]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1648]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain187_n94_β
 jmp xchain187_n107_α
 xchain187_n106_β:
 jmp xchain187_n94_β
# IR_VAR
 xchain187_n107_α:
 mov rax, qword ptr [rbp + 5920]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 5928]
 mov qword ptr [rbp + 1576], rax
 jmp xchain187_n108_α
# IR_VAR
 xchain187_n108_α:
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 1608], rax
 jmp xchain187_n109_α
 xchain187_n109_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1568] -> [zr+1536]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1544], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1552]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1536]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain187_n94_β
 jmp xchain187_n110_α
 xchain187_n109_β:
 jmp xchain187_n94_β
# IR_VAR
 xchain187_n110_α:
 mov rax, qword ptr [rbp + 5920]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 5928]
 mov qword ptr [rbp + 1464], rax
 jmp xchain187_n111_α
# IR_VAR
 xchain187_n111_α:
 mov rax, qword ptr [rbp + 5968]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 5976]
 mov qword ptr [rbp + 1496], rax
 jmp xchain187_n112_α
 xchain187_n112_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1424]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1432], rax
# marshal arg1 = producer-box slot [zr+1488] -> [zr+1440]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1424]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain187_n94_β
 jmp xchain187_n113_α
 xchain187_n112_β:
 jmp xchain187_n94_β
# IR_VAR_REF
 xchain187_n113_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5936]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain187_n114_α
 xchain187_n114_α:
 mov qword ptr [rbp + 1344], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx387_20
 mov rax, qword ptr [rbp + 1376]
 mov rdx, qword ptr [rbp + 1384]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx387_21
.Lx387_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1376]
 mov rdx, qword ptr [rbp + 1384]
 call rt_arg_stage@PLT
.Lx387_21:
 mov edi, 3
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx387_1
 lea rcx, [rip + .Lx387_3]
 lea rdx, [rip + .Lx387_4]
 jmp rax
.Lx387_3:
 mov qword ptr [rbp + 1352], rsp
 mov rax, qword ptr [rbp + 1344]
 test rax, rax
 jne .Lx387_5
 mov qword ptr [rbp + 1344], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx387_2
.Lx387_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx387_2
.Lx387_4:
 mov rax, qword ptr [rbp + 1344]
 test rax, rax
 jne .Lx387_6
 mov qword ptr [rbp + 1344], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx387_2
.Lx387_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx387_2
.Lx387_1:
 call rt_faildescr@PLT
.Lx387_2:
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain187_n94_β
 jmp xchain187_n115_α
 xchain187_n114_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1352]
 jmp qword ptr [rsp]
.Lx387_0:
 .quad .Lx387_0_s
.Lx387_0_s:
 .string "leftdigit/1"
# IR_VAR
 xchain187_n115_α:
 mov rax, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 1256], rax
 jmp xchain187_n116_α
# IR_VAR
 xchain187_n116_α:
 mov rax, qword ptr [rbp + 5920]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 5928]
 mov qword ptr [rbp + 1288], rax
 jmp xchain187_n117_α
 xchain187_n117_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1216]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1216]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain187_n114_β
 jmp xchain187_n118_α
 xchain187_n117_β:
 jmp xchain187_n114_β
# IR_VAR
 xchain187_n118_α:
 mov rax, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 1144], rax
 jmp xchain187_n119_α
# IR_VAR
 xchain187_n119_α:
 mov rax, qword ptr [rbp + 5952]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 5960]
 mov qword ptr [rbp + 1176], rax
 jmp xchain187_n120_α
 xchain187_n120_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1104]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain187_n114_β
 jmp xchain187_n121_α
 xchain187_n120_β:
 jmp xchain187_n114_β
# IR_VAR
 xchain187_n121_α:
 mov rax, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 1032], rax
 jmp xchain187_n122_α
# IR_VAR
 xchain187_n122_α:
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 1064], rax
 jmp xchain187_n123_α
 xchain187_n123_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain187_n114_β
 jmp xchain187_n124_α
 xchain187_n123_β:
 jmp xchain187_n114_β
# IR_VAR
 xchain187_n124_α:
 mov rax, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 920], rax
 jmp xchain187_n125_α
# IR_VAR
 xchain187_n125_α:
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 952], rax
 jmp xchain187_n126_α
 xchain187_n126_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+880]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain187_n114_β
 jmp xchain187_n127_α
 xchain187_n126_β:
 jmp xchain187_n114_β
# IR_VAR
 xchain187_n127_α:
 mov rax, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 808], rax
 jmp xchain187_n128_α
# IR_VAR
 xchain187_n128_α:
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 840], rax
 jmp xchain187_n129_α
 xchain187_n129_α:
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
 je xchain187_n114_β
 jmp xchain187_n130_α
 xchain187_n129_β:
 jmp xchain187_n114_β
# IR_VAR
 xchain187_n130_α:
 mov rax, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 696], rax
 jmp xchain187_n131_α
# IR_VAR
 xchain187_n131_α:
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 728], rax
 jmp xchain187_n132_α
 xchain187_n132_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain187_n114_β
 jmp xchain187_n133_α
 xchain187_n132_β:
 jmp xchain187_n114_β
# IR_VAR
 xchain187_n133_α:
 mov rax, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 584], rax
 jmp xchain187_n134_α
# IR_VAR
 xchain187_n134_α:
 mov rax, qword ptr [rbp + 5968]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 5976]
 mov qword ptr [rbp + 616], rax
 jmp xchain187_n135_α
 xchain187_n135_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 544]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain187_n114_β
 jmp xchain187_n136_α
 xchain187_n135_β:
 jmp xchain187_n114_β
# IR_VAR_REF
 xchain187_n136_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5904]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain187_n137_α
# IR_VAR_REF
 xchain187_n137_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5920]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain187_n138_α
# IR_VAR_REF
 xchain187_n138_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5936]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain187_n139_α
# IR_VAR_REF
 xchain187_n139_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5952]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain187_n140_α
# IR_VAR_REF
 xchain187_n140_α:
 mov rax, 4294967305
 lea rdx, [rbp + 5936]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain187_n141_α
 xchain187_n141_α:
 mov qword ptr [rbp + 336], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx434_20
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx434_21
.Lx434_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
.Lx434_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx434_22
 mov rax, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx434_23
.Lx434_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
.Lx434_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx434_24
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx434_25
.Lx434_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 call rt_arg_stage@PLT
.Lx434_25:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx434_26
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 48], rax
 mov qword ptr [r10 + 56], rdx
 jmp .Lx434_27
.Lx434_26:
 mov edi, 3
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
.Lx434_27:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx434_28
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 64], rax
 mov qword ptr [r10 + 72], rdx
 jmp .Lx434_29
.Lx434_28:
 mov edi, 4
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
.Lx434_29:
 mov edi, 0
 mov esi, 5
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx434_1
 lea rcx, [rip + .Lx434_3]
 lea rdx, [rip + .Lx434_4]
 jmp rax
.Lx434_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx434_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx434_2
.Lx434_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx434_2
.Lx434_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx434_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx434_2
.Lx434_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx434_2
.Lx434_1:
 call rt_faildescr@PLT
.Lx434_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain187_n114_β
 jmp xchain187_n142_α
 xchain187_n141_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx434_0:
 .quad .Lx434_0_s
.Lx434_0_s:
 .string "sumdigit/5"
# IR_SUSPEND yield+resume
 xchain187_n142_α:
 lea rax, [rip + xchain187_n142_β]
 mov qword ptr [rbp + 5872], rax
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 8], rax
 jmp proc_solve$2F8_γ
 xchain187_n142_β:
 jmp xchain187_n141_β
proc_solve$2F8_res:
add rsp, 8
pop rbp
proc_solve$2F8_β:
jmp qword ptr [rbp + 5872]
proc_solve$2F8_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_solve$2F8_res]
push rax
mov rax, [rbp + 6088]
mov rbp, [rbp + 6104]
jmp rax
proc_solve$2F8_ω:
mov rax, [rbp + 6096]
lea rsp, [rbp + 6112]
mov rbp, [rbp + 6104]
jmp rax
  .globl proc_leftdigit$2F1_α
proc_leftdigit$2F1_α:
#=======================================================================================================================
    .global proc_leftdigit$2F1_α
    .global proc_leftdigit$2F1_β
    .global proc_leftdigit$2F1_γ
    .global proc_leftdigit$2F1_ω
  sub rsp, 3040
  mov [rsp + 3016], rcx
  mov [rsp + 3024], rdx
  mov [rsp + 3032], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3000], rsp
  mov rdi, rsp
  mov esi, 2976
  mov edx, 3008
  call rt_jmp_frame_lexprep2@PLT
proc_leftdigit$2F1_α_body:
lea rax, [rip + xchain437_n11_β]
mov qword ptr [rbp + 2976], rax
 xchain437_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx438_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx438_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx438_101
.Lx438_100:
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx438_101:
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_leftdigit$2F1_ω
 jmp xchain437_n1_α
 xchain437_n0_β:
 jmp proc_leftdigit$2F1_ω
# IR_VAR_REF
 xchain437_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain437_n2_α
# IR_LIT_INTEGER
 xchain437_n2_α:
 mov qword ptr [rbp + 2912], 6
 mov rax, qword ptr [rip + .Lx441_0]
 mov qword ptr [rbp + 2920], rax
 jmp xchain437_n3_α
.Lx441_0:
 .quad 1
# IR_LIT_INTEGER
 xchain437_n3_α:
 mov qword ptr [rbp + 2944], 6
 mov rax, qword ptr [rip + .Lx442_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain437_n4_α
.Lx442_0:
 .quad 1
 xchain437_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2880] -> [zr+2832]
 mov rax, qword ptr [rbp + 2880]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2888]
 mov qword ptr [rbp + 2840], rax
# marshal arg1 = producer-box slot [zr+2912] -> [zr+2848]
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 2856], rax
# marshal arg2 = producer-box slot [zr+2944] -> [zr+2864]
 mov rax, qword ptr [rbp + 2944]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2952]
 mov qword ptr [rbp + 2872], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 2832]
 lea r8, [rbp + 2832]
.Lx443_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx443_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx443_111
 cmp esi, 1
 jne .Lx443_112
 mov r8, rax
 jmp .Lx443_110
.Lx443_112:
 cmp esi, 2
 jne .Lx443_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx443_111
 mov r8, rax
 jmp .Lx443_110
.Lx443_113:
 cmp eax, 13
 jne .Lx443_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx443_111
 cmp rax, r8
 je .Lx443_111
 mov r8, rax
 jmp .Lx443_110
.Lx443_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx443_114
 cmp eax, 99
 je .Lx443_114
 cmp eax, 13
 jne .Lx443_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx443_114
 jmp .Lx443_118
.Lx443_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx443_115
 cmp eax, 6
 jne .Lx443_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx443_114
 movabs rdx, 1
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx443_115
 jmp .Lx443_114
.Lx443_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx443_117
.Lx443_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx443_117
.Lx443_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx443_117:
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 cmp eax, 99
 je xchain437_n6_α
 jmp xchain437_n5_α
 xchain437_n4_β:
 jmp xchain437_n6_α
# IR_VAR_REF
 xchain437_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain437_n7_α
# IR_VAR_REF
 xchain437_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain437_n8_α
# IR_LIT_INTEGER
 xchain437_n7_α:
 mov qword ptr [rbp + 2784], 6
 mov rax, qword ptr [rip + .Lx448_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain437_n9_α
.Lx448_0:
 .quad 1
# IR_LIT_INTEGER
 xchain437_n8_α:
 mov qword ptr [rbp + 2592], 6
 mov rax, qword ptr [rip + .Lx449_0]
 mov qword ptr [rbp + 2600], rax
 jmp xchain437_n10_α
.Lx449_0:
 .quad 1
 xchain437_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2720]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2728], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2720]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 cmp eax, 99
 je xchain437_n12_α
 jmp xchain437_n11_α
 xchain437_n9_β:
 jmp xchain437_n12_α
# IR_LIT_INTEGER
 xchain437_n10_α:
 mov qword ptr [rbp + 2624], 6
 mov rax, qword ptr [rip + .Lx451_0]
 mov qword ptr [rbp + 2632], rax
 jmp xchain437_n13_α
.Lx451_0:
 .quad 2
# IR_SUSPEND yield+resume
 xchain437_n11_α:
 lea rax, [rip + xchain437_n11_β]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$2F1_γ
 xchain437_n11_β:
 jmp xchain437_n12_α
 xchain437_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+2672]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 2680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2672]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 cmp eax, 99
 je proc_leftdigit$2F1_ω
 jmp xchain437_n6_α
 xchain437_n12_β:
 jmp proc_leftdigit$2F1_ω
 xchain437_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2512]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2520], rax
# marshal arg1 = producer-box slot [zr+2592] -> [zr+2528]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2536], rax
# marshal arg2 = producer-box slot [zr+2624] -> [zr+2544]
 mov rax, qword ptr [rbp + 2624]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 2552], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 2512]
 lea r8, [rbp + 2512]
.Lx455_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx455_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx455_111
 cmp esi, 1
 jne .Lx455_112
 mov r8, rax
 jmp .Lx455_110
.Lx455_112:
 cmp esi, 2
 jne .Lx455_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx455_111
 mov r8, rax
 jmp .Lx455_110
.Lx455_113:
 cmp eax, 13
 jne .Lx455_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx455_111
 cmp rax, r8
 je .Lx455_111
 mov r8, rax
 jmp .Lx455_110
.Lx455_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx455_114
 cmp eax, 99
 je .Lx455_114
 cmp eax, 13
 jne .Lx455_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx455_114
 jmp .Lx455_118
.Lx455_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx455_115
 cmp eax, 6
 jne .Lx455_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx455_114
 movabs rdx, 2
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx455_115
 jmp .Lx455_114
.Lx455_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx455_117
.Lx455_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx455_117
.Lx455_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx455_117:
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 cmp eax, 99
 je xchain437_n15_α
 jmp xchain437_n14_α
 xchain437_n13_β:
 jmp xchain437_n15_α
# IR_VAR_REF
 xchain437_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain437_n16_α
# IR_VAR_REF
 xchain437_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain437_n17_α
# IR_LIT_INTEGER
 xchain437_n16_α:
 mov qword ptr [rbp + 2464], 6
 mov rax, qword ptr [rip + .Lx460_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain437_n18_α
.Lx460_0:
 .quad 2
# IR_LIT_INTEGER
 xchain437_n17_α:
 mov qword ptr [rbp + 2272], 6
 mov rax, qword ptr [rip + .Lx461_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain437_n19_α
.Lx461_0:
 .quad 1
 xchain437_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2432] -> [zr+2400]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2408], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2400]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 cmp eax, 99
 je xchain437_n21_α
 jmp xchain437_n20_α
 xchain437_n18_β:
 jmp xchain437_n21_α
# IR_LIT_INTEGER
 xchain437_n19_α:
 mov qword ptr [rbp + 2304], 6
 mov rax, qword ptr [rip + .Lx463_0]
 mov qword ptr [rbp + 2312], rax
 jmp xchain437_n22_α
.Lx463_0:
 .quad 3
# IR_SUSPEND yield+resume
 xchain437_n20_α:
 lea rax, [rip + xchain437_n20_β]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$2F1_γ
 xchain437_n20_β:
 jmp xchain437_n21_α
 xchain437_n21_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+2352]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 2360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2352]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je proc_leftdigit$2F1_ω
 jmp xchain437_n15_α
 xchain437_n21_β:
 jmp proc_leftdigit$2F1_ω
 xchain437_n22_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2240] -> [zr+2192]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2200], rax
# marshal arg1 = producer-box slot [zr+2272] -> [zr+2208]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2216], rax
# marshal arg2 = producer-box slot [zr+2304] -> [zr+2224]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2232], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 2192]
 lea r8, [rbp + 2192]
.Lx467_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx467_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx467_111
 cmp esi, 1
 jne .Lx467_112
 mov r8, rax
 jmp .Lx467_110
.Lx467_112:
 cmp esi, 2
 jne .Lx467_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx467_111
 mov r8, rax
 jmp .Lx467_110
.Lx467_113:
 cmp eax, 13
 jne .Lx467_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx467_111
 cmp rax, r8
 je .Lx467_111
 mov r8, rax
 jmp .Lx467_110
.Lx467_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx467_114
 cmp eax, 99
 je .Lx467_114
 cmp eax, 13
 jne .Lx467_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx467_114
 jmp .Lx467_118
.Lx467_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx467_115
 cmp eax, 6
 jne .Lx467_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx467_114
 movabs rdx, 3
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx467_115
 jmp .Lx467_114
.Lx467_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx467_117
.Lx467_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx467_117
.Lx467_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx467_117:
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain437_n24_α
 jmp xchain437_n23_α
 xchain437_n22_β:
 jmp xchain437_n24_α
# IR_VAR_REF
 xchain437_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain437_n25_α
# IR_VAR_REF
 xchain437_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain437_n26_α
# IR_LIT_INTEGER
 xchain437_n25_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx472_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain437_n27_α
.Lx472_0:
 .quad 3
# IR_LIT_INTEGER
 xchain437_n26_α:
 mov qword ptr [rbp + 1952], 6
 mov rax, qword ptr [rip + .Lx473_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain437_n28_α
.Lx473_0:
 .quad 1
 xchain437_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2112] -> [zr+2080]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2088], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2080]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 cmp eax, 99
 je xchain437_n30_α
 jmp xchain437_n29_α
 xchain437_n27_β:
 jmp xchain437_n30_α
# IR_LIT_INTEGER
 xchain437_n28_α:
 mov qword ptr [rbp + 1984], 6
 mov rax, qword ptr [rip + .Lx475_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain437_n31_α
.Lx475_0:
 .quad 4
# IR_SUSPEND yield+resume
 xchain437_n29_α:
 lea rax, [rip + xchain437_n29_β]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$2F1_γ
 xchain437_n29_β:
 jmp xchain437_n30_α
 xchain437_n30_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+2032]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 2040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2032]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je proc_leftdigit$2F1_ω
 jmp xchain437_n24_α
 xchain437_n30_β:
 jmp proc_leftdigit$2F1_ω
 xchain437_n31_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1920] -> [zr+1872]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1880], rax
# marshal arg1 = producer-box slot [zr+1952] -> [zr+1888]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1896], rax
# marshal arg2 = producer-box slot [zr+1984] -> [zr+1904]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1912], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1872]
 lea r8, [rbp + 1872]
.Lx479_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx479_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx479_111
 cmp esi, 1
 jne .Lx479_112
 mov r8, rax
 jmp .Lx479_110
.Lx479_112:
 cmp esi, 2
 jne .Lx479_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx479_111
 mov r8, rax
 jmp .Lx479_110
.Lx479_113:
 cmp eax, 13
 jne .Lx479_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx479_111
 cmp rax, r8
 je .Lx479_111
 mov r8, rax
 jmp .Lx479_110
.Lx479_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx479_114
 cmp eax, 99
 je .Lx479_114
 cmp eax, 13
 jne .Lx479_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx479_114
 jmp .Lx479_118
.Lx479_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx479_115
 cmp eax, 6
 jne .Lx479_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx479_114
 movabs rdx, 4
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx479_115
 jmp .Lx479_114
.Lx479_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx479_117
.Lx479_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx479_117
.Lx479_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx479_117:
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je xchain437_n33_α
 jmp xchain437_n32_α
 xchain437_n31_β:
 jmp xchain437_n33_α
# IR_VAR_REF
 xchain437_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain437_n34_α
# IR_VAR_REF
 xchain437_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain437_n35_α
# IR_LIT_INTEGER
 xchain437_n34_α:
 mov qword ptr [rbp + 1824], 6
 mov rax, qword ptr [rip + .Lx484_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain437_n36_α
.Lx484_0:
 .quad 4
# IR_LIT_INTEGER
 xchain437_n35_α:
 mov qword ptr [rbp + 1632], 6
 mov rax, qword ptr [rip + .Lx485_0]
 mov qword ptr [rbp + 1640], rax
 jmp xchain437_n37_α
.Lx485_0:
 .quad 1
 xchain437_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1760]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1768], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1760]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je xchain437_n39_α
 jmp xchain437_n38_α
 xchain437_n36_β:
 jmp xchain437_n39_α
# IR_LIT_INTEGER
 xchain437_n37_α:
 mov qword ptr [rbp + 1664], 6
 mov rax, qword ptr [rip + .Lx487_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain437_n40_α
.Lx487_0:
 .quad 5
# IR_SUSPEND yield+resume
 xchain437_n38_α:
 lea rax, [rip + xchain437_n38_β]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$2F1_γ
 xchain437_n38_β:
 jmp xchain437_n39_α
 xchain437_n39_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1712]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1720], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1712]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je proc_leftdigit$2F1_ω
 jmp xchain437_n33_α
 xchain437_n39_β:
 jmp proc_leftdigit$2F1_ω
 xchain437_n40_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1552]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1560], rax
# marshal arg1 = producer-box slot [zr+1632] -> [zr+1568]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1576], rax
# marshal arg2 = producer-box slot [zr+1664] -> [zr+1584]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1592], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1552]
 lea r8, [rbp + 1552]
.Lx491_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx491_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx491_111
 cmp esi, 1
 jne .Lx491_112
 mov r8, rax
 jmp .Lx491_110
.Lx491_112:
 cmp esi, 2
 jne .Lx491_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx491_111
 mov r8, rax
 jmp .Lx491_110
.Lx491_113:
 cmp eax, 13
 jne .Lx491_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx491_111
 cmp rax, r8
 je .Lx491_111
 mov r8, rax
 jmp .Lx491_110
.Lx491_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx491_114
 cmp eax, 99
 je .Lx491_114
 cmp eax, 13
 jne .Lx491_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx491_114
 jmp .Lx491_118
.Lx491_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx491_115
 cmp eax, 6
 jne .Lx491_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx491_114
 movabs rdx, 5
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx491_115
 jmp .Lx491_114
.Lx491_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx491_117
.Lx491_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx491_117
.Lx491_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx491_117:
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain437_n42_α
 jmp xchain437_n41_α
 xchain437_n40_β:
 jmp xchain437_n42_α
# IR_VAR_REF
 xchain437_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain437_n43_α
# IR_VAR_REF
 xchain437_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain437_n44_α
# IR_LIT_INTEGER
 xchain437_n43_α:
 mov qword ptr [rbp + 1504], 6
 mov rax, qword ptr [rip + .Lx496_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain437_n45_α
.Lx496_0:
 .quad 5
# IR_LIT_INTEGER
 xchain437_n44_α:
 mov qword ptr [rbp + 1312], 6
 mov rax, qword ptr [rip + .Lx497_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain437_n46_α
.Lx497_0:
 .quad 1
 xchain437_n45_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1440]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1440]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 cmp eax, 99
 je xchain437_n48_α
 jmp xchain437_n47_α
 xchain437_n45_β:
 jmp xchain437_n48_α
# IR_LIT_INTEGER
 xchain437_n46_α:
 mov qword ptr [rbp + 1344], 6
 mov rax, qword ptr [rip + .Lx499_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain437_n49_α
.Lx499_0:
 .quad 6
# IR_SUSPEND yield+resume
 xchain437_n47_α:
 lea rax, [rip + xchain437_n47_β]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$2F1_γ
 xchain437_n47_β:
 jmp xchain437_n48_α
 xchain437_n48_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1392]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1392]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je proc_leftdigit$2F1_ω
 jmp xchain437_n42_α
 xchain437_n48_β:
 jmp proc_leftdigit$2F1_ω
 xchain437_n49_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1248]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1256], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1264]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1272], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1232]
 lea r8, [rbp + 1232]
.Lx503_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx503_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx503_111
 cmp esi, 1
 jne .Lx503_112
 mov r8, rax
 jmp .Lx503_110
.Lx503_112:
 cmp esi, 2
 jne .Lx503_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx503_111
 mov r8, rax
 jmp .Lx503_110
.Lx503_113:
 cmp eax, 13
 jne .Lx503_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx503_111
 cmp rax, r8
 je .Lx503_111
 mov r8, rax
 jmp .Lx503_110
.Lx503_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx503_114
 cmp eax, 99
 je .Lx503_114
 cmp eax, 13
 jne .Lx503_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx503_114
 jmp .Lx503_118
.Lx503_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx503_115
 cmp eax, 6
 jne .Lx503_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx503_114
 movabs rdx, 6
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx503_115
 jmp .Lx503_114
.Lx503_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx503_117
.Lx503_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx503_117
.Lx503_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx503_117:
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain437_n51_α
 jmp xchain437_n50_α
 xchain437_n49_β:
 jmp xchain437_n51_α
# IR_VAR_REF
 xchain437_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain437_n52_α
# IR_VAR_REF
 xchain437_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain437_n53_α
# IR_LIT_INTEGER
 xchain437_n52_α:
 mov qword ptr [rbp + 1184], 6
 mov rax, qword ptr [rip + .Lx508_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain437_n54_α
.Lx508_0:
 .quad 6
# IR_LIT_INTEGER
 xchain437_n53_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx509_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain437_n55_α
.Lx509_0:
 .quad 1
 xchain437_n54_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1120]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1120]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain437_n57_α
 jmp xchain437_n56_α
 xchain437_n54_β:
 jmp xchain437_n57_α
# IR_LIT_INTEGER
 xchain437_n55_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx511_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain437_n58_α
.Lx511_0:
 .quad 7
# IR_SUSPEND yield+resume
 xchain437_n56_α:
 lea rax, [rip + xchain437_n56_β]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$2F1_γ
 xchain437_n56_β:
 jmp xchain437_n57_α
 xchain437_n57_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1072]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je proc_leftdigit$2F1_ω
 jmp xchain437_n51_α
 xchain437_n57_β:
 jmp proc_leftdigit$2F1_ω
 xchain437_n58_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+928]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 936], rax
# marshal arg2 = producer-box slot [zr+1024] -> [zr+944]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 952], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 912]
 lea r8, [rbp + 912]
.Lx515_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx515_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx515_111
 cmp esi, 1
 jne .Lx515_112
 mov r8, rax
 jmp .Lx515_110
.Lx515_112:
 cmp esi, 2
 jne .Lx515_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx515_111
 mov r8, rax
 jmp .Lx515_110
.Lx515_113:
 cmp eax, 13
 jne .Lx515_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx515_111
 cmp rax, r8
 je .Lx515_111
 mov r8, rax
 jmp .Lx515_110
.Lx515_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx515_114
 cmp eax, 99
 je .Lx515_114
 cmp eax, 13
 jne .Lx515_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx515_114
 jmp .Lx515_118
.Lx515_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx515_115
 cmp eax, 6
 jne .Lx515_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx515_114
 movabs rdx, 7
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx515_115
 jmp .Lx515_114
.Lx515_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx515_117
.Lx515_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx515_117
.Lx515_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx515_117:
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain437_n60_α
 jmp xchain437_n59_α
 xchain437_n58_β:
 jmp xchain437_n60_α
# IR_VAR_REF
 xchain437_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain437_n61_α
# IR_VAR_REF
 xchain437_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain437_n62_α
# IR_LIT_INTEGER
 xchain437_n61_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx520_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain437_n63_α
.Lx520_0:
 .quad 7
# IR_LIT_INTEGER
 xchain437_n62_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx521_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain437_n64_α
.Lx521_0:
 .quad 1
 xchain437_n63_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 800]
 movabs rsi, 7
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain437_n66_α
 jmp xchain437_n65_α
 xchain437_n63_β:
 jmp xchain437_n66_α
# IR_LIT_INTEGER
 xchain437_n64_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx523_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain437_n67_α
.Lx523_0:
 .quad 8
# IR_SUSPEND yield+resume
 xchain437_n65_α:
 lea rax, [rip + xchain437_n65_β]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$2F1_γ
 xchain437_n65_β:
 jmp xchain437_n66_α
 xchain437_n66_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+752]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je proc_leftdigit$2F1_ω
 jmp xchain437_n60_α
 xchain437_n66_β:
 jmp proc_leftdigit$2F1_ω
 xchain437_n67_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+608]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 616], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+624]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 632], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 592]
 lea r8, [rbp + 592]
.Lx527_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx527_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx527_111
 cmp esi, 1
 jne .Lx527_112
 mov r8, rax
 jmp .Lx527_110
.Lx527_112:
 cmp esi, 2
 jne .Lx527_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx527_111
 mov r8, rax
 jmp .Lx527_110
.Lx527_113:
 cmp eax, 13
 jne .Lx527_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx527_111
 cmp rax, r8
 je .Lx527_111
 mov r8, rax
 jmp .Lx527_110
.Lx527_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx527_114
 cmp eax, 99
 je .Lx527_114
 cmp eax, 13
 jne .Lx527_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx527_114
 jmp .Lx527_118
.Lx527_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx527_115
 cmp eax, 6
 jne .Lx527_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx527_114
 movabs rdx, 8
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx527_115
 jmp .Lx527_114
.Lx527_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx527_117
.Lx527_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx527_117
.Lx527_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx527_117:
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain437_n69_α
 jmp xchain437_n68_α
 xchain437_n67_β:
 jmp xchain437_n69_α
# IR_VAR_REF
 xchain437_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain437_n70_α
# IR_VAR_REF
 xchain437_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain437_n71_α
# IR_LIT_INTEGER
 xchain437_n70_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx532_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain437_n72_α
.Lx532_0:
 .quad 8
# IR_LIT_INTEGER
 xchain437_n71_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx533_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain437_n73_α
.Lx533_0:
 .quad 1
 xchain437_n72_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 480]
 movabs rsi, 8
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain437_n75_α
 jmp xchain437_n74_α
 xchain437_n72_β:
 jmp xchain437_n75_α
# IR_LIT_INTEGER
 xchain437_n73_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx535_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain437_n76_α
.Lx535_0:
 .quad 9
# IR_SUSPEND yield+resume
 xchain437_n74_α:
 lea rax, [rip + xchain437_n74_β]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$2F1_γ
 xchain437_n74_β:
 jmp xchain437_n75_α
 xchain437_n75_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+432]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je proc_leftdigit$2F1_ω
 jmp xchain437_n69_α
 xchain437_n75_β:
 jmp proc_leftdigit$2F1_ω
 xchain437_n76_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+272]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 280], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 296], rax
# marshal arg2 = producer-box slot [zr+384] -> [zr+304]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 312], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 272]
 lea r8, [rbp + 272]
.Lx539_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx539_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx539_111
 cmp esi, 1
 jne .Lx539_112
 mov r8, rax
 jmp .Lx539_110
.Lx539_112:
 cmp esi, 2
 jne .Lx539_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx539_111
 mov r8, rax
 jmp .Lx539_110
.Lx539_113:
 cmp eax, 13
 jne .Lx539_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx539_111
 cmp rax, r8
 je .Lx539_111
 mov r8, rax
 jmp .Lx539_110
.Lx539_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx539_114
 cmp eax, 99
 je .Lx539_114
 cmp eax, 13
 jne .Lx539_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx539_114
 jmp .Lx539_118
.Lx539_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx539_115
 cmp eax, 6
 jne .Lx539_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx539_114
 movabs rdx, 9
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx539_115
 jmp .Lx539_114
.Lx539_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx539_117
.Lx539_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx539_117
.Lx539_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx539_117:
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain437_n78_α
 jmp xchain437_n77_α
 xchain437_n76_β:
 jmp xchain437_n78_α
# IR_VAR_REF
 xchain437_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain437_n79_α
 xchain437_n78_α:
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
 je proc_leftdigit$2F1_ω
 jmp proc_leftdigit$2F1_ω
 xchain437_n78_β:
 jmp proc_leftdigit$2F1_ω
# IR_LIT_INTEGER
 xchain437_n79_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx543_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain437_n80_α
.Lx543_0:
 .quad 9
 xchain437_n80_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 160]
 movabs rsi, 9
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain437_n78_α
 jmp xchain437_n81_α
 xchain437_n80_β:
 jmp xchain437_n78_α
# IR_SUSPEND yield+resume
 xchain437_n81_α:
 lea rax, [rip + xchain437_n81_β]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$2F1_γ
 xchain437_n81_β:
 jmp xchain437_n78_α
proc_leftdigit$2F1_res:
add rsp, 8
pop rbp
proc_leftdigit$2F1_β:
jmp qword ptr [rbp + 2976]
proc_leftdigit$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_leftdigit$2F1_res]
push rax
mov rax, [rbp + 3016]
mov rbp, [rbp + 3032]
jmp rax
proc_leftdigit$2F1_ω:
mov rax, [rbp + 3024]
lea rsp, [rbp + 3040]
mov rbp, [rbp + 3032]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "sumdigit/5"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_sumdigit$2F5_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 5
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1856
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "digit/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_digit$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3328
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "solve/8"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_solve$2F8_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 8
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 6080
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "leftdigit/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_leftdigit$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3008
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
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
  mov qword ptr [rsp + 1896], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain547_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx548_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx548_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx548_101
.Lx548_100:
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx548_101:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain547_n1_α
 xchain547_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain547_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2016]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain547_n2_α
# IR_VAR_REF
 xchain547_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2000]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain547_n3_α
# IR_VAR_REF
 xchain547_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1984]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain547_n4_α
# IR_VAR_REF
 xchain547_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1968]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain547_n5_α
# IR_VAR_REF
 xchain547_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1952]
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain547_n6_α
# IR_VAR_REF
 xchain547_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1936]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain547_n7_α
# IR_VAR_REF
 xchain547_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1920]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain547_n8_α
# IR_VAR_REF
 xchain547_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1904]
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain547_n9_α
 xchain547_n9_α:
 mov qword ptr [rbp + 1600], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx566_20
 mov rax, qword ptr [rbp + 1632]
 mov rdx, qword ptr [rbp + 1640]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx566_21
.Lx566_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1632]
 mov rdx, qword ptr [rbp + 1640]
 call rt_arg_stage@PLT
.Lx566_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx566_22
 mov rax, qword ptr [rbp + 1664]
 mov rdx, qword ptr [rbp + 1672]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx566_23
.Lx566_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 1664]
 mov rdx, qword ptr [rbp + 1672]
 call rt_arg_stage@PLT
.Lx566_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx566_24
 mov rax, qword ptr [rbp + 1696]
 mov rdx, qword ptr [rbp + 1704]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx566_25
.Lx566_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 1696]
 mov rdx, qword ptr [rbp + 1704]
 call rt_arg_stage@PLT
.Lx566_25:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx566_26
 mov rax, qword ptr [rbp + 1728]
 mov rdx, qword ptr [rbp + 1736]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 48], rax
 mov qword ptr [r10 + 56], rdx
 jmp .Lx566_27
.Lx566_26:
 mov edi, 3
 mov rsi, qword ptr [rbp + 1728]
 mov rdx, qword ptr [rbp + 1736]
 call rt_arg_stage@PLT
.Lx566_27:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx566_28
 mov rax, qword ptr [rbp + 1760]
 mov rdx, qword ptr [rbp + 1768]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 64], rax
 mov qword ptr [r10 + 72], rdx
 jmp .Lx566_29
.Lx566_28:
 mov edi, 4
 mov rsi, qword ptr [rbp + 1760]
 mov rdx, qword ptr [rbp + 1768]
 call rt_arg_stage@PLT
.Lx566_29:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx566_30
 mov rax, qword ptr [rbp + 1792]
 mov rdx, qword ptr [rbp + 1800]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 80], rax
 mov qword ptr [r10 + 88], rdx
 jmp .Lx566_31
.Lx566_30:
 mov edi, 5
 mov rsi, qword ptr [rbp + 1792]
 mov rdx, qword ptr [rbp + 1800]
 call rt_arg_stage@PLT
.Lx566_31:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx566_32
 mov rax, qword ptr [rbp + 1824]
 mov rdx, qword ptr [rbp + 1832]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 96], rax
 mov qword ptr [r10 + 104], rdx
 jmp .Lx566_33
.Lx566_32:
 mov edi, 6
 mov rsi, qword ptr [rbp + 1824]
 mov rdx, qword ptr [rbp + 1832]
 call rt_arg_stage@PLT
.Lx566_33:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx566_34
 mov rax, qword ptr [rbp + 1856]
 mov rdx, qword ptr [rbp + 1864]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 112], rax
 mov qword ptr [r10 + 120], rdx
 jmp .Lx566_35
.Lx566_34:
 mov edi, 7
 mov rsi, qword ptr [rbp + 1856]
 mov rdx, qword ptr [rbp + 1864]
 call rt_arg_stage@PLT
.Lx566_35:
 mov edi, 2
 mov esi, 8
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx566_1
 lea rcx, [rip + .Lx566_3]
 lea rdx, [rip + .Lx566_4]
 jmp rax
.Lx566_3:
 mov qword ptr [rbp + 1608], rsp
 mov rax, qword ptr [rbp + 1600]
 test rax, rax
 jne .Lx566_5
 mov qword ptr [rbp + 1600], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx566_2
.Lx566_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx566_2
.Lx566_4:
 mov rax, qword ptr [rbp + 1600]
 test rax, rax
 jne .Lx566_6
 mov qword ptr [rbp + 1600], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx566_2
.Lx566_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx566_2
.Lx566_1:
 call rt_faildescr@PLT
.Lx566_2:
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain547_n11_α
 jmp xchain547_n10_α
 xchain547_n9_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1608]
 jmp qword ptr [rsp]
.Lx566_0:
 .quad .Lx566_0_s
.Lx566_0_s:
 .string "solve/8"
# IR_LIT_STRING
 xchain547_n10_α:
 mov qword ptr [rbp + 1360], 1
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [rbp + 1368], rax
 jmp xchain547_n12_α
.Lx567_0:
 .quad .Lx567_0_s
.Lx567_0_s:
 .string "."
# IR_LIT_STRING
 xchain547_n11_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx568_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain547_n13_α
.Lx568_0:
 .quad .Lx568_0_s
.Lx568_0_s:
 .string "none"
# IR_VAR_REF
 xchain547_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2016]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain547_n14_α
 xchain547_n13_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1408]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1416], rax
  .section .rodata
  .Lrkfn572: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn572]
 lea rsi, [rbp + 1408]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain547_n16_α
 jmp xchain547_n15_α
 xchain547_n13_β:
 jmp xchain547_n16_α
# IR_LIT_STRING
 xchain547_n14_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx573_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain547_n17_α
.Lx573_0:
 .quad .Lx573_0_s
.Lx573_0_s:
 .string "."
# IR_LIT_STRING
 xchain547_n15_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx574_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain547_n18_α
.Lx574_0:
 .quad .Lx574_0_s
.Lx574_0_s:
 .string ""
 xchain547_n16_α:
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
 xchain547_n16_β:
 jmp main_ω
# IR_VAR_REF
 xchain547_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2000]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain547_n19_α
 xchain547_n18_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn579: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn579]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain547_n16_α
 jmp xchain547_n20_α
 xchain547_n18_β:
 jmp xchain547_n16_α
# IR_LIT_STRING
 xchain547_n19_α:
 mov qword ptr [rbp + 1072], 1
 mov rax, qword ptr [rip + .Lx580_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain547_n21_α
.Lx580_0:
 .quad .Lx580_0_s
.Lx580_0_s:
 .string "."
# IR_MOVE_LABEL
 xchain547_n20_α:
 lea rax, [rip + xchain547_n16_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_VAR_REF
 xchain547_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1984]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain547_n23_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain547_n22_α:
 jmp qword ptr [rbp + 32]
 xchain547_n22_β:
 jmp main_ω
# IR_LIT_STRING
 xchain547_n23_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx587_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain547_n24_α
.Lx587_0:
 .quad .Lx587_0_s
.Lx587_0_s:
 .string "."
# IR_VAR_REF
 xchain547_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1968]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain547_n25_α
# IR_LIT_STRING
 xchain547_n25_α:
 mov qword ptr [rbp + 784], 1
 mov rax, qword ptr [rip + .Lx590_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain547_n26_α
.Lx590_0:
 .quad .Lx590_0_s
.Lx590_0_s:
 .string "."
# IR_VAR_REF
 xchain547_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1952]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain547_n27_α
# IR_LIT_STRING
 xchain547_n27_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx593_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain547_n28_α
.Lx593_0:
 .quad .Lx593_0_s
.Lx593_0_s:
 .string "."
# IR_VAR_REF
 xchain547_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1936]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain547_n29_α
# IR_LIT_STRING
 xchain547_n29_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx596_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain547_n30_α
.Lx596_0:
 .quad .Lx596_0_s
.Lx596_0_s:
 .string "."
# IR_VAR_REF
 xchain547_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1920]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain547_n31_α
# IR_LIT_STRING
 xchain547_n31_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx599_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain547_n32_α
.Lx599_0:
 .quad .Lx599_0_s
.Lx599_0_s:
 .string "."
# IR_VAR_REF
 xchain547_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1904]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain547_n33_α
# IR_LIT_STRING
 xchain547_n33_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx602_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain547_n34_α
.Lx602_0:
 .quad .Lx602_0_s
.Lx602_0_s:
 .string "[]"
 xchain547_n34_α:
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
 je main_ω
 jmp xchain547_n35_α
 xchain547_n34_β:
 jmp main_ω
 xchain547_n35_α:
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
 je main_ω
 jmp xchain547_n36_α
 xchain547_n35_β:
 jmp main_ω
 xchain547_n36_α:
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
 je main_ω
 jmp xchain547_n37_α
 xchain547_n36_β:
 jmp main_ω
 xchain547_n37_α:
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
 je main_ω
 jmp xchain547_n38_α
 xchain547_n37_β:
 jmp main_ω
 xchain547_n38_α:
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
 je main_ω
 jmp xchain547_n39_α
 xchain547_n38_β:
 jmp main_ω
 xchain547_n39_α:
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
 je main_ω
 jmp xchain547_n40_α
 xchain547_n39_β:
 jmp main_ω
 xchain547_n40_α:
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
 je main_ω
 jmp xchain547_n41_α
 xchain547_n40_β:
 jmp main_ω
 xchain547_n41_α:
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
 je xchain547_n16_α
 jmp xchain547_n42_α
 xchain547_n41_β:
 jmp xchain547_n16_α
 xchain547_n42_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+192]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn612: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn612]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain547_n16_α
 jmp xchain547_n15_α
 xchain547_n42_β:
 jmp xchain547_n16_α
main_β:
jmp xchain547_n22_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1896]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 1896]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
