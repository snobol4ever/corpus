  .intel_syntax noprefix
  .text
  .globl proc_partition$2F4_α
proc_partition$2F4_α:
#=======================================================================================================================
    .global proc_partition$2F4_α
    .global proc_partition$2F4_β
    .global proc_partition$2F4_γ
    .global proc_partition$2F4_ω
  sub rsp, 3024
  mov [rsp + 3000], rcx
  mov [rsp + 3008], rdx
  mov [rsp + 3016], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2888], rsp
  mov rdi, rsp
  mov esi, 2864
  mov edx, 2992
  call rt_jmp_frame_lexprep2@PLT
proc_partition$2F4_α_body:
lea rax, [rip + xchain0_n66_β]
mov qword ptr [rbp + 2864], rax
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
 je proc_partition$2F4_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_partition$2F4_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [rbp + 2800], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 2808], rax
 jmp xchain0_n3_α
.Lx4_0:
 .quad 3
# IR_LIT_INTEGER
 xchain0_n3_α:
 mov qword ptr [rbp + 2832], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 2840], rax
 jmp xchain0_n4_α
.Lx5_0:
 .quad 0
 xchain0_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2768] -> [zr+2720]
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 2728], rax
# marshal arg1 = producer-box slot [zr+2800] -> [zr+2736]
 mov rax, qword ptr [rbp + 2800]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2808]
 mov qword ptr [rbp + 2744], rax
# marshal arg2 = producer-box slot [zr+2832] -> [zr+2752]
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 2760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2720]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain0_n8_α
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2896]
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain0_n9_α
# IR_LIT_INTEGER
 xchain0_n8_α:
 mov qword ptr [rbp + 1712], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 1720], rax
 jmp xchain0_n10_α
.Lx13_0:
 .quad 3
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2912]
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain0_n11_α
# IR_LIT_INTEGER
 xchain0_n10_α:
 mov qword ptr [rbp + 1744], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain0_n12_α
.Lx16_0:
 .quad 0
 xchain0_n11_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2544] -> [zr+2592]
 mov rax, qword ptr [rbp + 2544]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 2600], rax
# marshal arg1 = producer-box slot [zr+2640] -> [zr+2608]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2616], rax
# marshal arg2 = producer-box slot [zr+2672] -> [zr+2624]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2632], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 2592]
 lea r8, [rbp + 2592]
.Lx17_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx17_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx17_61
 cmp esi, 1
 jne .Lx17_62
 mov r8, rax
 jmp .Lx17_60
.Lx17_62:
 cmp esi, 2
 jne .Lx17_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx17_61
 mov r8, rax
 jmp .Lx17_60
.Lx17_63:
 cmp eax, 13
 jne .Lx17_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx17_61
 cmp rax, r8
 je .Lx17_61
 mov r8, rax
 jmp .Lx17_60
.Lx17_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx17_80
 cmp eax, 99
 je .Lx17_80
 cmp eax, 13
 jne .Lx17_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx17_80
 jmp .Lx17_74
.Lx17_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx17_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx17_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx17_73
 lea r9, [rbp + 2608]
.Lx17_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx17_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx17_65
 cmp esi, 1
 jne .Lx17_66
 mov r9, rax
 jmp .Lx17_64
.Lx17_66:
 cmp esi, 2
 jne .Lx17_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx17_65
 mov r9, rax
 jmp .Lx17_64
.Lx17_67:
 cmp eax, 13
 jne .Lx17_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx17_65
 cmp rax, r9
 je .Lx17_65
 mov r9, rax
 jmp .Lx17_64
.Lx17_65:
 lea rcx, [rbp + 2624]
.Lx17_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx17_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx17_69
 cmp esi, 1
 jne .Lx17_70
 mov rcx, rax
 jmp .Lx17_68
.Lx17_70:
 cmp esi, 2
 jne .Lx17_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx17_69
 mov rcx, rax
 jmp .Lx17_68
.Lx17_71:
 cmp eax, 13
 jne .Lx17_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx17_69
 cmp rax, rcx
 je .Lx17_69
 mov rcx, rax
 jmp .Lx17_68
.Lx17_69:
 cmp r9, rcx
 je .Lx17_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx17_75
 cmp eax, 99
 je .Lx17_75
 cmp eax, 13
 jne .Lx17_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx17_75
 jmp .Lx17_72
.Lx17_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx17_76
 cmp eax, 99
 je .Lx17_76
 cmp eax, 13
 jne .Lx17_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx17_76
 jmp .Lx17_72
.Lx17_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx17_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx17_72
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
 jmp .Lx17_77
.Lx17_80:
# PL-SINK-3 inline $unify_lst WRITE mode: carve 2 kids off the PLJ frontier, join unbound args, bind subject to the './2 cell
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx17_72
 lea r10, [rip + g_hp_fr]
 mov eax, dword ptr [r10 + 24]
 test eax, eax
 je .Lx17_72
 mov r11, qword ptr [r10 + 0]
 mov rax, qword ptr [r10 + 8]
 sub rax, 48
 cmp r11, rax
 ja .Lx17_72
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx17_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 72
 cmp rsi, rax
 ja .Lx17_72
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
 lea r9, [rbp + 2608]
.Lx17_81:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx17_84
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx17_82
 cmp esi, 1
 jne .Lx17_83
 mov r9, rax
 jmp .Lx17_81
.Lx17_83:
 cmp esi, 2
 jne .Lx17_82
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx17_82
 mov r9, rax
 jmp .Lx17_81
.Lx17_84:
 cmp eax, 13
 jne .Lx17_82
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx17_82
 cmp rax, r9
 je .Lx17_82
 mov r9, rax
 jmp .Lx17_81
.Lx17_82:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx17_85
 cmp eax, 99
 je .Lx17_85
 cmp eax, 13
 jne .Lx17_86
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx17_85
 jmp .Lx17_86
.Lx17_85:
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
 jmp .Lx17_87
.Lx17_86:
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [rdx + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [rdx + 8], rax
.Lx17_87:
 lea rcx, [rbp + 2624]
.Lx17_88:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx17_91
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx17_89
 cmp esi, 1
 jne .Lx17_90
 mov rcx, rax
 jmp .Lx17_88
.Lx17_90:
 cmp esi, 2
 jne .Lx17_89
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx17_89
 mov rcx, rax
 jmp .Lx17_88
.Lx17_91:
 cmp eax, 13
 jne .Lx17_89
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx17_89
 cmp rax, rcx
 je .Lx17_89
 mov rcx, rax
 jmp .Lx17_88
.Lx17_89:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx17_92
 cmp eax, 99
 je .Lx17_92
 cmp eax, 13
 jne .Lx17_93
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx17_92
 jmp .Lx17_93
.Lx17_92:
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
 jmp .Lx17_94
.Lx17_93:
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rdx + 16], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [rdx + 24], rax
.Lx17_94:
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
 jmp .Lx17_77
.Lx17_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx17_77
.Lx17_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx17_77:
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
 xchain0_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1632]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1640], rax
# marshal arg1 = producer-box slot [zr+1712] -> [zr+1648]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1656], rax
# marshal arg2 = producer-box slot [zr+1744] -> [zr+1664]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1632]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain0_n17_α
 xchain0_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+1792]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1800], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1792]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je proc_partition$2F4_ω
 jmp xchain0_n6_α
 xchain0_n14_β:
 jmp proc_partition$2F4_ω
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain0_n18_α
# IR_VAR_REF
 xchain0_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain0_n19_α
# IR_VAR_REF
 xchain0_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2928]
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2896]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain0_n21_α
# IR_LIT_INTEGER
 xchain0_n19_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain0_n22_α
.Lx30_0:
 .quad 2
 xchain0_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+2448]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2456], rax
# marshal arg1 = producer-box slot [zr+2512] -> [zr+2464]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2472], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2448]
 lea r8, [rbp + 2448]
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
 lea r9, [rbp + 2464]
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
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2912]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain0_n24_α
# IR_LIT_STRING
 xchain0_n22_α:
 mov qword ptr [rbp + 768], 1
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain0_n25_α
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "[]"
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain0_n26_α
 xchain0_n24_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1504]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1512], rax
# marshal arg1 = producer-box slot [zr+1552] -> [zr+1520]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1528], rax
# marshal arg2 = producer-box slot [zr+1584] -> [zr+1536]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1544], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1504]
 lea r8, [rbp + 1504]
.Lx37_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx37_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx37_61
 cmp esi, 1
 jne .Lx37_62
 mov r8, rax
 jmp .Lx37_60
.Lx37_62:
 cmp esi, 2
 jne .Lx37_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx37_61
 mov r8, rax
 jmp .Lx37_60
.Lx37_63:
 cmp eax, 13
 jne .Lx37_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx37_61
 cmp rax, r8
 je .Lx37_61
 mov r8, rax
 jmp .Lx37_60
.Lx37_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx37_80
 cmp eax, 99
 je .Lx37_80
 cmp eax, 13
 jne .Lx37_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx37_80
 jmp .Lx37_74
.Lx37_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx37_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx37_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx37_73
 lea r9, [rbp + 1520]
.Lx37_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx37_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx37_65
 cmp esi, 1
 jne .Lx37_66
 mov r9, rax
 jmp .Lx37_64
.Lx37_66:
 cmp esi, 2
 jne .Lx37_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx37_65
 mov r9, rax
 jmp .Lx37_64
.Lx37_67:
 cmp eax, 13
 jne .Lx37_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx37_65
 cmp rax, r9
 je .Lx37_65
 mov r9, rax
 jmp .Lx37_64
.Lx37_65:
 lea rcx, [rbp + 1536]
.Lx37_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx37_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx37_69
 cmp esi, 1
 jne .Lx37_70
 mov rcx, rax
 jmp .Lx37_68
.Lx37_70:
 cmp esi, 2
 jne .Lx37_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx37_69
 mov rcx, rax
 jmp .Lx37_68
.Lx37_71:
 cmp eax, 13
 jne .Lx37_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx37_69
 cmp rax, rcx
 je .Lx37_69
 mov rcx, rax
 jmp .Lx37_68
.Lx37_69:
 cmp r9, rcx
 je .Lx37_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx37_75
 cmp eax, 99
 je .Lx37_75
 cmp eax, 13
 jne .Lx37_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx37_75
 jmp .Lx37_72
.Lx37_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx37_76
 cmp eax, 99
 je .Lx37_76
 cmp eax, 13
 jne .Lx37_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx37_76
 jmp .Lx37_72
.Lx37_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx37_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx37_72
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
 jmp .Lx37_77
.Lx37_80:
# PL-SINK-3 inline $unify_lst WRITE mode: carve 2 kids off the PLJ frontier, join unbound args, bind subject to the './2 cell
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx37_72
 lea r10, [rip + g_hp_fr]
 mov eax, dword ptr [r10 + 24]
 test eax, eax
 je .Lx37_72
 mov r11, qword ptr [r10 + 0]
 mov rax, qword ptr [r10 + 8]
 sub rax, 48
 cmp r11, rax
 ja .Lx37_72
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx37_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 72
 cmp rsi, rax
 ja .Lx37_72
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
 lea r9, [rbp + 1520]
.Lx37_81:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx37_84
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx37_82
 cmp esi, 1
 jne .Lx37_83
 mov r9, rax
 jmp .Lx37_81
.Lx37_83:
 cmp esi, 2
 jne .Lx37_82
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx37_82
 mov r9, rax
 jmp .Lx37_81
.Lx37_84:
 cmp eax, 13
 jne .Lx37_82
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx37_82
 cmp rax, r9
 je .Lx37_82
 mov r9, rax
 jmp .Lx37_81
.Lx37_82:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx37_85
 cmp eax, 99
 je .Lx37_85
 cmp eax, 13
 jne .Lx37_86
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx37_85
 jmp .Lx37_86
.Lx37_85:
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
 jmp .Lx37_87
.Lx37_86:
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [rdx + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [rdx + 8], rax
.Lx37_87:
 lea rcx, [rbp + 1536]
.Lx37_88:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx37_91
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx37_89
 cmp esi, 1
 jne .Lx37_90
 mov rcx, rax
 jmp .Lx37_88
.Lx37_90:
 cmp esi, 2
 jne .Lx37_89
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx37_89
 mov rcx, rax
 jmp .Lx37_88
.Lx37_91:
 cmp eax, 13
 jne .Lx37_89
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx37_89
 cmp rax, rcx
 je .Lx37_89
 mov rcx, rax
 jmp .Lx37_88
.Lx37_89:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx37_92
 cmp eax, 99
 je .Lx37_92
 cmp eax, 13
 jne .Lx37_93
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx37_92
 jmp .Lx37_93
.Lx37_92:
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
 jmp .Lx37_94
.Lx37_93:
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rdx + 16], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [rdx + 24], rax
.Lx37_94:
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
 jmp .Lx37_77
.Lx37_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx37_77
.Lx37_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx37_77:
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n28_α
 xchain0_n25_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
# marshal arg2 = producer-box slot [zr+768] -> [zr+688]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n29_α
 xchain0_n25_β:
 jmp xchain0_n30_α
# IR_VAR_REF
 xchain0_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2896]
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain0_n31_α
# IR_VAR_REF
 xchain0_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain0_n32_α
 xchain0_n28_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+816]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_partition$2F4_ω
 jmp xchain0_n16_α
 xchain0_n28_β:
 jmp proc_partition$2F4_ω
# IR_VAR_REF
 xchain0_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain0_n33_α
 xchain0_n30_α:
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
 je proc_partition$2F4_ω
 jmp proc_partition$2F4_ω
 xchain0_n30_β:
 jmp proc_partition$2F4_ω
# IR_VAR_REF
 xchain0_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2960]
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain0_n34_α
# IR_VAR_REF
 xchain0_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2928]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain0_n35_α
# IR_LIT_STRING
 xchain0_n33_α:
 mov qword ptr [rbp + 608], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain0_n36_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "[]"
 xchain0_n34_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2272] -> [zr+2320]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2328], rax
# marshal arg1 = producer-box slot [zr+2368] -> [zr+2336]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2344], rax
# marshal arg2 = producer-box slot [zr+2400] -> [zr+2352]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2360], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 2320]
 lea r8, [rbp + 2320]
.Lx52_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx52_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx52_61
 cmp esi, 1
 jne .Lx52_62
 mov r8, rax
 jmp .Lx52_60
.Lx52_62:
 cmp esi, 2
 jne .Lx52_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx52_61
 mov r8, rax
 jmp .Lx52_60
.Lx52_63:
 cmp eax, 13
 jne .Lx52_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx52_61
 cmp rax, r8
 je .Lx52_61
 mov r8, rax
 jmp .Lx52_60
.Lx52_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx52_80
 cmp eax, 99
 je .Lx52_80
 cmp eax, 13
 jne .Lx52_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx52_80
 jmp .Lx52_74
.Lx52_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx52_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx52_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx52_73
 lea r9, [rbp + 2336]
.Lx52_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx52_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx52_65
 cmp esi, 1
 jne .Lx52_66
 mov r9, rax
 jmp .Lx52_64
.Lx52_66:
 cmp esi, 2
 jne .Lx52_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx52_65
 mov r9, rax
 jmp .Lx52_64
.Lx52_67:
 cmp eax, 13
 jne .Lx52_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx52_65
 cmp rax, r9
 je .Lx52_65
 mov r9, rax
 jmp .Lx52_64
.Lx52_65:
 lea rcx, [rbp + 2352]
.Lx52_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx52_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx52_69
 cmp esi, 1
 jne .Lx52_70
 mov rcx, rax
 jmp .Lx52_68
.Lx52_70:
 cmp esi, 2
 jne .Lx52_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx52_69
 mov rcx, rax
 jmp .Lx52_68
.Lx52_71:
 cmp eax, 13
 jne .Lx52_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx52_69
 cmp rax, rcx
 je .Lx52_69
 mov rcx, rax
 jmp .Lx52_68
.Lx52_69:
 cmp r9, rcx
 je .Lx52_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx52_75
 cmp eax, 99
 je .Lx52_75
 cmp eax, 13
 jne .Lx52_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx52_75
 jmp .Lx52_72
.Lx52_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx52_76
 cmp eax, 99
 je .Lx52_76
 cmp eax, 13
 jne .Lx52_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx52_76
 jmp .Lx52_72
.Lx52_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx52_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx52_72
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
 jmp .Lx52_77
.Lx52_80:
# PL-SINK-3 inline $unify_lst WRITE mode: carve 2 kids off the PLJ frontier, join unbound args, bind subject to the './2 cell
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx52_72
 lea r10, [rip + g_hp_fr]
 mov eax, dword ptr [r10 + 24]
 test eax, eax
 je .Lx52_72
 mov r11, qword ptr [r10 + 0]
 mov rax, qword ptr [r10 + 8]
 sub rax, 48
 cmp r11, rax
 ja .Lx52_72
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx52_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 72
 cmp rsi, rax
 ja .Lx52_72
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
 lea r9, [rbp + 2336]
.Lx52_81:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx52_84
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx52_82
 cmp esi, 1
 jne .Lx52_83
 mov r9, rax
 jmp .Lx52_81
.Lx52_83:
 cmp esi, 2
 jne .Lx52_82
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx52_82
 mov r9, rax
 jmp .Lx52_81
.Lx52_84:
 cmp eax, 13
 jne .Lx52_82
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx52_82
 cmp rax, r9
 je .Lx52_82
 mov r9, rax
 jmp .Lx52_81
.Lx52_82:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx52_85
 cmp eax, 99
 je .Lx52_85
 cmp eax, 13
 jne .Lx52_86
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx52_85
 jmp .Lx52_86
.Lx52_85:
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
 jmp .Lx52_87
.Lx52_86:
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [rdx + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [rdx + 8], rax
.Lx52_87:
 lea rcx, [rbp + 2352]
.Lx52_88:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx52_91
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx52_89
 cmp esi, 1
 jne .Lx52_90
 mov rcx, rax
 jmp .Lx52_88
.Lx52_90:
 cmp esi, 2
 jne .Lx52_89
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx52_89
 mov rcx, rax
 jmp .Lx52_88
.Lx52_91:
 cmp eax, 13
 jne .Lx52_89
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx52_89
 cmp rax, rcx
 je .Lx52_89
 mov rcx, rax
 jmp .Lx52_88
.Lx52_89:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx52_92
 cmp eax, 99
 je .Lx52_92
 cmp eax, 13
 jne .Lx52_93
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx52_92
 jmp .Lx52_93
.Lx52_92:
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
 jmp .Lx52_94
.Lx52_93:
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rdx + 16], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [rdx + 24], rax
.Lx52_94:
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
 jmp .Lx52_77
.Lx52_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx52_77
.Lx52_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx52_77:
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n37_α
 xchain0_n34_β:
 jmp xchain0_n14_α
 xchain0_n35_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1392] -> [zr+1360]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1368], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1376]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1384], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1360]
 lea r8, [rbp + 1360]
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
 lea r9, [rbp + 1376]
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
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n28_α
 xchain0_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 552], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 544]
 mov rsi, qword ptr [rip + .Lx54_2]
 jmp .Lx54_3
.Lx54_2:
 .quad .Lx54_2_s
.Lx54_2_s:
 .string "[]"
.Lx54_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n30_α
# IR_VAR_REF
 xchain0_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain0_n40_α
# IR_VAR_REF
 xchain0_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain0_n41_α
# IR_VAR_REF
 xchain0_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain0_n42_α
# IR_VAR_REF
 xchain0_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2976]
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain0_n43_α
# IR_VAR_REF
 xchain0_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2944]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain0_n44_α
# IR_VAR_REF
 xchain0_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2896]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain0_n45_α
 xchain0_n43_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2208] -> [zr+2176]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2184], rax
# marshal arg1 = producer-box slot [zr+2240] -> [zr+2192]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2200], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2176]
 lea r8, [rbp + 2176]
.Lx67_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx67_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx67_41
 cmp esi, 1
 jne .Lx67_55
 mov r8, rax
 jmp .Lx67_40
.Lx67_55:
 cmp esi, 2
 jne .Lx67_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx67_41
 mov r8, rax
 jmp .Lx67_40
.Lx67_56:
 cmp eax, 13
 jne .Lx67_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx67_41
 cmp rax, r8
 je .Lx67_41
 mov r8, rax
 jmp .Lx67_40
.Lx67_41:
 lea r9, [rbp + 2192]
.Lx67_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx67_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx67_43
 cmp esi, 1
 jne .Lx67_57
 mov r9, rax
 jmp .Lx67_42
.Lx67_57:
 cmp esi, 2
 jne .Lx67_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx67_43
 mov r9, rax
 jmp .Lx67_42
.Lx67_58:
 cmp eax, 13
 jne .Lx67_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx67_43
 cmp rax, r9
 je .Lx67_43
 mov r9, rax
 jmp .Lx67_42
.Lx67_43:
 cmp r8, r9
 je .Lx67_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx67_44
 cmp eax, 99
 je .Lx67_44
 cmp eax, 13
 jne .Lx67_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx67_44
 jmp .Lx67_45
.Lx67_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx67_53
 cmp eax, 99
 je .Lx67_53
 cmp eax, 13
 jne .Lx67_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx67_53
 jmp .Lx67_46
.Lx67_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx67_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx67_53
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
 jmp .Lx67_51
.Lx67_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx67_47
 cmp eax, 99
 je .Lx67_47
 cmp eax, 13
 jne .Lx67_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx67_47
 jmp .Lx67_48
.Lx67_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx67_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx67_53
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
 jmp .Lx67_51
.Lx67_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx67_49
 cmp edx, 14
 je .Lx67_53
 jmp .Lx67_52
.Lx67_49:
 cmp edx, 14
 je .Lx67_52
 cmp ecx, 7
 je .Lx67_53
 cmp edx, 7
 je .Lx67_53
 cmp ecx, 6
 jne .Lx67_50
 cmp edx, 6
 jne .Lx67_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx67_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx67_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx67_51
 jmp .Lx67_52
.Lx67_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx67_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx67_53
.Lx67_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx67_54
.Lx67_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx67_54
.Lx67_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx67_54:
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n46_α
 xchain0_n43_β:
 jmp xchain0_n14_α
 xchain0_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1248]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1264]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1272], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1248]
 lea r8, [rbp + 1248]
.Lx68_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx68_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx68_41
 cmp esi, 1
 jne .Lx68_55
 mov r8, rax
 jmp .Lx68_40
.Lx68_55:
 cmp esi, 2
 jne .Lx68_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx68_41
 mov r8, rax
 jmp .Lx68_40
.Lx68_56:
 cmp eax, 13
 jne .Lx68_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx68_41
 cmp rax, r8
 je .Lx68_41
 mov r8, rax
 jmp .Lx68_40
.Lx68_41:
 lea r9, [rbp + 1264]
.Lx68_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx68_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx68_43
 cmp esi, 1
 jne .Lx68_57
 mov r9, rax
 jmp .Lx68_42
.Lx68_57:
 cmp esi, 2
 jne .Lx68_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx68_43
 mov r9, rax
 jmp .Lx68_42
.Lx68_58:
 cmp eax, 13
 jne .Lx68_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx68_43
 cmp rax, r9
 je .Lx68_43
 mov r9, rax
 jmp .Lx68_42
.Lx68_43:
 cmp r8, r9
 je .Lx68_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx68_44
 cmp eax, 99
 je .Lx68_44
 cmp eax, 13
 jne .Lx68_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx68_44
 jmp .Lx68_45
.Lx68_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx68_53
 cmp eax, 99
 je .Lx68_53
 cmp eax, 13
 jne .Lx68_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx68_53
 jmp .Lx68_46
.Lx68_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx68_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx68_53
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
 jmp .Lx68_51
.Lx68_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx68_47
 cmp eax, 99
 je .Lx68_47
 cmp eax, 13
 jne .Lx68_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx68_47
 jmp .Lx68_48
.Lx68_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx68_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx68_53
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
 jmp .Lx68_51
.Lx68_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx68_49
 cmp edx, 14
 je .Lx68_53
 jmp .Lx68_52
.Lx68_49:
 cmp edx, 14
 je .Lx68_52
 cmp ecx, 7
 je .Lx68_53
 cmp edx, 7
 je .Lx68_53
 cmp ecx, 6
 jne .Lx68_50
 cmp edx, 6
 jne .Lx68_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx68_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx68_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx68_51
 jmp .Lx68_52
.Lx68_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx68_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx68_53
.Lx68_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx68_54
.Lx68_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx68_54
.Lx68_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx68_54:
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n47_α
 xchain0_n44_β:
 jmp xchain0_n28_α
 xchain0_n45_α:
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
.Lx69_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx69_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx69_41
 cmp esi, 1
 jne .Lx69_55
 mov r8, rax
 jmp .Lx69_40
.Lx69_55:
 cmp esi, 2
 jne .Lx69_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx69_41
 mov r8, rax
 jmp .Lx69_40
.Lx69_56:
 cmp eax, 13
 jne .Lx69_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx69_41
 cmp rax, r8
 je .Lx69_41
 mov r8, rax
 jmp .Lx69_40
.Lx69_41:
 lea r9, [rbp + 448]
.Lx69_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx69_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx69_43
 cmp esi, 1
 jne .Lx69_57
 mov r9, rax
 jmp .Lx69_42
.Lx69_57:
 cmp esi, 2
 jne .Lx69_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx69_43
 mov r9, rax
 jmp .Lx69_42
.Lx69_58:
 cmp eax, 13
 jne .Lx69_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx69_43
 cmp rax, r9
 je .Lx69_43
 mov r9, rax
 jmp .Lx69_42
.Lx69_43:
 cmp r8, r9
 je .Lx69_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx69_44
 cmp eax, 99
 je .Lx69_44
 cmp eax, 13
 jne .Lx69_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx69_44
 jmp .Lx69_45
.Lx69_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx69_53
 cmp eax, 99
 je .Lx69_53
 cmp eax, 13
 jne .Lx69_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx69_53
 jmp .Lx69_46
.Lx69_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx69_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx69_53
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
 jmp .Lx69_51
.Lx69_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx69_47
 cmp eax, 99
 je .Lx69_47
 cmp eax, 13
 jne .Lx69_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx69_47
 jmp .Lx69_48
.Lx69_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx69_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx69_53
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
 jmp .Lx69_51
.Lx69_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx69_49
 cmp edx, 14
 je .Lx69_53
 jmp .Lx69_52
.Lx69_49:
 cmp edx, 14
 je .Lx69_52
 cmp ecx, 7
 je .Lx69_53
 cmp edx, 7
 je .Lx69_53
 cmp ecx, 6
 jne .Lx69_50
 cmp edx, 6
 jne .Lx69_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx69_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx69_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx69_51
 jmp .Lx69_52
.Lx69_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx69_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx69_53
.Lx69_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx69_54
.Lx69_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx69_54
.Lx69_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx69_54:
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n48_α
 xchain0_n45_β:
 jmp xchain0_n30_α
# IR_VAR
 xchain0_n46_α:
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 2104], rax
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain0_n50_α
# IR_VAR_REF
 xchain0_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain0_n51_α
# IR_VAR
 xchain0_n49_α:
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2136], rax
 jmp xchain0_n52_α
# IR_VAR_REF
 xchain0_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2896]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain0_n53_α
# IR_LIT_STRING
 xchain0_n51_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain0_n54_α
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "[]"
 xchain0_n52_α:
# BOX IR_CALL $cmp_le(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2064]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2072], rax
# marshal arg1 = producer-box slot [zr+2128] -> [zr+2080]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_le (no by-name dispatch)
 lea rdi, [rbp + 2064]
 mov esi, 2
 call rt_pl_dop_cmp_le@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n55_α
 xchain0_n52_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2960]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain0_n56_α
 xchain0_n54_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 320]
 mov rsi, qword ptr [rip + .Lx84_2]
 jmp .Lx84_3
.Lx84_2:
 .quad .Lx84_2_s
.Lx84_2_s:
 .string "[]"
.Lx84_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n57_α
 xchain0_n54_β:
 jmp xchain0_n30_α
 xchain0_n55_α:
# IR_CUT
 jmp xchain0_n58_α
 xchain0_n56_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1120]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1128], rax
# marshal arg1 = producer-box slot [zr+1168] -> [zr+1136]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1144], rax
# marshal arg2 = producer-box slot [zr+1200] -> [zr+1152]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1160], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1120]
 lea r8, [rbp + 1120]
.Lx86_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx86_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx86_61
 cmp esi, 1
 jne .Lx86_62
 mov r8, rax
 jmp .Lx86_60
.Lx86_62:
 cmp esi, 2
 jne .Lx86_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx86_61
 mov r8, rax
 jmp .Lx86_60
.Lx86_63:
 cmp eax, 13
 jne .Lx86_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx86_61
 cmp rax, r8
 je .Lx86_61
 mov r8, rax
 jmp .Lx86_60
.Lx86_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx86_80
 cmp eax, 99
 je .Lx86_80
 cmp eax, 13
 jne .Lx86_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx86_80
 jmp .Lx86_74
.Lx86_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx86_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx86_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx86_73
 lea r9, [rbp + 1136]
.Lx86_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx86_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx86_65
 cmp esi, 1
 jne .Lx86_66
 mov r9, rax
 jmp .Lx86_64
.Lx86_66:
 cmp esi, 2
 jne .Lx86_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx86_65
 mov r9, rax
 jmp .Lx86_64
.Lx86_67:
 cmp eax, 13
 jne .Lx86_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx86_65
 cmp rax, r9
 je .Lx86_65
 mov r9, rax
 jmp .Lx86_64
.Lx86_65:
 lea rcx, [rbp + 1152]
.Lx86_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx86_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx86_69
 cmp esi, 1
 jne .Lx86_70
 mov rcx, rax
 jmp .Lx86_68
.Lx86_70:
 cmp esi, 2
 jne .Lx86_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx86_69
 mov rcx, rax
 jmp .Lx86_68
.Lx86_71:
 cmp eax, 13
 jne .Lx86_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx86_69
 cmp rax, rcx
 je .Lx86_69
 mov rcx, rax
 jmp .Lx86_68
.Lx86_69:
 cmp r9, rcx
 je .Lx86_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx86_75
 cmp eax, 99
 je .Lx86_75
 cmp eax, 13
 jne .Lx86_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx86_75
 jmp .Lx86_72
.Lx86_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx86_76
 cmp eax, 99
 je .Lx86_76
 cmp eax, 13
 jne .Lx86_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx86_76
 jmp .Lx86_72
.Lx86_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx86_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx86_72
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
 jmp .Lx86_77
.Lx86_80:
# PL-SINK-3 inline $unify_lst WRITE mode: carve 2 kids off the PLJ frontier, join unbound args, bind subject to the './2 cell
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx86_72
 lea r10, [rip + g_hp_fr]
 mov eax, dword ptr [r10 + 24]
 test eax, eax
 je .Lx86_72
 mov r11, qword ptr [r10 + 0]
 mov rax, qword ptr [r10 + 8]
 sub rax, 48
 cmp r11, rax
 ja .Lx86_72
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx86_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 72
 cmp rsi, rax
 ja .Lx86_72
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
 lea r9, [rbp + 1136]
.Lx86_81:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx86_84
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx86_82
 cmp esi, 1
 jne .Lx86_83
 mov r9, rax
 jmp .Lx86_81
.Lx86_83:
 cmp esi, 2
 jne .Lx86_82
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx86_82
 mov r9, rax
 jmp .Lx86_81
.Lx86_84:
 cmp eax, 13
 jne .Lx86_82
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx86_82
 cmp rax, r9
 je .Lx86_82
 mov r9, rax
 jmp .Lx86_81
.Lx86_82:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx86_85
 cmp eax, 99
 je .Lx86_85
 cmp eax, 13
 jne .Lx86_86
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx86_85
 jmp .Lx86_86
.Lx86_85:
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
 jmp .Lx86_87
.Lx86_86:
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [rdx + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [rdx + 8], rax
.Lx86_87:
 lea rcx, [rbp + 1152]
.Lx86_88:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx86_91
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx86_89
 cmp esi, 1
 jne .Lx86_90
 mov rcx, rax
 jmp .Lx86_88
.Lx86_90:
 cmp esi, 2
 jne .Lx86_89
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx86_89
 mov rcx, rax
 jmp .Lx86_88
.Lx86_91:
 cmp eax, 13
 jne .Lx86_89
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx86_89
 cmp rax, rcx
 je .Lx86_89
 mov rcx, rax
 jmp .Lx86_88
.Lx86_89:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx86_92
 cmp eax, 99
 je .Lx86_92
 cmp eax, 13
 jne .Lx86_93
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx86_92
 jmp .Lx86_93
.Lx86_92:
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
 jmp .Lx86_94
.Lx86_93:
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rdx + 16], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [rdx + 24], rax
.Lx86_94:
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
 jmp .Lx86_77
.Lx86_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx86_77
.Lx86_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx86_77:
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n59_α
 xchain0_n56_β:
 jmp xchain0_n28_α
# IR_VAR_REF
 xchain0_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain0_n60_α
# IR_VAR_REF
 xchain0_n58_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2912]
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain0_n61_α
# IR_VAR_REF
 xchain0_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2912]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain0_n62_α
# IR_LIT_STRING
 xchain0_n60_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx93_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain0_n63_α
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
 .string "[]"
# IR_VAR_REF
 xchain0_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2928]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain0_n64_α
# IR_VAR_REF
 xchain0_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2928]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain0_n65_α
 xchain0_n63_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+208]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 208]
 mov rsi, qword ptr [rip + .Lx98_2]
 jmp .Lx98_3
.Lx98_2:
 .quad .Lx98_2_s
.Lx98_2_s:
 .string "[]"
.Lx98_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n66_α
 xchain0_n63_β:
 jmp xchain0_n30_α
# IR_VAR_REF
 xchain0_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2960]
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain0_n67_α
# IR_VAR_REF
 xchain0_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2944]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain0_n68_α
# IR_SUSPEND yield+resume
 xchain0_n66_α:
 lea rax, [rip + xchain0_n66_β]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_partition$2F4_γ
 xchain0_n66_β:
 jmp xchain0_n30_α
# IR_VAR_REF
 xchain0_n67_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2976]
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain0_n69_α
# IR_VAR_REF
 xchain0_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2960]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain0_n70_α
 xchain0_n69_α:
 mov qword ptr [rbp + 1888], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx110_20
 mov rax, qword ptr [rbp + 1920]
 mov rdx, qword ptr [rbp + 1928]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx110_21
.Lx110_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1920]
 mov rdx, qword ptr [rbp + 1928]
 call rt_arg_stage@PLT
.Lx110_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx110_22
 mov rax, qword ptr [rbp + 1952]
 mov rdx, qword ptr [rbp + 1960]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx110_23
.Lx110_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 1952]
 mov rdx, qword ptr [rbp + 1960]
 call rt_arg_stage@PLT
.Lx110_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx110_24
 mov rax, qword ptr [rbp + 1984]
 mov rdx, qword ptr [rbp + 1992]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx110_25
.Lx110_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 1984]
 mov rdx, qword ptr [rbp + 1992]
 call rt_arg_stage@PLT
.Lx110_25:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx110_26
 mov rax, qword ptr [rbp + 2016]
 mov rdx, qword ptr [rbp + 2024]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 48], rax
 mov qword ptr [r10 + 56], rdx
 jmp .Lx110_27
.Lx110_26:
 mov edi, 3
 mov rsi, qword ptr [rbp + 2016]
 mov rdx, qword ptr [rbp + 2024]
 call rt_arg_stage@PLT
.Lx110_27:
 mov edi, 0
 mov esi, 4
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx110_1
 lea rcx, [rip + .Lx110_3]
 lea rdx, [rip + .Lx110_4]
 jmp rax
.Lx110_3:
 mov qword ptr [rbp + 1896], rsp
 mov rax, qword ptr [rbp + 1888]
 test rax, rax
 jne .Lx110_5
 mov qword ptr [rbp + 1888], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx110_2
.Lx110_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx110_2
.Lx110_4:
 mov rax, qword ptr [rbp + 1888]
 test rax, rax
 jne .Lx110_6
 mov qword ptr [rbp + 1888], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx110_2
.Lx110_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx110_2
.Lx110_1:
 call rt_faildescr@PLT
.Lx110_2:
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n71_α
 xchain0_n69_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1896]
 jmp qword ptr [rsp]
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "partition/4"
 xchain0_n70_α:
 mov qword ptr [rbp + 912], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx112_20
 mov rax, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx112_21
.Lx112_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 call rt_arg_stage@PLT
.Lx112_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx112_22
 mov rax, qword ptr [rbp + 976]
 mov rdx, qword ptr [rbp + 984]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx112_23
.Lx112_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 976]
 mov rdx, qword ptr [rbp + 984]
 call rt_arg_stage@PLT
.Lx112_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx112_24
 mov rax, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx112_25
.Lx112_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 call rt_arg_stage@PLT
.Lx112_25:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx112_26
 mov rax, qword ptr [rbp + 1040]
 mov rdx, qword ptr [rbp + 1048]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 48], rax
 mov qword ptr [r10 + 56], rdx
 jmp .Lx112_27
.Lx112_26:
 mov edi, 3
 mov rsi, qword ptr [rbp + 1040]
 mov rdx, qword ptr [rbp + 1048]
 call rt_arg_stage@PLT
.Lx112_27:
 mov edi, 0
 mov esi, 4
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx112_1
 lea rcx, [rip + .Lx112_3]
 lea rdx, [rip + .Lx112_4]
 jmp rax
.Lx112_3:
 mov qword ptr [rbp + 920], rsp
 mov rax, qword ptr [rbp + 912]
 test rax, rax
 jne .Lx112_5
 mov qword ptr [rbp + 912], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx112_2
.Lx112_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx112_2
.Lx112_4:
 mov rax, qword ptr [rbp + 912]
 test rax, rax
 jne .Lx112_6
 mov qword ptr [rbp + 912], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx112_2
.Lx112_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx112_2
.Lx112_1:
 call rt_faildescr@PLT
.Lx112_2:
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n72_α
 xchain0_n70_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 920]
 jmp qword ptr [rsp]
.Lx112_0:
 .quad .Lx112_0_s
.Lx112_0_s:
 .string "partition/4"
# IR_SUSPEND yield+resume
 xchain0_n71_α:
 lea rax, [rip + xchain0_n71_β]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_partition$2F4_γ
 xchain0_n71_β:
 jmp xchain0_n69_β
# IR_SUSPEND yield+resume
 xchain0_n72_α:
 lea rax, [rip + xchain0_n72_β]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_partition$2F4_γ
 xchain0_n72_β:
 jmp xchain0_n70_β
proc_partition$2F4_res:
add rsp, 8
pop rbp
proc_partition$2F4_β:
jmp qword ptr [rbp + 2864]
proc_partition$2F4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_partition$2F4_res]
push rax
mov rax, [rbp + 3000]
mov rbp, [rbp + 3016]
jmp rax
proc_partition$2F4_ω:
mov rax, [rbp + 3008]
lea rsp, [rbp + 3024]
mov rbp, [rbp + 3016]
jmp rax
  .globl proc_qsort$2F3_α
proc_qsort$2F3_α:
#=======================================================================================================================
    .global proc_qsort$2F3_α
    .global proc_qsort$2F3_β
    .global proc_qsort$2F3_γ
    .global proc_qsort$2F3_ω
  sub rsp, 2192
  mov [rsp + 2168], rcx
  mov [rsp + 2176], rdx
  mov [rsp + 2184], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2040], rsp
  mov rdi, rsp
  mov esi, 2016
  mov edx, 2160
  call rt_jmp_frame_lexprep2@PLT
proc_qsort$2F3_α_body:
lea rax, [rip + xchain117_n34_β]
mov qword ptr [rbp + 2016], rax
 xchain117_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx118_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx118_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx118_101
.Lx118_100:
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx118_101:
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_qsort$2F3_ω
 jmp xchain117_n1_α
 xchain117_n0_β:
 jmp proc_qsort$2F3_ω
# IR_VAR_REF
 xchain117_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain117_n2_α
# IR_LIT_INTEGER
 xchain117_n2_α:
 mov qword ptr [rbp + 1952], 6
 mov rax, qword ptr [rip + .Lx121_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain117_n3_α
.Lx121_0:
 .quad 3
# IR_LIT_INTEGER
 xchain117_n3_α:
 mov qword ptr [rbp + 1984], 6
 mov rax, qword ptr [rip + .Lx122_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain117_n4_α
.Lx122_0:
 .quad 0
 xchain117_n4_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1872]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je xchain117_n6_α
 jmp xchain117_n5_α
 xchain117_n4_β:
 jmp xchain117_n6_α
# IR_VAR_REF
 xchain117_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain117_n7_α
# IR_VAR_REF
 xchain117_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain117_n8_α
# IR_VAR_REF
 xchain117_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain117_n9_α
# IR_LIT_INTEGER
 xchain117_n8_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain117_n10_α
.Lx130_0:
 .quad 2
# IR_VAR_REF
 xchain117_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2144]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain117_n11_α
# IR_LIT_STRING
 xchain117_n10_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx133_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain117_n12_α
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "[]"
 xchain117_n11_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1744]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1752], rax
# marshal arg1 = producer-box slot [zr+1792] -> [zr+1760]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1768], rax
# marshal arg2 = producer-box slot [zr+1824] -> [zr+1776]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1784], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1744]
 lea r8, [rbp + 1744]
.Lx134_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx134_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx134_61
 cmp esi, 1
 jne .Lx134_62
 mov r8, rax
 jmp .Lx134_60
.Lx134_62:
 cmp esi, 2
 jne .Lx134_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx134_61
 mov r8, rax
 jmp .Lx134_60
.Lx134_63:
 cmp eax, 13
 jne .Lx134_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx134_61
 cmp rax, r8
 je .Lx134_61
 mov r8, rax
 jmp .Lx134_60
.Lx134_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx134_80
 cmp eax, 99
 je .Lx134_80
 cmp eax, 13
 jne .Lx134_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx134_80
 jmp .Lx134_74
.Lx134_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx134_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx134_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx134_73
 lea r9, [rbp + 1760]
.Lx134_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx134_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx134_65
 cmp esi, 1
 jne .Lx134_66
 mov r9, rax
 jmp .Lx134_64
.Lx134_66:
 cmp esi, 2
 jne .Lx134_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx134_65
 mov r9, rax
 jmp .Lx134_64
.Lx134_67:
 cmp eax, 13
 jne .Lx134_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx134_65
 cmp rax, r9
 je .Lx134_65
 mov r9, rax
 jmp .Lx134_64
.Lx134_65:
 lea rcx, [rbp + 1776]
.Lx134_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx134_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx134_69
 cmp esi, 1
 jne .Lx134_70
 mov rcx, rax
 jmp .Lx134_68
.Lx134_70:
 cmp esi, 2
 jne .Lx134_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx134_69
 mov rcx, rax
 jmp .Lx134_68
.Lx134_71:
 cmp eax, 13
 jne .Lx134_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx134_69
 cmp rax, rcx
 je .Lx134_69
 mov rcx, rax
 jmp .Lx134_68
.Lx134_69:
 cmp r9, rcx
 je .Lx134_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx134_75
 cmp eax, 99
 je .Lx134_75
 cmp eax, 13
 jne .Lx134_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx134_75
 jmp .Lx134_72
.Lx134_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx134_76
 cmp eax, 99
 je .Lx134_76
 cmp eax, 13
 jne .Lx134_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx134_76
 jmp .Lx134_72
.Lx134_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx134_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx134_72
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
 jmp .Lx134_77
.Lx134_80:
# PL-SINK-3 inline $unify_lst WRITE mode: carve 2 kids off the PLJ frontier, join unbound args, bind subject to the './2 cell
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx134_72
 lea r10, [rip + g_hp_fr]
 mov eax, dword ptr [r10 + 24]
 test eax, eax
 je .Lx134_72
 mov r11, qword ptr [r10 + 0]
 mov rax, qword ptr [r10 + 8]
 sub rax, 48
 cmp r11, rax
 ja .Lx134_72
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx134_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 72
 cmp rsi, rax
 ja .Lx134_72
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
 lea r9, [rbp + 1760]
.Lx134_81:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx134_84
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx134_82
 cmp esi, 1
 jne .Lx134_83
 mov r9, rax
 jmp .Lx134_81
.Lx134_83:
 cmp esi, 2
 jne .Lx134_82
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx134_82
 mov r9, rax
 jmp .Lx134_81
.Lx134_84:
 cmp eax, 13
 jne .Lx134_82
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx134_82
 cmp rax, r9
 je .Lx134_82
 mov r9, rax
 jmp .Lx134_81
.Lx134_82:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx134_85
 cmp eax, 99
 je .Lx134_85
 cmp eax, 13
 jne .Lx134_86
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx134_85
 jmp .Lx134_86
.Lx134_85:
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
 jmp .Lx134_87
.Lx134_86:
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [rdx + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [rdx + 8], rax
.Lx134_87:
 lea rcx, [rbp + 1776]
.Lx134_88:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx134_91
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx134_89
 cmp esi, 1
 jne .Lx134_90
 mov rcx, rax
 jmp .Lx134_88
.Lx134_90:
 cmp esi, 2
 jne .Lx134_89
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx134_89
 mov rcx, rax
 jmp .Lx134_88
.Lx134_91:
 cmp eax, 13
 jne .Lx134_89
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx134_89
 cmp rax, rcx
 je .Lx134_89
 mov rcx, rax
 jmp .Lx134_88
.Lx134_89:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx134_92
 cmp eax, 99
 je .Lx134_92
 cmp eax, 13
 jne .Lx134_93
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx134_92
 jmp .Lx134_93
.Lx134_92:
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
 jmp .Lx134_94
.Lx134_93:
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rdx + 16], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [rdx + 24], rax
.Lx134_94:
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
 jmp .Lx134_77
.Lx134_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx134_77
.Lx134_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx134_77:
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain117_n14_α
 jmp xchain117_n13_α
 xchain117_n11_β:
 jmp xchain117_n14_α
 xchain117_n12_α:
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
 je xchain117_n16_α
 jmp xchain117_n15_α
 xchain117_n12_β:
 jmp xchain117_n16_α
# IR_VAR_REF
 xchain117_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain117_n17_α
 xchain117_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+688]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 688]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je proc_qsort$2F3_ω
 jmp xchain117_n6_α
 xchain117_n14_β:
 jmp proc_qsort$2F3_ω
# IR_VAR_REF
 xchain117_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain117_n18_α
 xchain117_n16_α:
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
 je proc_qsort$2F3_ω
 jmp proc_qsort$2F3_ω
 xchain117_n16_β:
 jmp proc_qsort$2F3_ω
# IR_VAR_REF
 xchain117_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2048]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain117_n19_α
# IR_LIT_STRING
 xchain117_n18_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain117_n20_α
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string "[]"
 xchain117_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1632] -> [zr+1600]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1608], rax
# marshal arg1 = producer-box slot [zr+1664] -> [zr+1616]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1624], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1600]
 lea r8, [rbp + 1600]
.Lx145_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx145_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx145_41
 cmp esi, 1
 jne .Lx145_55
 mov r8, rax
 jmp .Lx145_40
.Lx145_55:
 cmp esi, 2
 jne .Lx145_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx145_41
 mov r8, rax
 jmp .Lx145_40
.Lx145_56:
 cmp eax, 13
 jne .Lx145_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx145_41
 cmp rax, r8
 je .Lx145_41
 mov r8, rax
 jmp .Lx145_40
.Lx145_41:
 lea r9, [rbp + 1616]
.Lx145_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx145_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx145_43
 cmp esi, 1
 jne .Lx145_57
 mov r9, rax
 jmp .Lx145_42
.Lx145_57:
 cmp esi, 2
 jne .Lx145_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx145_43
 mov r9, rax
 jmp .Lx145_42
.Lx145_58:
 cmp eax, 13
 jne .Lx145_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx145_43
 cmp rax, r9
 je .Lx145_43
 mov r9, rax
 jmp .Lx145_42
.Lx145_43:
 cmp r8, r9
 je .Lx145_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx145_44
 cmp eax, 99
 je .Lx145_44
 cmp eax, 13
 jne .Lx145_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx145_44
 jmp .Lx145_45
.Lx145_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx145_53
 cmp eax, 99
 je .Lx145_53
 cmp eax, 13
 jne .Lx145_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx145_53
 jmp .Lx145_46
.Lx145_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx145_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx145_53
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
 jmp .Lx145_51
.Lx145_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx145_47
 cmp eax, 99
 je .Lx145_47
 cmp eax, 13
 jne .Lx145_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx145_47
 jmp .Lx145_48
.Lx145_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx145_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx145_53
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
 jmp .Lx145_51
.Lx145_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx145_49
 cmp edx, 14
 je .Lx145_53
 jmp .Lx145_52
.Lx145_49:
 cmp edx, 14
 je .Lx145_52
 cmp ecx, 7
 je .Lx145_53
 cmp edx, 7
 je .Lx145_53
 cmp ecx, 6
 jne .Lx145_50
 cmp edx, 6
 jne .Lx145_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx145_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx145_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx145_51
 jmp .Lx145_52
.Lx145_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx145_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx145_53
.Lx145_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx145_54
.Lx145_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx145_54
.Lx145_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx145_54:
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je xchain117_n14_α
 jmp xchain117_n21_α
 xchain117_n19_β:
 jmp xchain117_n14_α
 xchain117_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 416]
 mov rsi, qword ptr [rip + .Lx146_2]
 jmp .Lx146_3
.Lx146_2:
 .quad .Lx146_2_s
.Lx146_2_s:
 .string "[]"
.Lx146_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain117_n16_α
 jmp xchain117_n22_α
 xchain117_n20_β:
 jmp xchain117_n16_α
# IR_VAR_REF
 xchain117_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain117_n23_α
# IR_VAR_REF
 xchain117_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain117_n24_α
# IR_VAR_REF
 xchain117_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain117_n25_α
# IR_VAR_REF
 xchain117_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2048]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain117_n26_α
 xchain117_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1488]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1496], rax
# marshal arg1 = producer-box slot [zr+1552] -> [zr+1504]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1512], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1488]
 lea r8, [rbp + 1488]
.Lx155_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx155_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx155_41
 cmp esi, 1
 jne .Lx155_55
 mov r8, rax
 jmp .Lx155_40
.Lx155_55:
 cmp esi, 2
 jne .Lx155_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx155_41
 mov r8, rax
 jmp .Lx155_40
.Lx155_56:
 cmp eax, 13
 jne .Lx155_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx155_41
 cmp rax, r8
 je .Lx155_41
 mov r8, rax
 jmp .Lx155_40
.Lx155_41:
 lea r9, [rbp + 1504]
.Lx155_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx155_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx155_43
 cmp esi, 1
 jne .Lx155_57
 mov r9, rax
 jmp .Lx155_42
.Lx155_57:
 cmp esi, 2
 jne .Lx155_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx155_43
 mov r9, rax
 jmp .Lx155_42
.Lx155_58:
 cmp eax, 13
 jne .Lx155_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx155_43
 cmp rax, r9
 je .Lx155_43
 mov r9, rax
 jmp .Lx155_42
.Lx155_43:
 cmp r8, r9
 je .Lx155_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx155_44
 cmp eax, 99
 je .Lx155_44
 cmp eax, 13
 jne .Lx155_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx155_44
 jmp .Lx155_45
.Lx155_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx155_53
 cmp eax, 99
 je .Lx155_53
 cmp eax, 13
 jne .Lx155_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx155_53
 jmp .Lx155_46
.Lx155_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx155_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx155_53
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
 jmp .Lx155_51
.Lx155_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx155_47
 cmp eax, 99
 je .Lx155_47
 cmp eax, 13
 jne .Lx155_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx155_47
 jmp .Lx155_48
.Lx155_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx155_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx155_53
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
 jmp .Lx155_51
.Lx155_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx155_49
 cmp edx, 14
 je .Lx155_53
 jmp .Lx155_52
.Lx155_49:
 cmp edx, 14
 je .Lx155_52
 cmp ecx, 7
 je .Lx155_53
 cmp edx, 7
 je .Lx155_53
 cmp ecx, 6
 jne .Lx155_50
 cmp edx, 6
 jne .Lx155_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx155_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx155_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx155_51
 jmp .Lx155_52
.Lx155_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx155_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx155_53
.Lx155_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx155_54
.Lx155_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx155_54
.Lx155_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx155_54:
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain117_n14_α
 jmp xchain117_n27_α
 xchain117_n25_β:
 jmp xchain117_n14_α
 xchain117_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 328], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 304]
 lea r8, [rbp + 304]
.Lx156_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx156_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx156_41
 cmp esi, 1
 jne .Lx156_55
 mov r8, rax
 jmp .Lx156_40
.Lx156_55:
 cmp esi, 2
 jne .Lx156_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx156_41
 mov r8, rax
 jmp .Lx156_40
.Lx156_56:
 cmp eax, 13
 jne .Lx156_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx156_41
 cmp rax, r8
 je .Lx156_41
 mov r8, rax
 jmp .Lx156_40
.Lx156_41:
 lea r9, [rbp + 320]
.Lx156_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx156_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx156_43
 cmp esi, 1
 jne .Lx156_57
 mov r9, rax
 jmp .Lx156_42
.Lx156_57:
 cmp esi, 2
 jne .Lx156_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx156_43
 mov r9, rax
 jmp .Lx156_42
.Lx156_58:
 cmp eax, 13
 jne .Lx156_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx156_43
 cmp rax, r9
 je .Lx156_43
 mov r9, rax
 jmp .Lx156_42
.Lx156_43:
 cmp r8, r9
 je .Lx156_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx156_44
 cmp eax, 99
 je .Lx156_44
 cmp eax, 13
 jne .Lx156_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx156_44
 jmp .Lx156_45
.Lx156_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx156_53
 cmp eax, 99
 je .Lx156_53
 cmp eax, 13
 jne .Lx156_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx156_53
 jmp .Lx156_46
.Lx156_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx156_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx156_53
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
 jmp .Lx156_51
.Lx156_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx156_47
 cmp eax, 99
 je .Lx156_47
 cmp eax, 13
 jne .Lx156_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx156_47
 jmp .Lx156_48
.Lx156_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx156_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx156_53
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
 jmp .Lx156_51
.Lx156_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx156_49
 cmp edx, 14
 je .Lx156_53
 jmp .Lx156_52
.Lx156_49:
 cmp edx, 14
 je .Lx156_52
 cmp ecx, 7
 je .Lx156_53
 cmp edx, 7
 je .Lx156_53
 cmp ecx, 6
 jne .Lx156_50
 cmp edx, 6
 jne .Lx156_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx156_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx156_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx156_51
 jmp .Lx156_52
.Lx156_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx156_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx156_53
.Lx156_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx156_54
.Lx156_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx156_54
.Lx156_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx156_54:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain117_n16_α
 jmp xchain117_n28_α
 xchain117_n26_β:
 jmp xchain117_n16_α
# IR_VAR_REF
 xchain117_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2144]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain117_n29_α
# IR_VAR_REF
 xchain117_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain117_n30_α
# IR_VAR_REF
 xchain117_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain117_n31_α
# IR_VAR_REF
 xchain117_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2048]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain117_n32_α
# IR_VAR_REF
 xchain117_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2064]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain117_n33_α
 xchain117_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+208]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 216], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 192]
 lea r8, [rbp + 192]
.Lx167_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx167_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx167_41
 cmp esi, 1
 jne .Lx167_55
 mov r8, rax
 jmp .Lx167_40
.Lx167_55:
 cmp esi, 2
 jne .Lx167_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx167_41
 mov r8, rax
 jmp .Lx167_40
.Lx167_56:
 cmp eax, 13
 jne .Lx167_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx167_41
 cmp rax, r8
 je .Lx167_41
 mov r8, rax
 jmp .Lx167_40
.Lx167_41:
 lea r9, [rbp + 208]
.Lx167_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx167_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx167_43
 cmp esi, 1
 jne .Lx167_57
 mov r9, rax
 jmp .Lx167_42
.Lx167_57:
 cmp esi, 2
 jne .Lx167_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx167_43
 mov r9, rax
 jmp .Lx167_42
.Lx167_58:
 cmp eax, 13
 jne .Lx167_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx167_43
 cmp rax, r9
 je .Lx167_43
 mov r9, rax
 jmp .Lx167_42
.Lx167_43:
 cmp r8, r9
 je .Lx167_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx167_44
 cmp eax, 99
 je .Lx167_44
 cmp eax, 13
 jne .Lx167_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx167_44
 jmp .Lx167_45
.Lx167_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx167_53
 cmp eax, 99
 je .Lx167_53
 cmp eax, 13
 jne .Lx167_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx167_53
 jmp .Lx167_46
.Lx167_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx167_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx167_53
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
 jmp .Lx167_51
.Lx167_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx167_47
 cmp eax, 99
 je .Lx167_47
 cmp eax, 13
 jne .Lx167_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx167_47
 jmp .Lx167_48
.Lx167_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx167_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx167_53
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
 jmp .Lx167_51
.Lx167_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx167_49
 cmp edx, 14
 je .Lx167_53
 jmp .Lx167_52
.Lx167_49:
 cmp edx, 14
 je .Lx167_52
 cmp ecx, 7
 je .Lx167_53
 cmp edx, 7
 je .Lx167_53
 cmp ecx, 6
 jne .Lx167_50
 cmp edx, 6
 jne .Lx167_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx167_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx167_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx167_51
 jmp .Lx167_52
.Lx167_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx167_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx167_53
.Lx167_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx167_54
.Lx167_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx167_54
.Lx167_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx167_54:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain117_n16_α
 jmp xchain117_n34_α
 xchain117_n32_β:
 jmp xchain117_n16_α
# IR_VAR_REF
 xchain117_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain117_n35_α
# IR_SUSPEND yield+resume
 xchain117_n34_α:
 lea rax, [rip + xchain117_n34_β]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_qsort$2F3_γ
 xchain117_n34_β:
 jmp xchain117_n16_α
 xchain117_n35_α:
 mov qword ptr [rbp + 1312], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx173_20
 mov rax, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx173_21
.Lx173_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 call rt_arg_stage@PLT
.Lx173_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx173_22
 mov rax, qword ptr [rbp + 1376]
 mov rdx, qword ptr [rbp + 1384]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx173_23
.Lx173_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 1376]
 mov rdx, qword ptr [rbp + 1384]
 call rt_arg_stage@PLT
.Lx173_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx173_24
 mov rax, qword ptr [rbp + 1408]
 mov rdx, qword ptr [rbp + 1416]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx173_25
.Lx173_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 1408]
 mov rdx, qword ptr [rbp + 1416]
 call rt_arg_stage@PLT
.Lx173_25:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx173_26
 mov rax, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 48], rax
 mov qword ptr [r10 + 56], rdx
 jmp .Lx173_27
.Lx173_26:
 mov edi, 3
 mov rsi, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 call rt_arg_stage@PLT
.Lx173_27:
 mov edi, 0
 mov esi, 4
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx173_1
 lea rcx, [rip + .Lx173_3]
 lea rdx, [rip + .Lx173_4]
 jmp rax
.Lx173_3:
 mov qword ptr [rbp + 1320], rsp
 mov rax, qword ptr [rbp + 1312]
 test rax, rax
 jne .Lx173_5
 mov qword ptr [rbp + 1312], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx173_2
.Lx173_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx173_2
.Lx173_4:
 mov rax, qword ptr [rbp + 1312]
 test rax, rax
 jne .Lx173_6
 mov qword ptr [rbp + 1312], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx173_2
.Lx173_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx173_2
.Lx173_1:
 call rt_faildescr@PLT
.Lx173_2:
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain117_n14_α
 jmp xchain117_n36_α
 xchain117_n35_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1320]
 jmp qword ptr [rsp]
.Lx173_0:
 .quad .Lx173_0_s
.Lx173_0_s:
 .string "partition/4"
# IR_VAR_REF
 xchain117_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain117_n37_α
# IR_VAR_REF
 xchain117_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2080]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain117_n38_α
# IR_VAR_REF
 xchain117_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain117_n39_α
 xchain117_n39_α:
 mov qword ptr [rbp + 1104], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx181_20
 mov rax, qword ptr [rbp + 1136]
 mov rdx, qword ptr [rbp + 1144]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx181_21
.Lx181_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1136]
 mov rdx, qword ptr [rbp + 1144]
 call rt_arg_stage@PLT
.Lx181_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx181_22
 mov rax, qword ptr [rbp + 1168]
 mov rdx, qword ptr [rbp + 1176]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx181_23
.Lx181_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 1168]
 mov rdx, qword ptr [rbp + 1176]
 call rt_arg_stage@PLT
.Lx181_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx181_24
 mov rax, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx181_25
.Lx181_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 call rt_arg_stage@PLT
.Lx181_25:
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx181_1
 lea rcx, [rip + .Lx181_3]
 lea rdx, [rip + .Lx181_4]
 jmp rax
.Lx181_3:
 mov qword ptr [rbp + 1112], rsp
 mov rax, qword ptr [rbp + 1104]
 test rax, rax
 jne .Lx181_5
 mov qword ptr [rbp + 1104], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx181_2
.Lx181_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx181_2
.Lx181_4:
 mov rax, qword ptr [rbp + 1104]
 test rax, rax
 jne .Lx181_6
 mov qword ptr [rbp + 1104], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx181_2
.Lx181_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx181_2
.Lx181_1:
 call rt_faildescr@PLT
.Lx181_2:
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain117_n35_β
 jmp xchain117_n40_α
 xchain117_n39_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1112]
 jmp qword ptr [rsp]
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "qsort/3"
# IR_VAR_REF
 xchain117_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2064]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain117_n41_α
# IR_VAR_REF
 xchain117_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2048]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain117_n42_α
# IR_LIT_STRING
 xchain117_n42_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain117_n43_α
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "."
# IR_VAR_REF
 xchain117_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain117_n44_α
# IR_VAR_REF
 xchain117_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2080]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain117_n45_α
 xchain117_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+944]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+960]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 968], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+976]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain117_n14_α
 jmp xchain117_n46_α
 xchain117_n45_β:
 jmp xchain117_n14_α
 xchain117_n46_α:
 mov qword ptr [rbp + 768], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx193_20
 mov rax, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx193_21
.Lx193_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 call rt_arg_stage@PLT
.Lx193_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx193_22
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx193_23
.Lx193_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 call rt_arg_stage@PLT
.Lx193_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx193_24
 mov rax, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx193_25
.Lx193_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 call rt_arg_stage@PLT
.Lx193_25:
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx193_1
 lea rcx, [rip + .Lx193_3]
 lea rdx, [rip + .Lx193_4]
 jmp rax
.Lx193_3:
 mov qword ptr [rbp + 776], rsp
 mov rax, qword ptr [rbp + 768]
 test rax, rax
 jne .Lx193_5
 mov qword ptr [rbp + 768], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx193_2
.Lx193_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx193_2
.Lx193_4:
 mov rax, qword ptr [rbp + 768]
 test rax, rax
 jne .Lx193_6
 mov qword ptr [rbp + 768], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx193_2
.Lx193_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx193_2
.Lx193_1:
 call rt_faildescr@PLT
.Lx193_2:
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain117_n39_β
 jmp xchain117_n47_α
 xchain117_n46_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 776]
 jmp qword ptr [rsp]
.Lx193_0:
 .quad .Lx193_0_s
.Lx193_0_s:
 .string "qsort/3"
# IR_SUSPEND yield+resume
 xchain117_n47_α:
 lea rax, [rip + xchain117_n47_β]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_qsort$2F3_γ
 xchain117_n47_β:
 jmp xchain117_n46_β
proc_qsort$2F3_res:
add rsp, 8
pop rbp
proc_qsort$2F3_β:
jmp qword ptr [rbp + 2016]
proc_qsort$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_qsort$2F3_res]
push rax
mov rax, [rbp + 2168]
mov rbp, [rbp + 2184]
jmp rax
proc_qsort$2F3_ω:
mov rax, [rbp + 2176]
lea rsp, [rbp + 2192]
mov rbp, [rbp + 2184]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "partition/4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_partition$2F4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2992
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "qsort/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_qsort$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2160
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
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
  mov qword ptr [rsp + 7640], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain196_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx197_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx197_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx197_101
.Lx197_100:
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx197_101:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n1_α
 xchain196_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain196_n1_α:
 mov qword ptr [rbp + 7536], 1
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [rbp + 7544], rax
 jmp xchain196_n2_α
.Lx198_0:
 .quad .Lx198_0_s
.Lx198_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n2_α:
 mov qword ptr [rbp + 7424], 6
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [rbp + 7432], rax
 jmp xchain196_n3_α
.Lx199_0:
 .quad 27
# IR_LIT_STRING
 xchain196_n3_α:
 mov qword ptr [rbp + 7392], 1
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [rbp + 7400], rax
 jmp xchain196_n4_α
.Lx200_0:
 .quad .Lx200_0_s
.Lx200_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n4_α:
 mov qword ptr [rbp + 7280], 6
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 7288], rax
 jmp xchain196_n5_α
.Lx201_0:
 .quad 74
# IR_LIT_STRING
 xchain196_n5_α:
 mov qword ptr [rbp + 7248], 1
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [rbp + 7256], rax
 jmp xchain196_n6_α
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n6_α:
 mov qword ptr [rbp + 7136], 6
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [rbp + 7144], rax
 jmp xchain196_n7_α
.Lx203_0:
 .quad 17
# IR_LIT_STRING
 xchain196_n7_α:
 mov qword ptr [rbp + 7104], 1
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 7112], rax
 jmp xchain196_n8_α
.Lx204_0:
 .quad .Lx204_0_s
.Lx204_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n8_α:
 mov qword ptr [rbp + 6992], 6
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [rbp + 7000], rax
 jmp xchain196_n9_α
.Lx205_0:
 .quad 33
# IR_LIT_STRING
 xchain196_n9_α:
 mov qword ptr [rbp + 6960], 1
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 6968], rax
 jmp xchain196_n10_α
.Lx206_0:
 .quad .Lx206_0_s
.Lx206_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n10_α:
 mov qword ptr [rbp + 6848], 6
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 6856], rax
 jmp xchain196_n11_α
.Lx207_0:
 .quad 94
# IR_LIT_STRING
 xchain196_n11_α:
 mov qword ptr [rbp + 6816], 1
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [rbp + 6824], rax
 jmp xchain196_n12_α
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n12_α:
 mov qword ptr [rbp + 6704], 6
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [rbp + 6712], rax
 jmp xchain196_n13_α
.Lx209_0:
 .quad 18
# IR_LIT_STRING
 xchain196_n13_α:
 mov qword ptr [rbp + 6672], 1
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [rbp + 6680], rax
 jmp xchain196_n14_α
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n14_α:
 mov qword ptr [rbp + 6560], 6
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 6568], rax
 jmp xchain196_n15_α
.Lx211_0:
 .quad 46
# IR_LIT_STRING
 xchain196_n15_α:
 mov qword ptr [rbp + 6528], 1
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 6536], rax
 jmp xchain196_n16_α
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n16_α:
 mov qword ptr [rbp + 6416], 6
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [rbp + 6424], rax
 jmp xchain196_n17_α
.Lx213_0:
 .quad 83
# IR_LIT_STRING
 xchain196_n17_α:
 mov qword ptr [rbp + 6384], 1
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [rbp + 6392], rax
 jmp xchain196_n18_α
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n18_α:
 mov qword ptr [rbp + 6272], 6
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [rbp + 6280], rax
 jmp xchain196_n19_α
.Lx215_0:
 .quad 65
# IR_LIT_STRING
 xchain196_n19_α:
 mov qword ptr [rbp + 6240], 1
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 6248], rax
 jmp xchain196_n20_α
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n20_α:
 mov qword ptr [rbp + 6128], 6
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [rbp + 6136], rax
 jmp xchain196_n21_α
.Lx217_0:
 .quad 2
# IR_LIT_STRING
 xchain196_n21_α:
 mov qword ptr [rbp + 6096], 1
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [rbp + 6104], rax
 jmp xchain196_n22_α
.Lx218_0:
 .quad .Lx218_0_s
.Lx218_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n22_α:
 mov qword ptr [rbp + 5984], 6
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [rbp + 5992], rax
 jmp xchain196_n23_α
.Lx219_0:
 .quad 32
# IR_LIT_STRING
 xchain196_n23_α:
 mov qword ptr [rbp + 5952], 1
 mov rax, qword ptr [rip + .Lx220_0]
 mov qword ptr [rbp + 5960], rax
 jmp xchain196_n24_α
.Lx220_0:
 .quad .Lx220_0_s
.Lx220_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n24_α:
 mov qword ptr [rbp + 5840], 6
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 5848], rax
 jmp xchain196_n25_α
.Lx221_0:
 .quad 53
# IR_LIT_STRING
 xchain196_n25_α:
 mov qword ptr [rbp + 5808], 1
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 5816], rax
 jmp xchain196_n26_α
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n26_α:
 mov qword ptr [rbp + 5696], 6
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [rbp + 5704], rax
 jmp xchain196_n27_α
.Lx223_0:
 .quad 28
# IR_LIT_STRING
 xchain196_n27_α:
 mov qword ptr [rbp + 5664], 1
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [rbp + 5672], rax
 jmp xchain196_n28_α
.Lx224_0:
 .quad .Lx224_0_s
.Lx224_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n28_α:
 mov qword ptr [rbp + 5552], 6
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [rbp + 5560], rax
 jmp xchain196_n29_α
.Lx225_0:
 .quad 85
# IR_LIT_STRING
 xchain196_n29_α:
 mov qword ptr [rbp + 5520], 1
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [rbp + 5528], rax
 jmp xchain196_n30_α
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n30_α:
 mov qword ptr [rbp + 5408], 6
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 5416], rax
 jmp xchain196_n31_α
.Lx227_0:
 .quad 99
# IR_LIT_STRING
 xchain196_n31_α:
 mov qword ptr [rbp + 5376], 1
 mov rax, qword ptr [rip + .Lx228_0]
 mov qword ptr [rbp + 5384], rax
 jmp xchain196_n32_α
.Lx228_0:
 .quad .Lx228_0_s
.Lx228_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n32_α:
 mov qword ptr [rbp + 5264], 6
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [rbp + 5272], rax
 jmp xchain196_n33_α
.Lx229_0:
 .quad 47
# IR_LIT_STRING
 xchain196_n33_α:
 mov qword ptr [rbp + 5232], 1
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 5240], rax
 jmp xchain196_n34_α
.Lx230_0:
 .quad .Lx230_0_s
.Lx230_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n34_α:
 mov qword ptr [rbp + 5120], 6
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [rbp + 5128], rax
 jmp xchain196_n35_α
.Lx231_0:
 .quad 28
# IR_LIT_STRING
 xchain196_n35_α:
 mov qword ptr [rbp + 5088], 1
 mov rax, qword ptr [rip + .Lx232_0]
 mov qword ptr [rbp + 5096], rax
 jmp xchain196_n36_α
.Lx232_0:
 .quad .Lx232_0_s
.Lx232_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n36_α:
 mov qword ptr [rbp + 4976], 6
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [rbp + 4984], rax
 jmp xchain196_n37_α
.Lx233_0:
 .quad 82
# IR_LIT_STRING
 xchain196_n37_α:
 mov qword ptr [rbp + 4944], 1
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [rbp + 4952], rax
 jmp xchain196_n38_α
.Lx234_0:
 .quad .Lx234_0_s
.Lx234_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n38_α:
 mov qword ptr [rbp + 4832], 6
 mov rax, qword ptr [rip + .Lx235_0]
 mov qword ptr [rbp + 4840], rax
 jmp xchain196_n39_α
.Lx235_0:
 .quad 6
# IR_LIT_STRING
 xchain196_n39_α:
 mov qword ptr [rbp + 4800], 1
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 4808], rax
 jmp xchain196_n40_α
.Lx236_0:
 .quad .Lx236_0_s
.Lx236_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n40_α:
 mov qword ptr [rbp + 4688], 6
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [rbp + 4696], rax
 jmp xchain196_n41_α
.Lx237_0:
 .quad 11
# IR_LIT_STRING
 xchain196_n41_α:
 mov qword ptr [rbp + 4656], 1
 mov rax, qword ptr [rip + .Lx238_0]
 mov qword ptr [rbp + 4664], rax
 jmp xchain196_n42_α
.Lx238_0:
 .quad .Lx238_0_s
.Lx238_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n42_α:
 mov qword ptr [rbp + 4544], 6
 mov rax, qword ptr [rip + .Lx239_0]
 mov qword ptr [rbp + 4552], rax
 jmp xchain196_n43_α
.Lx239_0:
 .quad 55
# IR_LIT_STRING
 xchain196_n43_α:
 mov qword ptr [rbp + 4512], 1
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [rbp + 4520], rax
 jmp xchain196_n44_α
.Lx240_0:
 .quad .Lx240_0_s
.Lx240_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n44_α:
 mov qword ptr [rbp + 4400], 6
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [rbp + 4408], rax
 jmp xchain196_n45_α
.Lx241_0:
 .quad 29
# IR_LIT_STRING
 xchain196_n45_α:
 mov qword ptr [rbp + 4368], 1
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [rbp + 4376], rax
 jmp xchain196_n46_α
.Lx242_0:
 .quad .Lx242_0_s
.Lx242_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n46_α:
 mov qword ptr [rbp + 4256], 6
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 4264], rax
 jmp xchain196_n47_α
.Lx243_0:
 .quad 39
# IR_LIT_STRING
 xchain196_n47_α:
 mov qword ptr [rbp + 4224], 1
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 4232], rax
 jmp xchain196_n48_α
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n48_α:
 mov qword ptr [rbp + 4112], 6
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 4120], rax
 jmp xchain196_n49_α
.Lx245_0:
 .quad 81
# IR_LIT_STRING
 xchain196_n49_α:
 mov qword ptr [rbp + 4080], 1
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [rbp + 4088], rax
 jmp xchain196_n50_α
.Lx246_0:
 .quad .Lx246_0_s
.Lx246_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n50_α:
 mov qword ptr [rbp + 3968], 6
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [rbp + 3976], rax
 jmp xchain196_n51_α
.Lx247_0:
 .quad 90
# IR_LIT_STRING
 xchain196_n51_α:
 mov qword ptr [rbp + 3936], 1
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [rbp + 3944], rax
 jmp xchain196_n52_α
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n52_α:
 mov qword ptr [rbp + 3824], 6
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [rbp + 3832], rax
 jmp xchain196_n53_α
.Lx249_0:
 .quad 37
# IR_LIT_STRING
 xchain196_n53_α:
 mov qword ptr [rbp + 3792], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 3800], rax
 jmp xchain196_n54_α
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n54_α:
 mov qword ptr [rbp + 3680], 6
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain196_n55_α
.Lx251_0:
 .quad 10
# IR_LIT_STRING
 xchain196_n55_α:
 mov qword ptr [rbp + 3648], 1
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 3656], rax
 jmp xchain196_n56_α
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n56_α:
 mov qword ptr [rbp + 3536], 6
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 3544], rax
 jmp xchain196_n57_α
.Lx253_0:
 .quad 0
# IR_LIT_STRING
 xchain196_n57_α:
 mov qword ptr [rbp + 3504], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [rbp + 3512], rax
 jmp xchain196_n58_α
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n58_α:
 mov qword ptr [rbp + 3392], 6
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 3400], rax
 jmp xchain196_n59_α
.Lx255_0:
 .quad 66
# IR_LIT_STRING
 xchain196_n59_α:
 mov qword ptr [rbp + 3360], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 3368], rax
 jmp xchain196_n60_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n60_α:
 mov qword ptr [rbp + 3248], 6
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 3256], rax
 jmp xchain196_n61_α
.Lx257_0:
 .quad 51
# IR_LIT_STRING
 xchain196_n61_α:
 mov qword ptr [rbp + 3216], 1
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [rbp + 3224], rax
 jmp xchain196_n62_α
.Lx258_0:
 .quad .Lx258_0_s
.Lx258_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n62_α:
 mov qword ptr [rbp + 3104], 6
 mov rax, qword ptr [rip + .Lx259_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain196_n63_α
.Lx259_0:
 .quad 7
# IR_LIT_STRING
 xchain196_n63_α:
 mov qword ptr [rbp + 3072], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [rbp + 3080], rax
 jmp xchain196_n64_α
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n64_α:
 mov qword ptr [rbp + 2960], 6
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [rbp + 2968], rax
 jmp xchain196_n65_α
.Lx261_0:
 .quad 21
# IR_LIT_STRING
 xchain196_n65_α:
 mov qword ptr [rbp + 2928], 1
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [rbp + 2936], rax
 jmp xchain196_n66_α
.Lx262_0:
 .quad .Lx262_0_s
.Lx262_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n66_α:
 mov qword ptr [rbp + 2816], 6
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain196_n67_α
.Lx263_0:
 .quad 85
# IR_LIT_STRING
 xchain196_n67_α:
 mov qword ptr [rbp + 2784], 1
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain196_n68_α
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n68_α:
 mov qword ptr [rbp + 2672], 6
 mov rax, qword ptr [rip + .Lx265_0]
 mov qword ptr [rbp + 2680], rax
 jmp xchain196_n69_α
.Lx265_0:
 .quad 27
# IR_LIT_STRING
 xchain196_n69_α:
 mov qword ptr [rbp + 2640], 1
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [rbp + 2648], rax
 jmp xchain196_n70_α
.Lx266_0:
 .quad .Lx266_0_s
.Lx266_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n70_α:
 mov qword ptr [rbp + 2528], 6
 mov rax, qword ptr [rip + .Lx267_0]
 mov qword ptr [rbp + 2536], rax
 jmp xchain196_n71_α
.Lx267_0:
 .quad 31
# IR_LIT_STRING
 xchain196_n71_α:
 mov qword ptr [rbp + 2496], 1
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [rbp + 2504], rax
 jmp xchain196_n72_α
.Lx268_0:
 .quad .Lx268_0_s
.Lx268_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n72_α:
 mov qword ptr [rbp + 2384], 6
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain196_n73_α
.Lx269_0:
 .quad 63
# IR_LIT_STRING
 xchain196_n73_α:
 mov qword ptr [rbp + 2352], 1
 mov rax, qword ptr [rip + .Lx270_0]
 mov qword ptr [rbp + 2360], rax
 jmp xchain196_n74_α
.Lx270_0:
 .quad .Lx270_0_s
.Lx270_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n74_α:
 mov qword ptr [rbp + 2240], 6
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain196_n75_α
.Lx271_0:
 .quad 75
# IR_LIT_STRING
 xchain196_n75_α:
 mov qword ptr [rbp + 2208], 1
 mov rax, qword ptr [rip + .Lx272_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain196_n76_α
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n76_α:
 mov qword ptr [rbp + 2096], 6
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain196_n77_α
.Lx273_0:
 .quad 4
# IR_LIT_STRING
 xchain196_n77_α:
 mov qword ptr [rbp + 2064], 1
 mov rax, qword ptr [rip + .Lx274_0]
 mov qword ptr [rbp + 2072], rax
 jmp xchain196_n78_α
.Lx274_0:
 .quad .Lx274_0_s
.Lx274_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n78_α:
 mov qword ptr [rbp + 1952], 6
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain196_n79_α
.Lx275_0:
 .quad 95
# IR_LIT_STRING
 xchain196_n79_α:
 mov qword ptr [rbp + 1920], 1
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [rbp + 1928], rax
 jmp xchain196_n80_α
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n80_α:
 mov qword ptr [rbp + 1808], 6
 mov rax, qword ptr [rip + .Lx277_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain196_n81_α
.Lx277_0:
 .quad 99
# IR_LIT_STRING
 xchain196_n81_α:
 mov qword ptr [rbp + 1776], 1
 mov rax, qword ptr [rip + .Lx278_0]
 mov qword ptr [rbp + 1784], rax
 jmp xchain196_n82_α
.Lx278_0:
 .quad .Lx278_0_s
.Lx278_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n82_α:
 mov qword ptr [rbp + 1664], 6
 mov rax, qword ptr [rip + .Lx279_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain196_n83_α
.Lx279_0:
 .quad 11
# IR_LIT_STRING
 xchain196_n83_α:
 mov qword ptr [rbp + 1632], 1
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [rbp + 1640], rax
 jmp xchain196_n84_α
.Lx280_0:
 .quad .Lx280_0_s
.Lx280_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n84_α:
 mov qword ptr [rbp + 1520], 6
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain196_n85_α
.Lx281_0:
 .quad 28
# IR_LIT_STRING
 xchain196_n85_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx282_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain196_n86_α
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n86_α:
 mov qword ptr [rbp + 1376], 6
 mov rax, qword ptr [rip + .Lx283_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain196_n87_α
.Lx283_0:
 .quad 61
# IR_LIT_STRING
 xchain196_n87_α:
 mov qword ptr [rbp + 1344], 1
 mov rax, qword ptr [rip + .Lx284_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain196_n88_α
.Lx284_0:
 .quad .Lx284_0_s
.Lx284_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n88_α:
 mov qword ptr [rbp + 1232], 6
 mov rax, qword ptr [rip + .Lx285_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain196_n89_α
.Lx285_0:
 .quad 74
# IR_LIT_STRING
 xchain196_n89_α:
 mov qword ptr [rbp + 1200], 1
 mov rax, qword ptr [rip + .Lx286_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain196_n90_α
.Lx286_0:
 .quad .Lx286_0_s
.Lx286_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n90_α:
 mov qword ptr [rbp + 1088], 6
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain196_n91_α
.Lx287_0:
 .quad 18
# IR_LIT_STRING
 xchain196_n91_α:
 mov qword ptr [rbp + 1056], 1
 mov rax, qword ptr [rip + .Lx288_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain196_n92_α
.Lx288_0:
 .quad .Lx288_0_s
.Lx288_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n92_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx289_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain196_n93_α
.Lx289_0:
 .quad 92
# IR_LIT_STRING
 xchain196_n93_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx290_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain196_n94_α
.Lx290_0:
 .quad .Lx290_0_s
.Lx290_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n94_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain196_n95_α
.Lx291_0:
 .quad 40
# IR_LIT_STRING
 xchain196_n95_α:
 mov qword ptr [rbp + 768], 1
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain196_n96_α
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n96_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain196_n97_α
.Lx293_0:
 .quad 53
# IR_LIT_STRING
 xchain196_n97_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx294_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain196_n98_α
.Lx294_0:
 .quad .Lx294_0_s
.Lx294_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n98_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx295_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain196_n99_α
.Lx295_0:
 .quad 59
# IR_LIT_STRING
 xchain196_n99_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain196_n100_α
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n100_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain196_n101_α
.Lx297_0:
 .quad 8
# IR_LIT_STRING
 xchain196_n101_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx298_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain196_n102_α
.Lx298_0:
 .quad .Lx298_0_s
.Lx298_0_s:
 .string "[]"
 xchain196_n102_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+416]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+432]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 440], rax
# marshal arg2 = producer-box slot [zr+336] -> [zr+448]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 416]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n103_α
 xchain196_n102_β:
 jmp main_ω
 xchain196_n103_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+576]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 584], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+592]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n104_α
 xchain196_n103_β:
 jmp main_ω
 xchain196_n104_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+704]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 712], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+720]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 728], rax
# marshal arg2 = producer-box slot [zr+544] -> [zr+736]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 704]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n105_α
 xchain196_n104_β:
 jmp main_ω
 xchain196_n105_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+864]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 872], rax
# marshal arg2 = producer-box slot [zr+688] -> [zr+880]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 848]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n106_α
 xchain196_n105_β:
 jmp main_ω
 xchain196_n106_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+992]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+1008]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 1016], rax
# marshal arg2 = producer-box slot [zr+832] -> [zr+1024]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n107_α
 xchain196_n106_β:
 jmp main_ω
 xchain196_n107_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1136]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1144], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+1152]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1160], rax
# marshal arg2 = producer-box slot [zr+976] -> [zr+1168]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1136]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n108_α
 xchain196_n107_β:
 jmp main_ω
 xchain196_n108_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1280]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1288], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1296]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1304], rax
# marshal arg2 = producer-box slot [zr+1120] -> [zr+1312]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1320], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1280]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n109_α
 xchain196_n108_β:
 jmp main_ω
 xchain196_n109_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1424]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1432], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+1440]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1448], rax
# marshal arg2 = producer-box slot [zr+1264] -> [zr+1456]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1464], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1424]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n110_α
 xchain196_n109_β:
 jmp main_ω
 xchain196_n110_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1632] -> [zr+1568]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1576], rax
# marshal arg1 = producer-box slot [zr+1520] -> [zr+1584]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1592], rax
# marshal arg2 = producer-box slot [zr+1408] -> [zr+1600]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1568]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n111_α
 xchain196_n110_β:
 jmp main_ω
 xchain196_n111_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1776] -> [zr+1712]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1720], rax
# marshal arg1 = producer-box slot [zr+1664] -> [zr+1728]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1736], rax
# marshal arg2 = producer-box slot [zr+1552] -> [zr+1744]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1752], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1712]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n112_α
 xchain196_n111_β:
 jmp main_ω
 xchain196_n112_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1920] -> [zr+1856]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1864], rax
# marshal arg1 = producer-box slot [zr+1808] -> [zr+1872]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1880], rax
# marshal arg2 = producer-box slot [zr+1696] -> [zr+1888]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1896], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1856]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n113_α
 xchain196_n112_β:
 jmp main_ω
 xchain196_n113_α:
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
# marshal arg2 = producer-box slot [zr+1840] -> [zr+2032]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 2040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2000]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n114_α
 xchain196_n113_β:
 jmp main_ω
 xchain196_n114_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2208] -> [zr+2144]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2152], rax
# marshal arg1 = producer-box slot [zr+2096] -> [zr+2160]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2168], rax
# marshal arg2 = producer-box slot [zr+1984] -> [zr+2176]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 2184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2144]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n115_α
 xchain196_n114_β:
 jmp main_ω
 xchain196_n115_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2352] -> [zr+2288]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2296], rax
# marshal arg1 = producer-box slot [zr+2240] -> [zr+2304]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2312], rax
# marshal arg2 = producer-box slot [zr+2128] -> [zr+2320]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2288]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n116_α
 xchain196_n115_β:
 jmp main_ω
 xchain196_n116_α:
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
# marshal arg2 = producer-box slot [zr+2272] -> [zr+2464]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2432]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n117_α
 xchain196_n116_β:
 jmp main_ω
 xchain196_n117_α:
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
 je main_ω
 jmp xchain196_n118_α
 xchain196_n117_β:
 jmp main_ω
 xchain196_n118_α:
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
 je main_ω
 jmp xchain196_n119_α
 xchain196_n118_β:
 jmp main_ω
 xchain196_n119_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2928] -> [zr+2864]
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2872], rax
# marshal arg1 = producer-box slot [zr+2816] -> [zr+2880]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2888], rax
# marshal arg2 = producer-box slot [zr+2704] -> [zr+2896]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2864]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n120_α
 xchain196_n119_β:
 jmp main_ω
 xchain196_n120_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3072] -> [zr+3008]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3016], rax
# marshal arg1 = producer-box slot [zr+2960] -> [zr+3024]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 3032], rax
# marshal arg2 = producer-box slot [zr+2848] -> [zr+3040]
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 3048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3008]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n121_α
 xchain196_n120_β:
 jmp main_ω
 xchain196_n121_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3216] -> [zr+3152]
 mov rax, qword ptr [rbp + 3216]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3224]
 mov qword ptr [rbp + 3160], rax
# marshal arg1 = producer-box slot [zr+3104] -> [zr+3168]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3176], rax
# marshal arg2 = producer-box slot [zr+2992] -> [zr+3184]
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 3192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3152]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n122_α
 xchain196_n121_β:
 jmp main_ω
 xchain196_n122_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3360] -> [zr+3296]
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3304], rax
# marshal arg1 = producer-box slot [zr+3248] -> [zr+3312]
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3320], rax
# marshal arg2 = producer-box slot [zr+3136] -> [zr+3328]
 mov rax, qword ptr [rbp + 3136]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 3336], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3296]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n123_α
 xchain196_n122_β:
 jmp main_ω
 xchain196_n123_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3504] -> [zr+3440]
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 3448], rax
# marshal arg1 = producer-box slot [zr+3392] -> [zr+3456]
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3464], rax
# marshal arg2 = producer-box slot [zr+3280] -> [zr+3472]
 mov rax, qword ptr [rbp + 3280]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 3288]
 mov qword ptr [rbp + 3480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3440]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n124_α
 xchain196_n123_β:
 jmp main_ω
 xchain196_n124_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3648] -> [zr+3584]
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 3584], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 3592], rax
# marshal arg1 = producer-box slot [zr+3536] -> [zr+3600]
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 3608], rax
# marshal arg2 = producer-box slot [zr+3424] -> [zr+3616]
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3616], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3584]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n125_α
 xchain196_n124_β:
 jmp main_ω
 xchain196_n125_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3792] -> [zr+3728]
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 3728], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 3736], rax
# marshal arg1 = producer-box slot [zr+3680] -> [zr+3744]
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 3744], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 3752], rax
# marshal arg2 = producer-box slot [zr+3568] -> [zr+3760]
 mov rax, qword ptr [rbp + 3568]
 mov qword ptr [rbp + 3760], rax
 mov rax, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 3768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3728]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n126_α
 xchain196_n125_β:
 jmp main_ω
 xchain196_n126_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3936] -> [zr+3872]
 mov rax, qword ptr [rbp + 3936]
 mov qword ptr [rbp + 3872], rax
 mov rax, qword ptr [rbp + 3944]
 mov qword ptr [rbp + 3880], rax
# marshal arg1 = producer-box slot [zr+3824] -> [zr+3888]
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 3888], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 3896], rax
# marshal arg2 = producer-box slot [zr+3712] -> [zr+3904]
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 3904], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 3912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3872]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n127_α
 xchain196_n126_β:
 jmp main_ω
 xchain196_n127_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4080] -> [zr+4016]
 mov rax, qword ptr [rbp + 4080]
 mov qword ptr [rbp + 4016], rax
 mov rax, qword ptr [rbp + 4088]
 mov qword ptr [rbp + 4024], rax
# marshal arg1 = producer-box slot [zr+3968] -> [zr+4032]
 mov rax, qword ptr [rbp + 3968]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 4040], rax
# marshal arg2 = producer-box slot [zr+3856] -> [zr+4048]
 mov rax, qword ptr [rbp + 3856]
 mov qword ptr [rbp + 4048], rax
 mov rax, qword ptr [rbp + 3864]
 mov qword ptr [rbp + 4056], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4016]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n128_α
 xchain196_n127_β:
 jmp main_ω
 xchain196_n128_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4224] -> [zr+4160]
 mov rax, qword ptr [rbp + 4224]
 mov qword ptr [rbp + 4160], rax
 mov rax, qword ptr [rbp + 4232]
 mov qword ptr [rbp + 4168], rax
# marshal arg1 = producer-box slot [zr+4112] -> [zr+4176]
 mov rax, qword ptr [rbp + 4112]
 mov qword ptr [rbp + 4176], rax
 mov rax, qword ptr [rbp + 4120]
 mov qword ptr [rbp + 4184], rax
# marshal arg2 = producer-box slot [zr+4000] -> [zr+4192]
 mov rax, qword ptr [rbp + 4000]
 mov qword ptr [rbp + 4192], rax
 mov rax, qword ptr [rbp + 4008]
 mov qword ptr [rbp + 4200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4160]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n129_α
 xchain196_n128_β:
 jmp main_ω
 xchain196_n129_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4368] -> [zr+4304]
 mov rax, qword ptr [rbp + 4368]
 mov qword ptr [rbp + 4304], rax
 mov rax, qword ptr [rbp + 4376]
 mov qword ptr [rbp + 4312], rax
# marshal arg1 = producer-box slot [zr+4256] -> [zr+4320]
 mov rax, qword ptr [rbp + 4256]
 mov qword ptr [rbp + 4320], rax
 mov rax, qword ptr [rbp + 4264]
 mov qword ptr [rbp + 4328], rax
# marshal arg2 = producer-box slot [zr+4144] -> [zr+4336]
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 4336], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 4344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4304]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n130_α
 xchain196_n129_β:
 jmp main_ω
 xchain196_n130_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4512] -> [zr+4448]
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 4448], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 4456], rax
# marshal arg1 = producer-box slot [zr+4400] -> [zr+4464]
 mov rax, qword ptr [rbp + 4400]
 mov qword ptr [rbp + 4464], rax
 mov rax, qword ptr [rbp + 4408]
 mov qword ptr [rbp + 4472], rax
# marshal arg2 = producer-box slot [zr+4288] -> [zr+4480]
 mov rax, qword ptr [rbp + 4288]
 mov qword ptr [rbp + 4480], rax
 mov rax, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 4488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4448]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n131_α
 xchain196_n130_β:
 jmp main_ω
 xchain196_n131_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4656] -> [zr+4592]
 mov rax, qword ptr [rbp + 4656]
 mov qword ptr [rbp + 4592], rax
 mov rax, qword ptr [rbp + 4664]
 mov qword ptr [rbp + 4600], rax
# marshal arg1 = producer-box slot [zr+4544] -> [zr+4608]
 mov rax, qword ptr [rbp + 4544]
 mov qword ptr [rbp + 4608], rax
 mov rax, qword ptr [rbp + 4552]
 mov qword ptr [rbp + 4616], rax
# marshal arg2 = producer-box slot [zr+4432] -> [zr+4624]
 mov rax, qword ptr [rbp + 4432]
 mov qword ptr [rbp + 4624], rax
 mov rax, qword ptr [rbp + 4440]
 mov qword ptr [rbp + 4632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4592]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4576], rax
 mov qword ptr [rbp + 4584], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n132_α
 xchain196_n131_β:
 jmp main_ω
 xchain196_n132_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4800] -> [zr+4736]
 mov rax, qword ptr [rbp + 4800]
 mov qword ptr [rbp + 4736], rax
 mov rax, qword ptr [rbp + 4808]
 mov qword ptr [rbp + 4744], rax
# marshal arg1 = producer-box slot [zr+4688] -> [zr+4752]
 mov rax, qword ptr [rbp + 4688]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 4696]
 mov qword ptr [rbp + 4760], rax
# marshal arg2 = producer-box slot [zr+4576] -> [zr+4768]
 mov rax, qword ptr [rbp + 4576]
 mov qword ptr [rbp + 4768], rax
 mov rax, qword ptr [rbp + 4584]
 mov qword ptr [rbp + 4776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4736]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4720], rax
 mov qword ptr [rbp + 4728], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n133_α
 xchain196_n132_β:
 jmp main_ω
 xchain196_n133_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4944] -> [zr+4880]
 mov rax, qword ptr [rbp + 4944]
 mov qword ptr [rbp + 4880], rax
 mov rax, qword ptr [rbp + 4952]
 mov qword ptr [rbp + 4888], rax
# marshal arg1 = producer-box slot [zr+4832] -> [zr+4896]
 mov rax, qword ptr [rbp + 4832]
 mov qword ptr [rbp + 4896], rax
 mov rax, qword ptr [rbp + 4840]
 mov qword ptr [rbp + 4904], rax
# marshal arg2 = producer-box slot [zr+4720] -> [zr+4912]
 mov rax, qword ptr [rbp + 4720]
 mov qword ptr [rbp + 4912], rax
 mov rax, qword ptr [rbp + 4728]
 mov qword ptr [rbp + 4920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4880]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4864], rax
 mov qword ptr [rbp + 4872], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n134_α
 xchain196_n133_β:
 jmp main_ω
 xchain196_n134_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5088] -> [zr+5024]
 mov rax, qword ptr [rbp + 5088]
 mov qword ptr [rbp + 5024], rax
 mov rax, qword ptr [rbp + 5096]
 mov qword ptr [rbp + 5032], rax
# marshal arg1 = producer-box slot [zr+4976] -> [zr+5040]
 mov rax, qword ptr [rbp + 4976]
 mov qword ptr [rbp + 5040], rax
 mov rax, qword ptr [rbp + 4984]
 mov qword ptr [rbp + 5048], rax
# marshal arg2 = producer-box slot [zr+4864] -> [zr+5056]
 mov rax, qword ptr [rbp + 4864]
 mov qword ptr [rbp + 5056], rax
 mov rax, qword ptr [rbp + 4872]
 mov qword ptr [rbp + 5064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5024]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5008], rax
 mov qword ptr [rbp + 5016], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n135_α
 xchain196_n134_β:
 jmp main_ω
 xchain196_n135_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5232] -> [zr+5168]
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 5168], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 5176], rax
# marshal arg1 = producer-box slot [zr+5120] -> [zr+5184]
 mov rax, qword ptr [rbp + 5120]
 mov qword ptr [rbp + 5184], rax
 mov rax, qword ptr [rbp + 5128]
 mov qword ptr [rbp + 5192], rax
# marshal arg2 = producer-box slot [zr+5008] -> [zr+5200]
 mov rax, qword ptr [rbp + 5008]
 mov qword ptr [rbp + 5200], rax
 mov rax, qword ptr [rbp + 5016]
 mov qword ptr [rbp + 5208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5168]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5152], rax
 mov qword ptr [rbp + 5160], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n136_α
 xchain196_n135_β:
 jmp main_ω
 xchain196_n136_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5376] -> [zr+5312]
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 5312], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 5320], rax
# marshal arg1 = producer-box slot [zr+5264] -> [zr+5328]
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 5328], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 5336], rax
# marshal arg2 = producer-box slot [zr+5152] -> [zr+5344]
 mov rax, qword ptr [rbp + 5152]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 5160]
 mov qword ptr [rbp + 5352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5312]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n137_α
 xchain196_n136_β:
 jmp main_ω
 xchain196_n137_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5520] -> [zr+5456]
 mov rax, qword ptr [rbp + 5520]
 mov qword ptr [rbp + 5456], rax
 mov rax, qword ptr [rbp + 5528]
 mov qword ptr [rbp + 5464], rax
# marshal arg1 = producer-box slot [zr+5408] -> [zr+5472]
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 5480], rax
# marshal arg2 = producer-box slot [zr+5296] -> [zr+5488]
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 5488], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 5496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5456]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n138_α
 xchain196_n137_β:
 jmp main_ω
 xchain196_n138_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5664] -> [zr+5600]
 mov rax, qword ptr [rbp + 5664]
 mov qword ptr [rbp + 5600], rax
 mov rax, qword ptr [rbp + 5672]
 mov qword ptr [rbp + 5608], rax
# marshal arg1 = producer-box slot [zr+5552] -> [zr+5616]
 mov rax, qword ptr [rbp + 5552]
 mov qword ptr [rbp + 5616], rax
 mov rax, qword ptr [rbp + 5560]
 mov qword ptr [rbp + 5624], rax
# marshal arg2 = producer-box slot [zr+5440] -> [zr+5632]
 mov rax, qword ptr [rbp + 5440]
 mov qword ptr [rbp + 5632], rax
 mov rax, qword ptr [rbp + 5448]
 mov qword ptr [rbp + 5640], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5600]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5584], rax
 mov qword ptr [rbp + 5592], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n139_α
 xchain196_n138_β:
 jmp main_ω
 xchain196_n139_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5808] -> [zr+5744]
 mov rax, qword ptr [rbp + 5808]
 mov qword ptr [rbp + 5744], rax
 mov rax, qword ptr [rbp + 5816]
 mov qword ptr [rbp + 5752], rax
# marshal arg1 = producer-box slot [zr+5696] -> [zr+5760]
 mov rax, qword ptr [rbp + 5696]
 mov qword ptr [rbp + 5760], rax
 mov rax, qword ptr [rbp + 5704]
 mov qword ptr [rbp + 5768], rax
# marshal arg2 = producer-box slot [zr+5584] -> [zr+5776]
 mov rax, qword ptr [rbp + 5584]
 mov qword ptr [rbp + 5776], rax
 mov rax, qword ptr [rbp + 5592]
 mov qword ptr [rbp + 5784], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5744]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n140_α
 xchain196_n139_β:
 jmp main_ω
 xchain196_n140_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5952] -> [zr+5888]
 mov rax, qword ptr [rbp + 5952]
 mov qword ptr [rbp + 5888], rax
 mov rax, qword ptr [rbp + 5960]
 mov qword ptr [rbp + 5896], rax
# marshal arg1 = producer-box slot [zr+5840] -> [zr+5904]
 mov rax, qword ptr [rbp + 5840]
 mov qword ptr [rbp + 5904], rax
 mov rax, qword ptr [rbp + 5848]
 mov qword ptr [rbp + 5912], rax
# marshal arg2 = producer-box slot [zr+5728] -> [zr+5920]
 mov rax, qword ptr [rbp + 5728]
 mov qword ptr [rbp + 5920], rax
 mov rax, qword ptr [rbp + 5736]
 mov qword ptr [rbp + 5928], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5888]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n141_α
 xchain196_n140_β:
 jmp main_ω
 xchain196_n141_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6096] -> [zr+6032]
 mov rax, qword ptr [rbp + 6096]
 mov qword ptr [rbp + 6032], rax
 mov rax, qword ptr [rbp + 6104]
 mov qword ptr [rbp + 6040], rax
# marshal arg1 = producer-box slot [zr+5984] -> [zr+6048]
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 6048], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 6056], rax
# marshal arg2 = producer-box slot [zr+5872] -> [zr+6064]
 mov rax, qword ptr [rbp + 5872]
 mov qword ptr [rbp + 6064], rax
 mov rax, qword ptr [rbp + 5880]
 mov qword ptr [rbp + 6072], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6032]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6016], rax
 mov qword ptr [rbp + 6024], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n142_α
 xchain196_n141_β:
 jmp main_ω
 xchain196_n142_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6240] -> [zr+6176]
 mov rax, qword ptr [rbp + 6240]
 mov qword ptr [rbp + 6176], rax
 mov rax, qword ptr [rbp + 6248]
 mov qword ptr [rbp + 6184], rax
# marshal arg1 = producer-box slot [zr+6128] -> [zr+6192]
 mov rax, qword ptr [rbp + 6128]
 mov qword ptr [rbp + 6192], rax
 mov rax, qword ptr [rbp + 6136]
 mov qword ptr [rbp + 6200], rax
# marshal arg2 = producer-box slot [zr+6016] -> [zr+6208]
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 6208], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 6216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6176]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6160], rax
 mov qword ptr [rbp + 6168], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n143_α
 xchain196_n142_β:
 jmp main_ω
 xchain196_n143_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6384] -> [zr+6320]
 mov rax, qword ptr [rbp + 6384]
 mov qword ptr [rbp + 6320], rax
 mov rax, qword ptr [rbp + 6392]
 mov qword ptr [rbp + 6328], rax
# marshal arg1 = producer-box slot [zr+6272] -> [zr+6336]
 mov rax, qword ptr [rbp + 6272]
 mov qword ptr [rbp + 6336], rax
 mov rax, qword ptr [rbp + 6280]
 mov qword ptr [rbp + 6344], rax
# marshal arg2 = producer-box slot [zr+6160] -> [zr+6352]
 mov rax, qword ptr [rbp + 6160]
 mov qword ptr [rbp + 6352], rax
 mov rax, qword ptr [rbp + 6168]
 mov qword ptr [rbp + 6360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6320]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6304], rax
 mov qword ptr [rbp + 6312], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n144_α
 xchain196_n143_β:
 jmp main_ω
 xchain196_n144_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6528] -> [zr+6464]
 mov rax, qword ptr [rbp + 6528]
 mov qword ptr [rbp + 6464], rax
 mov rax, qword ptr [rbp + 6536]
 mov qword ptr [rbp + 6472], rax
# marshal arg1 = producer-box slot [zr+6416] -> [zr+6480]
 mov rax, qword ptr [rbp + 6416]
 mov qword ptr [rbp + 6480], rax
 mov rax, qword ptr [rbp + 6424]
 mov qword ptr [rbp + 6488], rax
# marshal arg2 = producer-box slot [zr+6304] -> [zr+6496]
 mov rax, qword ptr [rbp + 6304]
 mov qword ptr [rbp + 6496], rax
 mov rax, qword ptr [rbp + 6312]
 mov qword ptr [rbp + 6504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6464]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6448], rax
 mov qword ptr [rbp + 6456], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n145_α
 xchain196_n144_β:
 jmp main_ω
 xchain196_n145_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6672] -> [zr+6608]
 mov rax, qword ptr [rbp + 6672]
 mov qword ptr [rbp + 6608], rax
 mov rax, qword ptr [rbp + 6680]
 mov qword ptr [rbp + 6616], rax
# marshal arg1 = producer-box slot [zr+6560] -> [zr+6624]
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 6624], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 6632], rax
# marshal arg2 = producer-box slot [zr+6448] -> [zr+6640]
 mov rax, qword ptr [rbp + 6448]
 mov qword ptr [rbp + 6640], rax
 mov rax, qword ptr [rbp + 6456]
 mov qword ptr [rbp + 6648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6608]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n146_α
 xchain196_n145_β:
 jmp main_ω
 xchain196_n146_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6816] -> [zr+6752]
 mov rax, qword ptr [rbp + 6816]
 mov qword ptr [rbp + 6752], rax
 mov rax, qword ptr [rbp + 6824]
 mov qword ptr [rbp + 6760], rax
# marshal arg1 = producer-box slot [zr+6704] -> [zr+6768]
 mov rax, qword ptr [rbp + 6704]
 mov qword ptr [rbp + 6768], rax
 mov rax, qword ptr [rbp + 6712]
 mov qword ptr [rbp + 6776], rax
# marshal arg2 = producer-box slot [zr+6592] -> [zr+6784]
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 6784], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 6792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6752]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n147_α
 xchain196_n146_β:
 jmp main_ω
 xchain196_n147_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6960] -> [zr+6896]
 mov rax, qword ptr [rbp + 6960]
 mov qword ptr [rbp + 6896], rax
 mov rax, qword ptr [rbp + 6968]
 mov qword ptr [rbp + 6904], rax
# marshal arg1 = producer-box slot [zr+6848] -> [zr+6912]
 mov rax, qword ptr [rbp + 6848]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 6856]
 mov qword ptr [rbp + 6920], rax
# marshal arg2 = producer-box slot [zr+6736] -> [zr+6928]
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 6928], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 6936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6896]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6880], rax
 mov qword ptr [rbp + 6888], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n148_α
 xchain196_n147_β:
 jmp main_ω
 xchain196_n148_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7104] -> [zr+7040]
 mov rax, qword ptr [rbp + 7104]
 mov qword ptr [rbp + 7040], rax
 mov rax, qword ptr [rbp + 7112]
 mov qword ptr [rbp + 7048], rax
# marshal arg1 = producer-box slot [zr+6992] -> [zr+7056]
 mov rax, qword ptr [rbp + 6992]
 mov qword ptr [rbp + 7056], rax
 mov rax, qword ptr [rbp + 7000]
 mov qword ptr [rbp + 7064], rax
# marshal arg2 = producer-box slot [zr+6880] -> [zr+7072]
 mov rax, qword ptr [rbp + 6880]
 mov qword ptr [rbp + 7072], rax
 mov rax, qword ptr [rbp + 6888]
 mov qword ptr [rbp + 7080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7040]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7024], rax
 mov qword ptr [rbp + 7032], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n149_α
 xchain196_n148_β:
 jmp main_ω
 xchain196_n149_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7248] -> [zr+7184]
 mov rax, qword ptr [rbp + 7248]
 mov qword ptr [rbp + 7184], rax
 mov rax, qword ptr [rbp + 7256]
 mov qword ptr [rbp + 7192], rax
# marshal arg1 = producer-box slot [zr+7136] -> [zr+7200]
 mov rax, qword ptr [rbp + 7136]
 mov qword ptr [rbp + 7200], rax
 mov rax, qword ptr [rbp + 7144]
 mov qword ptr [rbp + 7208], rax
# marshal arg2 = producer-box slot [zr+7024] -> [zr+7216]
 mov rax, qword ptr [rbp + 7024]
 mov qword ptr [rbp + 7216], rax
 mov rax, qword ptr [rbp + 7032]
 mov qword ptr [rbp + 7224], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7184]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7168], rax
 mov qword ptr [rbp + 7176], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n150_α
 xchain196_n149_β:
 jmp main_ω
 xchain196_n150_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7392] -> [zr+7328]
 mov rax, qword ptr [rbp + 7392]
 mov qword ptr [rbp + 7328], rax
 mov rax, qword ptr [rbp + 7400]
 mov qword ptr [rbp + 7336], rax
# marshal arg1 = producer-box slot [zr+7280] -> [zr+7344]
 mov rax, qword ptr [rbp + 7280]
 mov qword ptr [rbp + 7344], rax
 mov rax, qword ptr [rbp + 7288]
 mov qword ptr [rbp + 7352], rax
# marshal arg2 = producer-box slot [zr+7168] -> [zr+7360]
 mov rax, qword ptr [rbp + 7168]
 mov qword ptr [rbp + 7360], rax
 mov rax, qword ptr [rbp + 7176]
 mov qword ptr [rbp + 7368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7328]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7312], rax
 mov qword ptr [rbp + 7320], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n151_α
 xchain196_n150_β:
 jmp main_ω
 xchain196_n151_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7536] -> [zr+7472]
 mov rax, qword ptr [rbp + 7536]
 mov qword ptr [rbp + 7472], rax
 mov rax, qword ptr [rbp + 7544]
 mov qword ptr [rbp + 7480], rax
# marshal arg1 = producer-box slot [zr+7424] -> [zr+7488]
 mov rax, qword ptr [rbp + 7424]
 mov qword ptr [rbp + 7488], rax
 mov rax, qword ptr [rbp + 7432]
 mov qword ptr [rbp + 7496], rax
# marshal arg2 = producer-box slot [zr+7312] -> [zr+7504]
 mov rax, qword ptr [rbp + 7312]
 mov qword ptr [rbp + 7504], rax
 mov rax, qword ptr [rbp + 7320]
 mov qword ptr [rbp + 7512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7472]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7456], rax
 mov qword ptr [rbp + 7464], rdx
 cmp eax, 99
 je xchain196_n153_α
 jmp xchain196_n152_α
 xchain196_n151_β:
 jmp xchain196_n153_α
# IR_VAR_REF
 xchain196_n152_α:
 mov rax, 4294967305
 lea rdx, [rbp + 7648]
 mov qword ptr [rbp + 7568], rax
 mov qword ptr [rbp + 7576], rdx
 jmp xchain196_n154_α
 xchain196_n153_α:
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
 xchain196_n153_β:
 jmp main_ω
# IR_LIT_STRING
 xchain196_n154_α:
 mov qword ptr [rbp + 7600], 1
 mov rax, qword ptr [rip + .Lx352_0]
 mov qword ptr [rbp + 7608], rax
 jmp xchain196_n155_α
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "[]"
 xchain196_n155_α:
 mov qword ptr [rbp + 304], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx354_20
 mov rax, qword ptr [rbp + 7456]
 mov rdx, qword ptr [rbp + 7464]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx354_21
.Lx354_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7456]
 mov rdx, qword ptr [rbp + 7464]
 call rt_arg_stage@PLT
.Lx354_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx354_22
 mov rax, qword ptr [rbp + 7568]
 mov rdx, qword ptr [rbp + 7576]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx354_23
.Lx354_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 7568]
 mov rdx, qword ptr [rbp + 7576]
 call rt_arg_stage@PLT
.Lx354_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx354_24
 mov rax, qword ptr [rbp + 7600]
 mov rdx, qword ptr [rbp + 7608]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx354_25
.Lx354_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 7600]
 mov rdx, qword ptr [rbp + 7608]
 call rt_arg_stage@PLT
.Lx354_25:
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx354_1
 lea rcx, [rip + .Lx354_3]
 lea rdx, [rip + .Lx354_4]
 jmp rax
.Lx354_3:
 mov qword ptr [rbp + 312], rsp
 mov rax, qword ptr [rbp + 304]
 test rax, rax
 jne .Lx354_5
 mov qword ptr [rbp + 304], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx354_2
.Lx354_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx354_2
.Lx354_4:
 mov rax, qword ptr [rbp + 304]
 test rax, rax
 jne .Lx354_6
 mov qword ptr [rbp + 304], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx354_2
.Lx354_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx354_2
.Lx354_1:
 call rt_faildescr@PLT
.Lx354_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain196_n153_α
 jmp xchain196_n156_α
 xchain196_n155_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 312]
 jmp qword ptr [rsp]
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
 .string "qsort/3"
# IR_VAR
 xchain196_n156_α:
 mov rax, qword ptr [rbp + 7648]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 7656]
 mov qword ptr [rbp + 216], rax
 jmp xchain196_n157_α
 xchain196_n157_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn358: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn358]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain196_n155_β
 jmp xchain196_n158_α
 xchain196_n157_β:
 jmp xchain196_n155_β
# IR_LIT_STRING
 xchain196_n158_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx359_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain196_n159_α
.Lx359_0:
 .quad .Lx359_0_s
.Lx359_0_s:
 .string ""
 xchain196_n159_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn361: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn361]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain196_n155_β
 jmp xchain196_n160_α
 xchain196_n159_β:
 jmp xchain196_n155_β
# IR_MOVE_LABEL
 xchain196_n160_α:
 lea rax, [rip + xchain196_n155_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain196_n161_α:
 jmp qword ptr [rbp + 32]
 xchain196_n161_β:
 jmp main_ω
main_β:
jmp xchain196_n161_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 7640]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 7640]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
