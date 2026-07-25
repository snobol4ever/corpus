  .intel_syntax noprefix
  .text
  .globl proc_sel$2F3_α
proc_sel$2F3_α:
#=======================================================================================================================
    .global proc_sel$2F3_α
    .global proc_sel$2F3_β
    .global proc_sel$2F3_γ
    .global proc_sel$2F3_ω
  sub rsp, 1680
  mov [rsp + 1656], rcx
  mov [rsp + 1664], rdx
  mov [rsp + 1672], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1560], rsp
  mov rdi, rsp
  mov esi, 1536
  mov edx, 1648
  call rt_jmp_frame_lexprep2@PLT
proc_sel$2F3_α_body:
lea rax, [rip + xchain0_n27_β]
mov qword ptr [rbp + 1536], rax
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
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx1_101:
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
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain0_n3_α
.Lx4_0:
 .quad 3
# IR_LIT_INTEGER
 xchain0_n3_α:
 mov qword ptr [rbp + 1504], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain0_n4_α
.Lx5_0:
 .quad 0
 xchain0_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1392]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1400], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1408]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1416], rax
# marshal arg2 = producer-box slot [zr+1504] -> [zr+1424]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1432], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1392]
 lea r8, [rbp + 1392]
.Lx6_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx6_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx6_111
 cmp esi, 1
 jne .Lx6_112
 mov r8, rax
 jmp .Lx6_110
.Lx6_112:
 cmp esi, 2
 jne .Lx6_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx6_111
 mov r8, rax
 jmp .Lx6_110
.Lx6_113:
 cmp eax, 13
 jne .Lx6_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx6_111
 cmp rax, r8
 je .Lx6_111
 mov r8, rax
 jmp .Lx6_110
.Lx6_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx6_114
 cmp eax, 99
 je .Lx6_114
 cmp eax, 13
 jne .Lx6_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx6_114
 jmp .Lx6_118
.Lx6_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 jne .Lx6_119
 lea r10, [rip + g_plw_dot_sl]
 mov edx, dword ptr [r10 + 0]
 cmp edx, 0
 je .Lx6_116
 mov esi, dword ptr [r8 + 4]
 cmp esi, edx
 jne .Lx6_115
 jmp .Lx6_114
.Lx6_119:
 cmp eax, 6
 jne .Lx6_120
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx6_114
 jmp .Lx6_115
.Lx6_120:
 cmp eax, 1
 jne .Lx6_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx6_114
 mov rdx, qword ptr [r8 + 8]
 test rdx, rdx
 je .Lx6_114
 jmp .Lx6_115
.Lx6_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx6_117
.Lx6_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx6_117
.Lx6_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx6_117:
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain0_n8_α
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain0_n9_α
# IR_LIT_INTEGER
 xchain0_n8_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain0_n10_α
.Lx13_0:
 .quad 3
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1632]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain0_n11_α
# IR_LIT_INTEGER
 xchain0_n10_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain0_n12_α
.Lx16_0:
 .quad 0
 xchain0_n11_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1264]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1272], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1280]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1288], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1296]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1304], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1264]
 lea r8, [rbp + 1264]
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
 lea r9, [rbp + 1280]
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
 lea rcx, [rbp + 1296]
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
 lea r9, [rbp + 1280]
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
 lea rcx, [rbp + 1296]
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
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
 xchain0_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 808], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+816]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 824], rax
# marshal arg2 = producer-box slot [zr+912] -> [zr+832]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 840], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 800]
 lea r8, [rbp + 800]
.Lx18_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx18_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx18_111
 cmp esi, 1
 jne .Lx18_112
 mov r8, rax
 jmp .Lx18_110
.Lx18_112:
 cmp esi, 2
 jne .Lx18_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx18_111
 mov r8, rax
 jmp .Lx18_110
.Lx18_113:
 cmp eax, 13
 jne .Lx18_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx18_111
 cmp rax, r8
 je .Lx18_111
 mov r8, rax
 jmp .Lx18_110
.Lx18_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx18_114
 cmp eax, 99
 je .Lx18_114
 cmp eax, 13
 jne .Lx18_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx18_114
 jmp .Lx18_118
.Lx18_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 jne .Lx18_119
 lea r10, [rip + g_plw_dot_sl]
 mov edx, dword ptr [r10 + 0]
 cmp edx, 0
 je .Lx18_116
 mov esi, dword ptr [r8 + 4]
 cmp esi, edx
 jne .Lx18_115
 jmp .Lx18_114
.Lx18_119:
 cmp eax, 6
 jne .Lx18_120
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx18_114
 jmp .Lx18_115
.Lx18_120:
 cmp eax, 1
 jne .Lx18_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx18_114
 mov rdx, qword ptr [r8 + 8]
 test rdx, rdx
 je .Lx18_114
 jmp .Lx18_115
.Lx18_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx18_117
.Lx18_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx18_117
.Lx18_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx18_117:
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain0_n17_α
 xchain0_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+960]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 960]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je proc_sel$2F3_ω
 jmp xchain0_n6_α
 xchain0_n14_β:
 jmp proc_sel$2F3_ω
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain0_n18_α
 xchain0_n16_α:
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
 xchain0_n16_β:
 jmp proc_sel$2F3_ω
# IR_VAR_REF
 xchain0_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1632]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain0_n19_α
# IR_VAR_REF
 xchain0_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain0_n20_α
 xchain0_n19_α:
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
 lea r9, [rbp + 1136]
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
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain0_n22_α
# IR_VAR_REF
 xchain0_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain0_n23_α
 xchain0_n22_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+672]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+688]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 696], rax
# marshal arg2 = producer-box slot [zr+752] -> [zr+704]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 712], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 672]
 lea r8, [rbp + 672]
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
 lea r9, [rbp + 688]
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
 lea rcx, [rbp + 704]
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
 lea r9, [rbp + 688]
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
 lea rcx, [rbp + 704]
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
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain0_n25_α
# IR_VAR_REF
 xchain0_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain0_n26_α
 xchain0_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+1008]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1016], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1024]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1032], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1008]
 lea r8, [rbp + 1008]
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
 lea r9, [rbp + 1024]
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
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n28_α
# IR_SUSPEND yield+resume
 xchain0_n27_α:
 lea rax, [rip + xchain0_n27_β]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_sel$2F3_γ
 xchain0_n27_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1584]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain0_n29_α
 xchain0_n29_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+512]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 520], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 536], rax
# marshal arg2 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 512]
 lea r8, [rbp + 512]
.Lx46_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx46_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx46_61
 cmp esi, 1
 jne .Lx46_62
 mov r8, rax
 jmp .Lx46_60
.Lx46_62:
 cmp esi, 2
 jne .Lx46_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx46_61
 mov r8, rax
 jmp .Lx46_60
.Lx46_63:
 cmp eax, 13
 jne .Lx46_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx46_61
 cmp rax, r8
 je .Lx46_61
 mov r8, rax
 jmp .Lx46_60
.Lx46_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx46_80
 cmp eax, 99
 je .Lx46_80
 cmp eax, 13
 jne .Lx46_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx46_80
 jmp .Lx46_74
.Lx46_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx46_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx46_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx46_73
 lea r9, [rbp + 528]
.Lx46_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx46_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx46_65
 cmp esi, 1
 jne .Lx46_66
 mov r9, rax
 jmp .Lx46_64
.Lx46_66:
 cmp esi, 2
 jne .Lx46_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx46_65
 mov r9, rax
 jmp .Lx46_64
.Lx46_67:
 cmp eax, 13
 jne .Lx46_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx46_65
 cmp rax, r9
 je .Lx46_65
 mov r9, rax
 jmp .Lx46_64
.Lx46_65:
 lea rcx, [rbp + 544]
.Lx46_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx46_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx46_69
 cmp esi, 1
 jne .Lx46_70
 mov rcx, rax
 jmp .Lx46_68
.Lx46_70:
 cmp esi, 2
 jne .Lx46_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx46_69
 mov rcx, rax
 jmp .Lx46_68
.Lx46_71:
 cmp eax, 13
 jne .Lx46_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx46_69
 cmp rax, rcx
 je .Lx46_69
 mov rcx, rax
 jmp .Lx46_68
.Lx46_69:
 cmp r9, rcx
 je .Lx46_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx46_75
 cmp eax, 99
 je .Lx46_75
 cmp eax, 13
 jne .Lx46_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx46_75
 jmp .Lx46_72
.Lx46_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx46_76
 cmp eax, 99
 je .Lx46_76
 cmp eax, 13
 jne .Lx46_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx46_76
 jmp .Lx46_72
.Lx46_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx46_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx46_72
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
 jmp .Lx46_77
.Lx46_80:
# PL-SINK-3 inline $unify_lst WRITE mode: carve 2 kids off the PLJ frontier, join unbound args, bind subject to the './2 cell
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx46_72
 lea r10, [rip + g_hp_fr]
 mov eax, dword ptr [r10 + 24]
 test eax, eax
 je .Lx46_72
 mov r11, qword ptr [r10 + 0]
 mov rax, qword ptr [r10 + 8]
 sub rax, 48
 cmp r11, rax
 ja .Lx46_72
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx46_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 72
 cmp rsi, rax
 ja .Lx46_72
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
 lea r9, [rbp + 528]
.Lx46_81:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx46_84
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx46_82
 cmp esi, 1
 jne .Lx46_83
 mov r9, rax
 jmp .Lx46_81
.Lx46_83:
 cmp esi, 2
 jne .Lx46_82
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx46_82
 mov r9, rax
 jmp .Lx46_81
.Lx46_84:
 cmp eax, 13
 jne .Lx46_82
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx46_82
 cmp rax, r9
 je .Lx46_82
 mov r9, rax
 jmp .Lx46_81
.Lx46_82:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx46_85
 cmp eax, 99
 je .Lx46_85
 cmp eax, 13
 jne .Lx46_86
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx46_85
 jmp .Lx46_86
.Lx46_85:
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
 jmp .Lx46_87
.Lx46_86:
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [rdx + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [rdx + 8], rax
.Lx46_87:
 lea rcx, [rbp + 544]
.Lx46_88:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx46_91
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx46_89
 cmp esi, 1
 jne .Lx46_90
 mov rcx, rax
 jmp .Lx46_88
.Lx46_90:
 cmp esi, 2
 jne .Lx46_89
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx46_89
 mov rcx, rax
 jmp .Lx46_88
.Lx46_91:
 cmp eax, 13
 jne .Lx46_89
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx46_89
 cmp rax, rcx
 je .Lx46_89
 mov rcx, rax
 jmp .Lx46_88
.Lx46_89:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx46_92
 cmp eax, 99
 je .Lx46_92
 cmp eax, 13
 jne .Lx46_93
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx46_92
 jmp .Lx46_93
.Lx46_92:
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
 jmp .Lx46_94
.Lx46_93:
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rdx + 16], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [rdx + 24], rax
.Lx46_94:
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
 jmp .Lx46_77
.Lx46_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx46_77
.Lx46_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx46_77:
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain0_n31_α
# IR_VAR_REF
 xchain0_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain0_n32_α
 xchain0_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 368]
 lea r8, [rbp + 368]
.Lx51_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx51_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx51_41
 cmp esi, 1
 jne .Lx51_55
 mov r8, rax
 jmp .Lx51_40
.Lx51_55:
 cmp esi, 2
 jne .Lx51_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx51_41
 mov r8, rax
 jmp .Lx51_40
.Lx51_56:
 cmp eax, 13
 jne .Lx51_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx51_41
 cmp rax, r8
 je .Lx51_41
 mov r8, rax
 jmp .Lx51_40
.Lx51_41:
 lea r9, [rbp + 384]
.Lx51_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx51_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx51_43
 cmp esi, 1
 jne .Lx51_57
 mov r9, rax
 jmp .Lx51_42
.Lx51_57:
 cmp esi, 2
 jne .Lx51_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx51_43
 mov r9, rax
 jmp .Lx51_42
.Lx51_58:
 cmp eax, 13
 jne .Lx51_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx51_43
 cmp rax, r9
 je .Lx51_43
 mov r9, rax
 jmp .Lx51_42
.Lx51_43:
 cmp r8, r9
 je .Lx51_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx51_44
 cmp eax, 99
 je .Lx51_44
 cmp eax, 13
 jne .Lx51_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx51_44
 jmp .Lx51_45
.Lx51_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx51_53
 cmp eax, 99
 je .Lx51_53
 cmp eax, 13
 jne .Lx51_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx51_53
 jmp .Lx51_46
.Lx51_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx51_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx51_53
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
 jmp .Lx51_51
.Lx51_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx51_47
 cmp eax, 99
 je .Lx51_47
 cmp eax, 13
 jne .Lx51_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx51_47
 jmp .Lx51_48
.Lx51_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx51_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx51_53
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
 jmp .Lx51_51
.Lx51_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx51_49
 cmp edx, 14
 je .Lx51_53
 jmp .Lx51_52
.Lx51_49:
 cmp edx, 14
 je .Lx51_52
 cmp ecx, 7
 je .Lx51_53
 cmp edx, 7
 je .Lx51_53
 cmp ecx, 6
 jne .Lx51_50
 cmp edx, 6
 jne .Lx51_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx51_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx51_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx51_51
 jmp .Lx51_52
.Lx51_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx51_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx51_53
.Lx51_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx51_54
.Lx51_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx51_54
.Lx51_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx51_54:
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain0_n34_α
# IR_VAR_REF
 xchain0_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1584]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n35_α
# IR_VAR_REF
 xchain0_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain0_n36_α
 xchain0_n36_α:
 mov qword ptr [rbp + 224], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx59_20
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx59_21
.Lx59_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
.Lx59_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx59_22
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx59_23
.Lx59_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
.Lx59_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx59_24
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx59_25
.Lx59_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
.Lx59_25:
 mov edi, 0
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx59_1
 lea rcx, [rip + .Lx59_3]
 lea rdx, [rip + .Lx59_4]
 jmp rax
.Lx59_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx59_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx59_2
.Lx59_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx59_2
.Lx59_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx59_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx59_2
.Lx59_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx59_2
.Lx59_1:
 call rt_faildescr@PLT
.Lx59_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n37_α
 xchain0_n36_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "sel/3"
# IR_SUSPEND yield+resume
 xchain0_n37_α:
 lea rax, [rip + xchain0_n37_β]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_sel$2F3_γ
 xchain0_n37_β:
 jmp xchain0_n36_β
proc_sel$2F3_res:
add rsp, 8
pop rbp
proc_sel$2F3_β:
jmp qword ptr [rbp + 1536]
proc_sel$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_sel$2F3_res]
push rax
mov rax, [rbp + 1656]
mov rbp, [rbp + 1672]
jmp rax
proc_sel$2F3_ω:
mov rax, [rbp + 1664]
lea rsp, [rbp + 1680]
mov rbp, [rbp + 1672]
jmp rax
  .globl proc_queens$2F3_α
proc_queens$2F3_α:
#=======================================================================================================================
    .global proc_queens$2F3_α
    .global proc_queens$2F3_β
    .global proc_queens$2F3_γ
    .global proc_queens$2F3_ω
  sub rsp, 1856
  mov [rsp + 1832], rcx
  mov [rsp + 1840], rdx
  mov [rsp + 1848], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1736], rsp
  mov rdi, rsp
  mov esi, 1712
  mov edx, 1824
  call rt_jmp_frame_lexprep2@PLT
proc_queens$2F3_α_body:
lea rax, [rip + xchain62_n25_β]
mov qword ptr [rbp + 1712], rax
 xchain62_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx63_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx63_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx63_101
.Lx63_100:
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx63_101:
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_queens$2F3_ω
 jmp xchain62_n1_α
 xchain62_n0_β:
 jmp proc_queens$2F3_ω
# IR_VAR_REF
 xchain62_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain62_n2_α
# IR_LIT_INTEGER
 xchain62_n2_α:
 mov qword ptr [rbp + 1648], 6
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain62_n3_α
.Lx66_0:
 .quad 2
# IR_LIT_STRING
 xchain62_n3_α:
 mov qword ptr [rbp + 1680], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain62_n4_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "[]"
 xchain62_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1568]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1576], rax
# marshal arg1 = producer-box slot [zr+1648] -> [zr+1584]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1592], rax
# marshal arg2 = producer-box slot [zr+1680] -> [zr+1600]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1608], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1568]
 lea r8, [rbp + 1568]
.Lx68_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx68_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx68_111
 cmp esi, 1
 jne .Lx68_112
 mov r8, rax
 jmp .Lx68_110
.Lx68_112:
 cmp esi, 2
 jne .Lx68_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx68_111
 mov r8, rax
 jmp .Lx68_110
.Lx68_113:
 cmp eax, 13
 jne .Lx68_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx68_111
 cmp rax, r8
 je .Lx68_111
 mov r8, rax
 jmp .Lx68_110
.Lx68_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx68_114
 cmp eax, 99
 je .Lx68_114
 cmp eax, 13
 jne .Lx68_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx68_114
 jmp .Lx68_118
.Lx68_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx68_115
 cmp eax, 6
 je .Lx68_114
 cmp eax, 1
 jne .Lx68_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx68_114
 mov rdx, qword ptr [r8 + 8]
 test rdx, rdx
 je .Lx68_114
 jmp .Lx68_116
.Lx68_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx68_117
.Lx68_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx68_117
.Lx68_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx68_117:
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain62_n6_α
 jmp xchain62_n5_α
 xchain62_n4_β:
 jmp xchain62_n6_α
# IR_VAR_REF
 xchain62_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain62_n7_α
# IR_VAR_REF
 xchain62_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain62_n8_α
# IR_LIT_STRING
 xchain62_n7_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain62_n9_α
.Lx73_0:
 .quad .Lx73_0_s
.Lx73_0_s:
 .string "[]"
# IR_VAR_REF
 xchain62_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1808]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain62_n10_α
 xchain62_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1456]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1464], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1456]
 mov rsi, qword ptr [rip + .Lx76_2]
 jmp .Lx76_3
.Lx76_2:
 .quad .Lx76_2_s
.Lx76_2_s:
 .string "[]"
.Lx76_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain62_n12_α
 jmp xchain62_n11_α
 xchain62_n9_β:
 jmp xchain62_n12_α
 xchain62_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1072]
 lea r8, [rbp + 1072]
.Lx77_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx77_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx77_41
 cmp esi, 1
 jne .Lx77_55
 mov r8, rax
 jmp .Lx77_40
.Lx77_55:
 cmp esi, 2
 jne .Lx77_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx77_41
 mov r8, rax
 jmp .Lx77_40
.Lx77_56:
 cmp eax, 13
 jne .Lx77_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx77_41
 cmp rax, r8
 je .Lx77_41
 mov r8, rax
 jmp .Lx77_40
.Lx77_41:
 lea r9, [rbp + 1088]
.Lx77_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx77_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx77_43
 cmp esi, 1
 jne .Lx77_57
 mov r9, rax
 jmp .Lx77_42
.Lx77_57:
 cmp esi, 2
 jne .Lx77_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx77_43
 mov r9, rax
 jmp .Lx77_42
.Lx77_58:
 cmp eax, 13
 jne .Lx77_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx77_43
 cmp rax, r9
 je .Lx77_43
 mov r9, rax
 jmp .Lx77_42
.Lx77_43:
 cmp r8, r9
 je .Lx77_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx77_44
 cmp eax, 99
 je .Lx77_44
 cmp eax, 13
 jne .Lx77_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx77_44
 jmp .Lx77_45
.Lx77_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx77_53
 cmp eax, 99
 je .Lx77_53
 cmp eax, 13
 jne .Lx77_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx77_53
 jmp .Lx77_46
.Lx77_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx77_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx77_53
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
 jmp .Lx77_51
.Lx77_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx77_47
 cmp eax, 99
 je .Lx77_47
 cmp eax, 13
 jne .Lx77_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx77_47
 jmp .Lx77_48
.Lx77_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx77_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx77_53
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
 jmp .Lx77_51
.Lx77_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx77_49
 cmp edx, 14
 je .Lx77_53
 jmp .Lx77_52
.Lx77_49:
 cmp edx, 14
 je .Lx77_52
 cmp ecx, 7
 je .Lx77_53
 cmp edx, 7
 je .Lx77_53
 cmp ecx, 6
 jne .Lx77_50
 cmp edx, 6
 jne .Lx77_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx77_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx77_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx77_51
 jmp .Lx77_52
.Lx77_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx77_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx77_53
.Lx77_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx77_54
.Lx77_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx77_54
.Lx77_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx77_54:
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain62_n14_α
 jmp xchain62_n13_α
 xchain62_n10_β:
 jmp xchain62_n14_α
# IR_VAR_REF
 xchain62_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain62_n15_α
 xchain62_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1184]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1184]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je proc_queens$2F3_ω
 jmp xchain62_n6_α
 xchain62_n12_β:
 jmp proc_queens$2F3_ω
# IR_VAR_REF
 xchain62_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain62_n16_α
 xchain62_n14_α:
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
 je proc_queens$2F3_ω
 jmp proc_queens$2F3_ω
 xchain62_n14_β:
 jmp proc_queens$2F3_ω
# IR_VAR_REF
 xchain62_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain62_n17_α
# IR_VAR_REF
 xchain62_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain62_n18_α
 xchain62_n17_α:
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
.Lx88_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx88_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx88_41
 cmp esi, 1
 jne .Lx88_55
 mov r8, rax
 jmp .Lx88_40
.Lx88_55:
 cmp esi, 2
 jne .Lx88_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx88_41
 mov r8, rax
 jmp .Lx88_40
.Lx88_56:
 cmp eax, 13
 jne .Lx88_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx88_41
 cmp rax, r8
 je .Lx88_41
 mov r8, rax
 jmp .Lx88_40
.Lx88_41:
 lea r9, [rbp + 1360]
.Lx88_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx88_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx88_43
 cmp esi, 1
 jne .Lx88_57
 mov r9, rax
 jmp .Lx88_42
.Lx88_57:
 cmp esi, 2
 jne .Lx88_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx88_43
 mov r9, rax
 jmp .Lx88_42
.Lx88_58:
 cmp eax, 13
 jne .Lx88_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx88_43
 cmp rax, r9
 je .Lx88_43
 mov r9, rax
 jmp .Lx88_42
.Lx88_43:
 cmp r8, r9
 je .Lx88_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx88_44
 cmp eax, 99
 je .Lx88_44
 cmp eax, 13
 jne .Lx88_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx88_44
 jmp .Lx88_45
.Lx88_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx88_53
 cmp eax, 99
 je .Lx88_53
 cmp eax, 13
 jne .Lx88_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx88_53
 jmp .Lx88_46
.Lx88_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx88_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx88_53
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
 jmp .Lx88_51
.Lx88_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx88_47
 cmp eax, 99
 je .Lx88_47
 cmp eax, 13
 jne .Lx88_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx88_47
 jmp .Lx88_48
.Lx88_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx88_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx88_53
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
 jmp .Lx88_51
.Lx88_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx88_49
 cmp edx, 14
 je .Lx88_53
 jmp .Lx88_52
.Lx88_49:
 cmp edx, 14
 je .Lx88_52
 cmp ecx, 7
 je .Lx88_53
 cmp edx, 7
 je .Lx88_53
 cmp ecx, 6
 jne .Lx88_50
 cmp edx, 6
 jne .Lx88_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx88_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx88_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx88_51
 jmp .Lx88_52
.Lx88_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx88_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx88_53
.Lx88_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx88_54
.Lx88_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx88_54
.Lx88_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx88_54:
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain62_n12_α
 jmp xchain62_n19_α
 xchain62_n17_β:
 jmp xchain62_n12_α
 xchain62_n18_α:
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
.Lx89_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx89_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx89_41
 cmp esi, 1
 jne .Lx89_55
 mov r8, rax
 jmp .Lx89_40
.Lx89_55:
 cmp esi, 2
 jne .Lx89_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx89_41
 mov r8, rax
 jmp .Lx89_40
.Lx89_56:
 cmp eax, 13
 jne .Lx89_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx89_41
 cmp rax, r8
 je .Lx89_41
 mov r8, rax
 jmp .Lx89_40
.Lx89_41:
 lea r9, [rbp + 976]
.Lx89_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx89_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx89_43
 cmp esi, 1
 jne .Lx89_57
 mov r9, rax
 jmp .Lx89_42
.Lx89_57:
 cmp esi, 2
 jne .Lx89_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx89_43
 mov r9, rax
 jmp .Lx89_42
.Lx89_58:
 cmp eax, 13
 jne .Lx89_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx89_43
 cmp rax, r9
 je .Lx89_43
 mov r9, rax
 jmp .Lx89_42
.Lx89_43:
 cmp r8, r9
 je .Lx89_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx89_44
 cmp eax, 99
 je .Lx89_44
 cmp eax, 13
 jne .Lx89_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx89_44
 jmp .Lx89_45
.Lx89_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx89_53
 cmp eax, 99
 je .Lx89_53
 cmp eax, 13
 jne .Lx89_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx89_53
 jmp .Lx89_46
.Lx89_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx89_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx89_53
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
 jmp .Lx89_51
.Lx89_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx89_47
 cmp eax, 99
 je .Lx89_47
 cmp eax, 13
 jne .Lx89_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx89_47
 jmp .Lx89_48
.Lx89_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx89_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx89_53
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
 jmp .Lx89_51
.Lx89_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx89_49
 cmp edx, 14
 je .Lx89_53
 jmp .Lx89_52
.Lx89_49:
 cmp edx, 14
 je .Lx89_52
 cmp ecx, 7
 je .Lx89_53
 cmp edx, 7
 je .Lx89_53
 cmp ecx, 6
 jne .Lx89_50
 cmp edx, 6
 jne .Lx89_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx89_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx89_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx89_51
 jmp .Lx89_52
.Lx89_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx89_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx89_53
.Lx89_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx89_54
.Lx89_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx89_54
.Lx89_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx89_54:
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain62_n14_α
 jmp xchain62_n20_α
 xchain62_n18_β:
 jmp xchain62_n14_α
# IR_VAR_REF
 xchain62_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain62_n21_α
# IR_VAR_REF
 xchain62_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain62_n22_α
# IR_VAR_REF
 xchain62_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain62_n23_α
# IR_VAR_REF
 xchain62_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain62_n24_α
 xchain62_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1232]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1248]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1256], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1232]
 lea r8, [rbp + 1232]
.Lx98_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx98_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx98_41
 cmp esi, 1
 jne .Lx98_55
 mov r8, rax
 jmp .Lx98_40
.Lx98_55:
 cmp esi, 2
 jne .Lx98_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx98_41
 mov r8, rax
 jmp .Lx98_40
.Lx98_56:
 cmp eax, 13
 jne .Lx98_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx98_41
 cmp rax, r8
 je .Lx98_41
 mov r8, rax
 jmp .Lx98_40
.Lx98_41:
 lea r9, [rbp + 1248]
.Lx98_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx98_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx98_43
 cmp esi, 1
 jne .Lx98_57
 mov r9, rax
 jmp .Lx98_42
.Lx98_57:
 cmp esi, 2
 jne .Lx98_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx98_43
 mov r9, rax
 jmp .Lx98_42
.Lx98_58:
 cmp eax, 13
 jne .Lx98_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx98_43
 cmp rax, r9
 je .Lx98_43
 mov r9, rax
 jmp .Lx98_42
.Lx98_43:
 cmp r8, r9
 je .Lx98_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx98_44
 cmp eax, 99
 je .Lx98_44
 cmp eax, 13
 jne .Lx98_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx98_44
 jmp .Lx98_45
.Lx98_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx98_53
 cmp eax, 99
 je .Lx98_53
 cmp eax, 13
 jne .Lx98_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx98_53
 jmp .Lx98_46
.Lx98_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx98_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx98_53
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
 jmp .Lx98_51
.Lx98_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx98_47
 cmp eax, 99
 je .Lx98_47
 cmp eax, 13
 jne .Lx98_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx98_47
 jmp .Lx98_48
.Lx98_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx98_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx98_53
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
 jmp .Lx98_51
.Lx98_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx98_49
 cmp edx, 14
 je .Lx98_53
 jmp .Lx98_52
.Lx98_49:
 cmp edx, 14
 je .Lx98_52
 cmp ecx, 7
 je .Lx98_53
 cmp edx, 7
 je .Lx98_53
 cmp ecx, 6
 jne .Lx98_50
 cmp edx, 6
 jne .Lx98_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx98_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx98_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx98_51
 jmp .Lx98_52
.Lx98_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx98_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx98_53
.Lx98_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx98_54
.Lx98_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx98_54
.Lx98_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx98_54:
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain62_n12_α
 jmp xchain62_n25_α
 xchain62_n23_β:
 jmp xchain62_n12_α
 xchain62_n24_α:
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
.Lx99_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx99_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx99_41
 cmp esi, 1
 jne .Lx99_55
 mov r8, rax
 jmp .Lx99_40
.Lx99_55:
 cmp esi, 2
 jne .Lx99_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx99_41
 mov r8, rax
 jmp .Lx99_40
.Lx99_56:
 cmp eax, 13
 jne .Lx99_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx99_41
 cmp rax, r8
 je .Lx99_41
 mov r8, rax
 jmp .Lx99_40
.Lx99_41:
 lea r9, [rbp + 864]
.Lx99_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx99_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx99_43
 cmp esi, 1
 jne .Lx99_57
 mov r9, rax
 jmp .Lx99_42
.Lx99_57:
 cmp esi, 2
 jne .Lx99_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx99_43
 mov r9, rax
 jmp .Lx99_42
.Lx99_58:
 cmp eax, 13
 jne .Lx99_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx99_43
 cmp rax, r9
 je .Lx99_43
 mov r9, rax
 jmp .Lx99_42
.Lx99_43:
 cmp r8, r9
 je .Lx99_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx99_44
 cmp eax, 99
 je .Lx99_44
 cmp eax, 13
 jne .Lx99_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx99_44
 jmp .Lx99_45
.Lx99_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx99_53
 cmp eax, 99
 je .Lx99_53
 cmp eax, 13
 jne .Lx99_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx99_53
 jmp .Lx99_46
.Lx99_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx99_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx99_53
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
 jmp .Lx99_51
.Lx99_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx99_47
 cmp eax, 99
 je .Lx99_47
 cmp eax, 13
 jne .Lx99_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx99_47
 jmp .Lx99_48
.Lx99_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx99_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx99_53
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
 jmp .Lx99_51
.Lx99_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx99_49
 cmp edx, 14
 je .Lx99_53
 jmp .Lx99_52
.Lx99_49:
 cmp edx, 14
 je .Lx99_52
 cmp ecx, 7
 je .Lx99_53
 cmp edx, 7
 je .Lx99_53
 cmp ecx, 6
 jne .Lx99_50
 cmp edx, 6
 jne .Lx99_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx99_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx99_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx99_51
 jmp .Lx99_52
.Lx99_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx99_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx99_53
.Lx99_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx99_54
.Lx99_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx99_54
.Lx99_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx99_54:
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain62_n14_α
 jmp xchain62_n26_α
 xchain62_n24_β:
 jmp xchain62_n14_α
# IR_SUSPEND yield+resume
 xchain62_n25_α:
 lea rax, [rip + xchain62_n25_β]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens$2F3_γ
 xchain62_n25_β:
 jmp xchain62_n12_α
# IR_VAR_REF
 xchain62_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1808]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain62_n27_α
# IR_VAR_REF
 xchain62_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain62_n28_α
# IR_VAR_REF
 xchain62_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain62_n29_α
 xchain62_n29_α:
 mov qword ptr [rbp + 704], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx109_20
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx109_21
.Lx109_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
.Lx109_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx109_22
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx109_23
.Lx109_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 call rt_arg_stage@PLT
.Lx109_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx109_24
 mov rax, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx109_25
.Lx109_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 call rt_arg_stage@PLT
.Lx109_25:
 mov edi, 0
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx109_1
 lea rcx, [rip + .Lx109_3]
 lea rdx, [rip + .Lx109_4]
 jmp rax
.Lx109_3:
 mov qword ptr [rbp + 712], rsp
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx109_5
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx109_2
.Lx109_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx109_2
.Lx109_4:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx109_6
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx109_2
.Lx109_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx109_2
.Lx109_1:
 call rt_faildescr@PLT
.Lx109_2:
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain62_n14_α
 jmp xchain62_n30_α
 xchain62_n29_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 712]
 jmp qword ptr [rsp]
.Lx109_0:
 .quad .Lx109_0_s
.Lx109_0_s:
 .string "sel/3"
# IR_VAR_REF
 xchain62_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain62_n31_α
# IR_VAR_REF
 xchain62_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain62_n32_α
 xchain62_n32_α:
 mov qword ptr [rbp + 544], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx115_20
 mov rax, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx115_21
.Lx115_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call rt_arg_stage@PLT
.Lx115_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx115_22
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx115_23
.Lx115_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call rt_arg_stage@PLT
.Lx115_23:
 mov edi, 4
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx115_1
 lea rcx, [rip + .Lx115_3]
 lea rdx, [rip + .Lx115_4]
 jmp rax
.Lx115_3:
 mov qword ptr [rbp + 552], rsp
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx115_5
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx115_2
.Lx115_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx115_2
.Lx115_4:
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx115_6
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx115_2
.Lx115_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx115_2
.Lx115_1:
 call rt_faildescr@PLT
.Lx115_2:
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain62_n29_β
 jmp xchain62_n33_α
 xchain62_n32_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 552]
 jmp qword ptr [rsp]
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "not_attack/2"
# IR_VAR_REF
 xchain62_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain62_n34_α
# IR_LIT_STRING
 xchain62_n34_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain62_n35_α
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "."
# IR_VAR_REF
 xchain62_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain62_n36_α
# IR_VAR_REF
 xchain62_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain62_n37_α
 xchain62_n37_α:
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
 je xchain62_n14_α
 jmp xchain62_n38_α
 xchain62_n37_β:
 jmp xchain62_n14_α
# IR_VAR_REF
 xchain62_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain62_n39_α
 xchain62_n39_α:
 mov qword ptr [rbp + 224], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx127_20
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx127_21
.Lx127_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
.Lx127_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx127_22
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx127_23
.Lx127_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
.Lx127_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx127_24
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx127_25
.Lx127_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
.Lx127_25:
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx127_1
 lea rcx, [rip + .Lx127_3]
 lea rdx, [rip + .Lx127_4]
 jmp rax
.Lx127_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx127_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx127_2
.Lx127_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx127_2
.Lx127_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx127_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx127_2
.Lx127_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx127_2
.Lx127_1:
 call rt_faildescr@PLT
.Lx127_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain62_n32_β
 jmp xchain62_n40_α
 xchain62_n39_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
 .string "queens/3"
# IR_SUSPEND yield+resume
 xchain62_n40_α:
 lea rax, [rip + xchain62_n40_β]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens$2F3_γ
 xchain62_n40_β:
 jmp xchain62_n39_β
proc_queens$2F3_res:
add rsp, 8
pop rbp
proc_queens$2F3_β:
jmp qword ptr [rbp + 1712]
proc_queens$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_queens$2F3_res]
push rax
mov rax, [rbp + 1832]
mov rbp, [rbp + 1848]
jmp rax
proc_queens$2F3_ω:
mov rax, [rbp + 1840]
lea rsp, [rbp + 1856]
mov rbp, [rbp + 1848]
jmp rax
  .globl proc_queens$2F2_α
proc_queens$2F2_α:
#=======================================================================================================================
    .global proc_queens$2F2_α
    .global proc_queens$2F2_β
    .global proc_queens$2F2_γ
    .global proc_queens$2F2_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 760], rsp
  mov rdi, rsp
  mov esi, 736
  mov edx, 816
  call rt_jmp_frame_lexprep2@PLT
proc_queens$2F2_α_body:
lea rax, [rip + xchain130_n16_β]
mov qword ptr [rbp + 736], rax
 xchain130_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx131_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx131_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx131_101
.Lx131_100:
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx131_101:
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_queens$2F2_ω
 jmp xchain130_n1_α
 xchain130_n0_β:
 jmp proc_queens$2F2_ω
# IR_VAR_REF
 xchain130_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain130_n2_α
# IR_VAR_REF
 xchain130_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 800]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain130_n3_α
 xchain130_n3_α:
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
.Lx136_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx136_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx136_41
 cmp esi, 1
 jne .Lx136_55
 mov r8, rax
 jmp .Lx136_40
.Lx136_55:
 cmp esi, 2
 jne .Lx136_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx136_41
 mov r8, rax
 jmp .Lx136_40
.Lx136_56:
 cmp eax, 13
 jne .Lx136_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx136_41
 cmp rax, r8
 je .Lx136_41
 mov r8, rax
 jmp .Lx136_40
.Lx136_41:
 lea r9, [rbp + 656]
.Lx136_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx136_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx136_43
 cmp esi, 1
 jne .Lx136_57
 mov r9, rax
 jmp .Lx136_42
.Lx136_57:
 cmp esi, 2
 jne .Lx136_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx136_43
 mov r9, rax
 jmp .Lx136_42
.Lx136_58:
 cmp eax, 13
 jne .Lx136_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx136_43
 cmp rax, r9
 je .Lx136_43
 mov r9, rax
 jmp .Lx136_42
.Lx136_43:
 cmp r8, r9
 je .Lx136_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx136_44
 cmp eax, 99
 je .Lx136_44
 cmp eax, 13
 jne .Lx136_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx136_44
 jmp .Lx136_45
.Lx136_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx136_53
 cmp eax, 99
 je .Lx136_53
 cmp eax, 13
 jne .Lx136_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx136_53
 jmp .Lx136_46
.Lx136_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx136_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx136_53
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
 jmp .Lx136_51
.Lx136_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx136_47
 cmp eax, 99
 je .Lx136_47
 cmp eax, 13
 jne .Lx136_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx136_47
 jmp .Lx136_48
.Lx136_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx136_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx136_53
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
 jmp .Lx136_51
.Lx136_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx136_49
 cmp edx, 14
 je .Lx136_53
 jmp .Lx136_52
.Lx136_49:
 cmp edx, 14
 je .Lx136_52
 cmp ecx, 7
 je .Lx136_53
 cmp edx, 7
 je .Lx136_53
 cmp ecx, 6
 jne .Lx136_50
 cmp edx, 6
 jne .Lx136_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx136_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx136_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx136_51
 jmp .Lx136_52
.Lx136_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx136_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx136_53
.Lx136_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx136_54
.Lx136_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx136_54
.Lx136_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx136_54:
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain130_n5_α
 jmp xchain130_n4_α
 xchain130_n3_β:
 jmp xchain130_n5_α
# IR_VAR_REF
 xchain130_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain130_n6_α
 xchain130_n5_α:
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
 xchain130_n5_β:
 jmp proc_queens$2F2_ω
# IR_VAR_REF
 xchain130_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 784]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain130_n7_α
 xchain130_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 528]
 lea r8, [rbp + 528]
.Lx142_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx142_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx142_41
 cmp esi, 1
 jne .Lx142_55
 mov r8, rax
 jmp .Lx142_40
.Lx142_55:
 cmp esi, 2
 jne .Lx142_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx142_41
 mov r8, rax
 jmp .Lx142_40
.Lx142_56:
 cmp eax, 13
 jne .Lx142_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx142_41
 cmp rax, r8
 je .Lx142_41
 mov r8, rax
 jmp .Lx142_40
.Lx142_41:
 lea r9, [rbp + 544]
.Lx142_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx142_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx142_43
 cmp esi, 1
 jne .Lx142_57
 mov r9, rax
 jmp .Lx142_42
.Lx142_57:
 cmp esi, 2
 jne .Lx142_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx142_43
 mov r9, rax
 jmp .Lx142_42
.Lx142_58:
 cmp eax, 13
 jne .Lx142_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx142_43
 cmp rax, r9
 je .Lx142_43
 mov r9, rax
 jmp .Lx142_42
.Lx142_43:
 cmp r8, r9
 je .Lx142_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx142_44
 cmp eax, 99
 je .Lx142_44
 cmp eax, 13
 jne .Lx142_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx142_44
 jmp .Lx142_45
.Lx142_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx142_53
 cmp eax, 99
 je .Lx142_53
 cmp eax, 13
 jne .Lx142_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx142_53
 jmp .Lx142_46
.Lx142_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx142_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx142_53
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
 jmp .Lx142_51
.Lx142_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx142_47
 cmp eax, 99
 je .Lx142_47
 cmp eax, 13
 jne .Lx142_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx142_47
 jmp .Lx142_48
.Lx142_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx142_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx142_53
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
 jmp .Lx142_51
.Lx142_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx142_49
 cmp edx, 14
 je .Lx142_53
 jmp .Lx142_52
.Lx142_49:
 cmp edx, 14
 je .Lx142_52
 cmp ecx, 7
 je .Lx142_53
 cmp edx, 7
 je .Lx142_53
 cmp ecx, 6
 jne .Lx142_50
 cmp edx, 6
 jne .Lx142_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx142_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx142_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx142_51
 jmp .Lx142_52
.Lx142_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx142_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx142_53
.Lx142_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx142_54
.Lx142_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx142_54
.Lx142_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx142_54:
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain130_n5_α
 jmp xchain130_n8_α
 xchain130_n7_β:
 jmp xchain130_n5_α
# IR_LIT_INTEGER
 xchain130_n8_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx143_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain130_n9_α
.Lx143_0:
 .quad 1
# IR_VAR_REF
 xchain130_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 800]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain130_n10_α
# IR_VAR_REF
 xchain130_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 768]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain130_n11_α
 xchain130_n11_α:
 lea rsi, [rbp + 416]
 lea rdx, [rbp + 448]
 lea rcx, [rbp + 480]
 call proc_range$2F3_dcα
 jmp .Lx149_2
.Lx149_2:
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain130_n5_α
 jmp xchain130_n12_α
 xchain130_n11_β:
 jmp xchain130_n5_α
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string "range/3"
# IR_VAR_REF
 xchain130_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 768]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain130_n13_α
# IR_LIT_STRING
 xchain130_n13_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain130_n14_α
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "[]"
# IR_VAR_REF
 xchain130_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 784]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain130_n15_α
 xchain130_n15_α:
 mov qword ptr [rbp + 208], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx156_20
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx156_21
.Lx156_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
.Lx156_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx156_22
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx156_23
.Lx156_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
.Lx156_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx156_24
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx156_25
.Lx156_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
.Lx156_25:
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx156_1
 lea rcx, [rip + .Lx156_3]
 lea rdx, [rip + .Lx156_4]
 jmp rax
.Lx156_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx156_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx156_2
.Lx156_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx156_2
.Lx156_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx156_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx156_2
.Lx156_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx156_2
.Lx156_1:
 call rt_faildescr@PLT
.Lx156_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain130_n11_β
 jmp xchain130_n16_α
 xchain130_n15_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "queens/3"
# IR_SUSPEND yield+resume
 xchain130_n16_α:
 lea rax, [rip + xchain130_n16_β]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens$2F2_γ
 xchain130_n16_β:
 jmp xchain130_n15_β
proc_queens$2F2_res:
add rsp, 8
pop rbp
proc_queens$2F2_β:
jmp qword ptr [rbp + 736]
proc_queens$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_queens$2F2_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_queens$2F2_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_range$2F3_α
proc_range$2F3_α:
#=======================================================================================================================
    .global proc_range$2F3_α
    .global proc_range$2F3_β
    .global proc_range$2F3_γ
    .global proc_range$2F3_ω
  sub rsp, 1664
  mov [rsp + 1640], rcx
  mov [rsp + 1648], rdx
  mov [rsp + 1656], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1560], rsp
  mov rdi, rsp
  mov esi, 1552
  mov edx, 1632
  call rt_jmp_frame_lexprep2@PLT
proc_range$2F3_α_body:
 xchain159_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx160_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx160_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx160_101
.Lx160_100:
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx160_101:
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_range$2F3_ω
 jmp xchain159_n1_α
 xchain159_n0_β:
 jmp proc_range$2F3_ω
# IR_VAR_REF
 xchain159_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain159_n2_α
# IR_VAR_REF
 xchain159_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain159_n3_α
 xchain159_n3_α:
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
.Lx165_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx165_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx165_41
 cmp esi, 1
 jne .Lx165_55
 mov r8, rax
 jmp .Lx165_40
.Lx165_55:
 cmp esi, 2
 jne .Lx165_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx165_41
 mov r8, rax
 jmp .Lx165_40
.Lx165_56:
 cmp eax, 13
 jne .Lx165_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx165_41
 cmp rax, r8
 je .Lx165_41
 mov r8, rax
 jmp .Lx165_40
.Lx165_41:
 lea r9, [rbp + 1472]
.Lx165_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx165_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx165_43
 cmp esi, 1
 jne .Lx165_57
 mov r9, rax
 jmp .Lx165_42
.Lx165_57:
 cmp esi, 2
 jne .Lx165_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx165_43
 mov r9, rax
 jmp .Lx165_42
.Lx165_58:
 cmp eax, 13
 jne .Lx165_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx165_43
 cmp rax, r9
 je .Lx165_43
 mov r9, rax
 jmp .Lx165_42
.Lx165_43:
 cmp r8, r9
 je .Lx165_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx165_44
 cmp eax, 99
 je .Lx165_44
 cmp eax, 13
 jne .Lx165_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx165_44
 jmp .Lx165_45
.Lx165_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx165_53
 cmp eax, 99
 je .Lx165_53
 cmp eax, 13
 jne .Lx165_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx165_53
 jmp .Lx165_46
.Lx165_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx165_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx165_53
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
 jmp .Lx165_51
.Lx165_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx165_47
 cmp eax, 99
 je .Lx165_47
 cmp eax, 13
 jne .Lx165_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx165_47
 jmp .Lx165_48
.Lx165_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx165_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx165_53
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
 jmp .Lx165_51
.Lx165_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx165_49
 cmp edx, 14
 je .Lx165_53
 jmp .Lx165_52
.Lx165_49:
 cmp edx, 14
 je .Lx165_52
 cmp ecx, 7
 je .Lx165_53
 cmp edx, 7
 je .Lx165_53
 cmp ecx, 6
 jne .Lx165_50
 cmp edx, 6
 jne .Lx165_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx165_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx165_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx165_51
 jmp .Lx165_52
.Lx165_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx165_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx165_53
.Lx165_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx165_54
.Lx165_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx165_54
.Lx165_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx165_54:
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain159_n5_α
 jmp xchain159_n4_α
 xchain159_n3_β:
 jmp xchain159_n5_α
# IR_VAR_REF
 xchain159_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain159_n6_α
 xchain159_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1056]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1056]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je proc_range$2F3_ω
 jmp xchain159_n7_α
 xchain159_n5_β:
 jmp proc_range$2F3_ω
# IR_VAR_REF
 xchain159_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain159_n8_α
# IR_VAR_REF
 xchain159_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain159_n9_α
 xchain159_n8_α:
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
.Lx173_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx173_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx173_41
 cmp esi, 1
 jne .Lx173_55
 mov r8, rax
 jmp .Lx173_40
.Lx173_55:
 cmp esi, 2
 jne .Lx173_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx173_41
 mov r8, rax
 jmp .Lx173_40
.Lx173_56:
 cmp eax, 13
 jne .Lx173_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx173_41
 cmp rax, r8
 je .Lx173_41
 mov r8, rax
 jmp .Lx173_40
.Lx173_41:
 lea r9, [rbp + 1360]
.Lx173_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx173_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx173_43
 cmp esi, 1
 jne .Lx173_57
 mov r9, rax
 jmp .Lx173_42
.Lx173_57:
 cmp esi, 2
 jne .Lx173_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx173_43
 mov r9, rax
 jmp .Lx173_42
.Lx173_58:
 cmp eax, 13
 jne .Lx173_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx173_43
 cmp rax, r9
 je .Lx173_43
 mov r9, rax
 jmp .Lx173_42
.Lx173_43:
 cmp r8, r9
 je .Lx173_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx173_44
 cmp eax, 99
 je .Lx173_44
 cmp eax, 13
 jne .Lx173_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx173_44
 jmp .Lx173_45
.Lx173_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx173_53
 cmp eax, 99
 je .Lx173_53
 cmp eax, 13
 jne .Lx173_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx173_53
 jmp .Lx173_46
.Lx173_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx173_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx173_53
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
 jmp .Lx173_51
.Lx173_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx173_47
 cmp eax, 99
 je .Lx173_47
 cmp eax, 13
 jne .Lx173_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx173_47
 jmp .Lx173_48
.Lx173_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx173_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx173_53
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
 jmp .Lx173_51
.Lx173_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx173_49
 cmp edx, 14
 je .Lx173_53
 jmp .Lx173_52
.Lx173_49:
 cmp edx, 14
 je .Lx173_52
 cmp ecx, 7
 je .Lx173_53
 cmp edx, 7
 je .Lx173_53
 cmp ecx, 6
 jne .Lx173_50
 cmp edx, 6
 jne .Lx173_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx173_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx173_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx173_51
 jmp .Lx173_52
.Lx173_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx173_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx173_53
.Lx173_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx173_54
.Lx173_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx173_54
.Lx173_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx173_54:
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain159_n5_α
 jmp xchain159_n10_α
 xchain159_n8_β:
 jmp xchain159_n5_α
# IR_VAR_REF
 xchain159_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain159_n11_α
# IR_VAR_REF
 xchain159_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain159_n12_α
 xchain159_n11_α:
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
 lea r9, [rbp + 960]
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
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain159_n14_α
 jmp xchain159_n13_α
 xchain159_n11_β:
 jmp xchain159_n14_α
# IR_LIT_STRING
 xchain159_n12_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain159_n15_α
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "."
# IR_VAR_REF
 xchain159_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain159_n16_α
 xchain159_n14_α:
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
 je proc_range$2F3_ω
 jmp proc_range$2F3_ω
 xchain159_n14_β:
 jmp proc_range$2F3_ω
# IR_VAR_REF
 xchain159_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain159_n17_α
# IR_VAR_REF
 xchain159_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1584]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain159_n18_α
# IR_LIT_STRING
 xchain159_n17_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain159_n19_α
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "[]"
 xchain159_n18_α:
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
.Lx188_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx188_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx188_41
 cmp esi, 1
 jne .Lx188_55
 mov r8, rax
 jmp .Lx188_40
.Lx188_55:
 cmp esi, 2
 jne .Lx188_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx188_41
 mov r8, rax
 jmp .Lx188_40
.Lx188_56:
 cmp eax, 13
 jne .Lx188_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx188_41
 cmp rax, r8
 je .Lx188_41
 mov r8, rax
 jmp .Lx188_40
.Lx188_41:
 lea r9, [rbp + 848]
.Lx188_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx188_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx188_43
 cmp esi, 1
 jne .Lx188_57
 mov r9, rax
 jmp .Lx188_42
.Lx188_57:
 cmp esi, 2
 jne .Lx188_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx188_43
 mov r9, rax
 jmp .Lx188_42
.Lx188_58:
 cmp eax, 13
 jne .Lx188_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx188_43
 cmp rax, r9
 je .Lx188_43
 mov r9, rax
 jmp .Lx188_42
.Lx188_43:
 cmp r8, r9
 je .Lx188_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx188_44
 cmp eax, 99
 je .Lx188_44
 cmp eax, 13
 jne .Lx188_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx188_44
 jmp .Lx188_45
.Lx188_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx188_53
 cmp eax, 99
 je .Lx188_53
 cmp eax, 13
 jne .Lx188_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx188_53
 jmp .Lx188_46
.Lx188_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx188_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx188_53
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
 jmp .Lx188_51
.Lx188_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx188_47
 cmp eax, 99
 je .Lx188_47
 cmp eax, 13
 jne .Lx188_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx188_47
 jmp .Lx188_48
.Lx188_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx188_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx188_53
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
 jmp .Lx188_51
.Lx188_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx188_49
 cmp edx, 14
 je .Lx188_53
 jmp .Lx188_52
.Lx188_49:
 cmp edx, 14
 je .Lx188_52
 cmp ecx, 7
 je .Lx188_53
 cmp edx, 7
 je .Lx188_53
 cmp ecx, 6
 jne .Lx188_50
 cmp edx, 6
 jne .Lx188_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx188_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx188_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx188_51
 jmp .Lx188_52
.Lx188_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx188_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx188_53
.Lx188_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx188_54
.Lx188_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx188_54
.Lx188_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx188_54:
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain159_n14_α
 jmp xchain159_n20_α
 xchain159_n18_β:
 jmp xchain159_n14_α
 xchain159_n19_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1232]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1248]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1256], rax
# marshal arg2 = producer-box slot [zr+1152] -> [zr+1264]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain159_n5_α
 jmp xchain159_n21_α
 xchain159_n19_β:
 jmp xchain159_n5_α
# IR_VAR_REF
 xchain159_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain159_n22_α
 xchain159_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1088]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1104]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1112], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1088]
 lea r8, [rbp + 1088]
.Lx192_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx192_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx192_41
 cmp esi, 1
 jne .Lx192_55
 mov r8, rax
 jmp .Lx192_40
.Lx192_55:
 cmp esi, 2
 jne .Lx192_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx192_41
 mov r8, rax
 jmp .Lx192_40
.Lx192_56:
 cmp eax, 13
 jne .Lx192_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx192_41
 cmp rax, r8
 je .Lx192_41
 mov r8, rax
 jmp .Lx192_40
.Lx192_41:
 lea r9, [rbp + 1104]
.Lx192_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx192_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx192_43
 cmp esi, 1
 jne .Lx192_57
 mov r9, rax
 jmp .Lx192_42
.Lx192_57:
 cmp esi, 2
 jne .Lx192_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx192_43
 mov r9, rax
 jmp .Lx192_42
.Lx192_58:
 cmp eax, 13
 jne .Lx192_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx192_43
 cmp rax, r9
 je .Lx192_43
 mov r9, rax
 jmp .Lx192_42
.Lx192_43:
 cmp r8, r9
 je .Lx192_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx192_44
 cmp eax, 99
 je .Lx192_44
 cmp eax, 13
 jne .Lx192_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx192_44
 jmp .Lx192_45
.Lx192_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx192_53
 cmp eax, 99
 je .Lx192_53
 cmp eax, 13
 jne .Lx192_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx192_53
 jmp .Lx192_46
.Lx192_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx192_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx192_53
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
 jmp .Lx192_51
.Lx192_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx192_47
 cmp eax, 99
 je .Lx192_47
 cmp eax, 13
 jne .Lx192_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx192_47
 jmp .Lx192_48
.Lx192_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx192_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx192_53
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
 jmp .Lx192_51
.Lx192_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx192_49
 cmp edx, 14
 je .Lx192_53
 jmp .Lx192_52
.Lx192_49:
 cmp edx, 14
 je .Lx192_52
 cmp ecx, 7
 je .Lx192_53
 cmp edx, 7
 je .Lx192_53
 cmp ecx, 6
 jne .Lx192_50
 cmp edx, 6
 jne .Lx192_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx192_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx192_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx192_51
 jmp .Lx192_52
.Lx192_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx192_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx192_53
.Lx192_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx192_54
.Lx192_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx192_54
.Lx192_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx192_54:
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain159_n5_α
 jmp xchain159_n23_α
 xchain159_n21_β:
 jmp xchain159_n5_α
# IR_VAR_REF
 xchain159_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain159_n24_α
 xchain159_n23_α:
# IR_CUT
 jmp xchain159_n25_α
# IR_VAR_REF
 xchain159_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain159_n26_α
# IR_MOVE_LABEL
 xchain159_n25_α:
 lea rax, [rip + xchain159_n5_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_range$2F3_γ
 xchain159_n26_α:
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
.Lx200_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx200_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx200_61
 cmp esi, 1
 jne .Lx200_62
 mov r8, rax
 jmp .Lx200_60
.Lx200_62:
 cmp esi, 2
 jne .Lx200_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx200_61
 mov r8, rax
 jmp .Lx200_60
.Lx200_63:
 cmp eax, 13
 jne .Lx200_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx200_61
 cmp rax, r8
 je .Lx200_61
 mov r8, rax
 jmp .Lx200_60
.Lx200_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx200_80
 cmp eax, 99
 je .Lx200_80
 cmp eax, 13
 jne .Lx200_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx200_80
 jmp .Lx200_74
.Lx200_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx200_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx200_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx200_73
 lea r9, [rbp + 720]
.Lx200_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx200_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx200_65
 cmp esi, 1
 jne .Lx200_66
 mov r9, rax
 jmp .Lx200_64
.Lx200_66:
 cmp esi, 2
 jne .Lx200_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx200_65
 mov r9, rax
 jmp .Lx200_64
.Lx200_67:
 cmp eax, 13
 jne .Lx200_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx200_65
 cmp rax, r9
 je .Lx200_65
 mov r9, rax
 jmp .Lx200_64
.Lx200_65:
 lea rcx, [rbp + 736]
.Lx200_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx200_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx200_69
 cmp esi, 1
 jne .Lx200_70
 mov rcx, rax
 jmp .Lx200_68
.Lx200_70:
 cmp esi, 2
 jne .Lx200_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx200_69
 mov rcx, rax
 jmp .Lx200_68
.Lx200_71:
 cmp eax, 13
 jne .Lx200_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx200_69
 cmp rax, rcx
 je .Lx200_69
 mov rcx, rax
 jmp .Lx200_68
.Lx200_69:
 cmp r9, rcx
 je .Lx200_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx200_75
 cmp eax, 99
 je .Lx200_75
 cmp eax, 13
 jne .Lx200_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx200_75
 jmp .Lx200_72
.Lx200_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx200_76
 cmp eax, 99
 je .Lx200_76
 cmp eax, 13
 jne .Lx200_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx200_76
 jmp .Lx200_72
.Lx200_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx200_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx200_72
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
 jmp .Lx200_77
.Lx200_80:
# PL-SINK-3 inline $unify_lst WRITE mode: carve 2 kids off the PLJ frontier, join unbound args, bind subject to the './2 cell
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx200_72
 lea r10, [rip + g_hp_fr]
 mov eax, dword ptr [r10 + 24]
 test eax, eax
 je .Lx200_72
 mov r11, qword ptr [r10 + 0]
 mov rax, qword ptr [r10 + 8]
 sub rax, 48
 cmp r11, rax
 ja .Lx200_72
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx200_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 72
 cmp rsi, rax
 ja .Lx200_72
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
 lea r9, [rbp + 720]
.Lx200_81:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx200_84
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx200_82
 cmp esi, 1
 jne .Lx200_83
 mov r9, rax
 jmp .Lx200_81
.Lx200_83:
 cmp esi, 2
 jne .Lx200_82
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx200_82
 mov r9, rax
 jmp .Lx200_81
.Lx200_84:
 cmp eax, 13
 jne .Lx200_82
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx200_82
 cmp rax, r9
 je .Lx200_82
 mov r9, rax
 jmp .Lx200_81
.Lx200_82:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx200_85
 cmp eax, 99
 je .Lx200_85
 cmp eax, 13
 jne .Lx200_86
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx200_85
 jmp .Lx200_86
.Lx200_85:
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
 jmp .Lx200_87
.Lx200_86:
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [rdx + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [rdx + 8], rax
.Lx200_87:
 lea rcx, [rbp + 736]
.Lx200_88:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx200_91
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx200_89
 cmp esi, 1
 jne .Lx200_90
 mov rcx, rax
 jmp .Lx200_88
.Lx200_90:
 cmp esi, 2
 jne .Lx200_89
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx200_89
 mov rcx, rax
 jmp .Lx200_88
.Lx200_91:
 cmp eax, 13
 jne .Lx200_89
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx200_89
 cmp rax, rcx
 je .Lx200_89
 mov rcx, rax
 jmp .Lx200_88
.Lx200_89:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx200_92
 cmp eax, 99
 je .Lx200_92
 cmp eax, 13
 jne .Lx200_93
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx200_92
 jmp .Lx200_93
.Lx200_92:
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
 jmp .Lx200_94
.Lx200_93:
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rdx + 16], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [rdx + 24], rax
.Lx200_94:
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
 jmp .Lx200_77
.Lx200_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx200_77
.Lx200_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx200_77:
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain159_n14_α
 jmp xchain159_n28_α
 xchain159_n26_β:
 jmp xchain159_n14_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain159_n27_α:
 jmp qword ptr [rbp + 80]
 xchain159_n27_β:
 jmp proc_range$2F3_ω
# IR_VAR
 xchain159_n28_α:
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 600], rax
 jmp xchain159_n29_α
# IR_VAR
 xchain159_n29_α:
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 632], rax
 jmp xchain159_n30_α
 xchain159_n30_α:
# BOX IR_CALL $cmp_lt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_lt (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 2
 call rt_pl_dop_cmp_lt@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain159_n14_α
 jmp xchain159_n31_α
 xchain159_n30_β:
 jmp xchain159_n14_α
# IR_VAR_REF
 xchain159_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain159_n32_α
# IR_VAR
 xchain159_n32_α:
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 488], rax
 jmp xchain159_n33_α
# IR_LIT_INTEGER
 xchain159_n33_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain159_n34_α
.Lx212_0:
 .quad 1
 xchain159_n34_α:
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
 je xchain159_n14_α
 jmp xchain159_n35_α
 xchain159_n34_β:
 jmp xchain159_n14_α
 xchain159_n35_α:
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
 je xchain159_n14_α
 jmp xchain159_n36_α
 xchain159_n35_β:
 jmp xchain159_n14_α
# IR_VAR_REF
 xchain159_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain159_n37_α
# IR_VAR_REF
 xchain159_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1584]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain159_n38_α
# IR_VAR_REF
 xchain159_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain159_n39_α
 xchain159_n39_α:
 lea rsi, [rbp + 240]
 lea rdx, [rbp + 272]
 lea rcx, [rbp + 304]
 call proc_range$2F3_dcα
 jmp .Lx222_2
.Lx222_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain159_n14_α
 jmp xchain159_n40_α
 xchain159_n39_β:
 jmp xchain159_n14_α
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "range/3"
# IR_MOVE_LABEL
 xchain159_n40_α:
 lea rax, [rip + xchain159_n39_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_range$2F3_γ
proc_range$2F3_res:
add rsp, 8
pop rbp
proc_range$2F3_β:
jmp xchain159_n27_α
proc_range$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1640]
lea rsp, [rbp + 1664]
mov rbp, [rbp + 1656]
jmp rax
proc_range$2F3_ω:
mov rax, [rbp + 1648]
lea rsp, [rbp + 1664]
mov rbp, [rbp + 1656]
jmp rax
proc_range$2F3_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1680
 mov qword ptr [rsp + 1672], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1632], r11
 lea rax, [rip + .Lx225_2]
 mov qword ptr [rbp + 1640], rax
 lea rax, [rip + .Lx225_3]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1560], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov qword ptr [rbp + 32], rcx
 mov rdi, rbp
 mov esi, 1552
 mov edx, 1632
 mov ecx, 3
 mov r8d, 3
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_range$2F3_α_body
.Lx225_2:
 mov rdx, qword ptr [rsp + -1680]
 mov rcx, rsp
 add rcx, -1664
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx225_3:
 mov rdi, qword ptr [rsp + -1680]
 mov rsi, rsp
 add rsi, -1664
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_not_attack$2F2_α
proc_not_attack$2F2_α:
#=======================================================================================================================
    .global proc_not_attack$2F2_α
    .global proc_not_attack$2F2_β
    .global proc_not_attack$2F2_γ
    .global proc_not_attack$2F2_ω
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
proc_not_attack$2F2_α_body:
lea rax, [rip + xchain226_n12_β]
mov qword ptr [rbp + 560], rax
 xchain226_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx227_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx227_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx227_101
.Lx227_100:
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx227_101:
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_not_attack$2F2_ω
 jmp xchain226_n1_α
 xchain226_n0_β:
 jmp proc_not_attack$2F2_ω
# IR_VAR_REF
 xchain226_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain226_n2_α
# IR_VAR_REF
 xchain226_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 592]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain226_n3_α
 xchain226_n3_α:
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
.Lx232_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx232_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx232_41
 cmp esi, 1
 jne .Lx232_55
 mov r8, rax
 jmp .Lx232_40
.Lx232_55:
 cmp esi, 2
 jne .Lx232_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx232_41
 mov r8, rax
 jmp .Lx232_40
.Lx232_56:
 cmp eax, 13
 jne .Lx232_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx232_41
 cmp rax, r8
 je .Lx232_41
 mov r8, rax
 jmp .Lx232_40
.Lx232_41:
 lea r9, [rbp + 480]
.Lx232_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx232_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx232_43
 cmp esi, 1
 jne .Lx232_57
 mov r9, rax
 jmp .Lx232_42
.Lx232_57:
 cmp esi, 2
 jne .Lx232_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx232_43
 mov r9, rax
 jmp .Lx232_42
.Lx232_58:
 cmp eax, 13
 jne .Lx232_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx232_43
 cmp rax, r9
 je .Lx232_43
 mov r9, rax
 jmp .Lx232_42
.Lx232_43:
 cmp r8, r9
 je .Lx232_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx232_44
 cmp eax, 99
 je .Lx232_44
 cmp eax, 13
 jne .Lx232_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx232_44
 jmp .Lx232_45
.Lx232_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx232_53
 cmp eax, 99
 je .Lx232_53
 cmp eax, 13
 jne .Lx232_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx232_53
 jmp .Lx232_46
.Lx232_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx232_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx232_53
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
 jmp .Lx232_51
.Lx232_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx232_47
 cmp eax, 99
 je .Lx232_47
 cmp eax, 13
 jne .Lx232_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx232_47
 jmp .Lx232_48
.Lx232_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx232_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx232_53
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
 jmp .Lx232_51
.Lx232_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx232_49
 cmp edx, 14
 je .Lx232_53
 jmp .Lx232_52
.Lx232_49:
 cmp edx, 14
 je .Lx232_52
 cmp ecx, 7
 je .Lx232_53
 cmp edx, 7
 je .Lx232_53
 cmp ecx, 6
 jne .Lx232_50
 cmp edx, 6
 jne .Lx232_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx232_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx232_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx232_51
 jmp .Lx232_52
.Lx232_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx232_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx232_53
.Lx232_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx232_54
.Lx232_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx232_54
.Lx232_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx232_54:
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain226_n5_α
 jmp xchain226_n4_α
 xchain226_n3_β:
 jmp xchain226_n5_α
# IR_VAR_REF
 xchain226_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain226_n6_α
 xchain226_n5_α:
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
 xchain226_n5_β:
 jmp proc_not_attack$2F2_ω
# IR_VAR_REF
 xchain226_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 608]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain226_n7_α
 xchain226_n7_α:
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
.Lx238_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx238_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx238_41
 cmp esi, 1
 jne .Lx238_55
 mov r8, rax
 jmp .Lx238_40
.Lx238_55:
 cmp esi, 2
 jne .Lx238_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx238_41
 mov r8, rax
 jmp .Lx238_40
.Lx238_56:
 cmp eax, 13
 jne .Lx238_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx238_41
 cmp rax, r8
 je .Lx238_41
 mov r8, rax
 jmp .Lx238_40
.Lx238_41:
 lea r9, [rbp + 368]
.Lx238_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx238_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx238_43
 cmp esi, 1
 jne .Lx238_57
 mov r9, rax
 jmp .Lx238_42
.Lx238_57:
 cmp esi, 2
 jne .Lx238_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx238_43
 mov r9, rax
 jmp .Lx238_42
.Lx238_58:
 cmp eax, 13
 jne .Lx238_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx238_43
 cmp rax, r9
 je .Lx238_43
 mov r9, rax
 jmp .Lx238_42
.Lx238_43:
 cmp r8, r9
 je .Lx238_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx238_44
 cmp eax, 99
 je .Lx238_44
 cmp eax, 13
 jne .Lx238_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx238_44
 jmp .Lx238_45
.Lx238_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx238_53
 cmp eax, 99
 je .Lx238_53
 cmp eax, 13
 jne .Lx238_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx238_53
 jmp .Lx238_46
.Lx238_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx238_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx238_53
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
 jmp .Lx238_51
.Lx238_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx238_47
 cmp eax, 99
 je .Lx238_47
 cmp eax, 13
 jne .Lx238_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx238_47
 jmp .Lx238_48
.Lx238_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx238_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx238_53
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
 jmp .Lx238_51
.Lx238_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx238_49
 cmp edx, 14
 je .Lx238_53
 jmp .Lx238_52
.Lx238_49:
 cmp edx, 14
 je .Lx238_52
 cmp ecx, 7
 je .Lx238_53
 cmp edx, 7
 je .Lx238_53
 cmp ecx, 6
 jne .Lx238_50
 cmp edx, 6
 jne .Lx238_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx238_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx238_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx238_51
 jmp .Lx238_52
.Lx238_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx238_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx238_53
.Lx238_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx238_54
.Lx238_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx238_54
.Lx238_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx238_54:
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain226_n5_α
 jmp xchain226_n8_α
 xchain226_n7_β:
 jmp xchain226_n5_α
# IR_VAR_REF
 xchain226_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 592]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain226_n9_α
# IR_VAR_REF
 xchain226_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 608]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain226_n10_α
# IR_LIT_INTEGER
 xchain226_n10_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain226_n11_α
.Lx243_0:
 .quad 1
 xchain226_n11_α:
 mov qword ptr [rbp + 208], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx245_20
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx245_21
.Lx245_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
.Lx245_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx245_22
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx245_23
.Lx245_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
.Lx245_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx245_24
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx245_25
.Lx245_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
.Lx245_25:
 mov edi, 5
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx245_1
 lea rcx, [rip + .Lx245_3]
 lea rdx, [rip + .Lx245_4]
 jmp rax
.Lx245_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx245_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx245_2
.Lx245_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx245_2
.Lx245_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx245_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx245_2
.Lx245_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx245_2
.Lx245_1:
 call rt_faildescr@PLT
.Lx245_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain226_n5_α
 jmp xchain226_n12_α
 xchain226_n11_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "not_attack/3"
# IR_SUSPEND yield+resume
 xchain226_n12_α:
 lea rax, [rip + xchain226_n12_β]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_not_attack$2F2_γ
 xchain226_n12_β:
 jmp xchain226_n11_β
proc_not_attack$2F2_res:
add rsp, 8
pop rbp
proc_not_attack$2F2_β:
jmp qword ptr [rbp + 560]
proc_not_attack$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_not_attack$2F2_res]
push rax
mov rax, [rbp + 632]
mov rbp, [rbp + 648]
jmp rax
proc_not_attack$2F2_ω:
mov rax, [rbp + 640]
lea rsp, [rbp + 656]
mov rbp, [rbp + 648]
jmp rax
  .globl proc_not_attack$2F3_α
proc_not_attack$2F3_α:
#=======================================================================================================================
    .global proc_not_attack$2F3_α
    .global proc_not_attack$2F3_β
    .global proc_not_attack$2F3_γ
    .global proc_not_attack$2F3_ω
  sub rsp, 2208
  mov [rsp + 2184], rcx
  mov [rsp + 2192], rdx
  mov [rsp + 2200], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2088], rsp
  mov rdi, rsp
  mov esi, 2064
  mov edx, 2176
  call rt_jmp_frame_lexprep2@PLT
proc_not_attack$2F3_α_body:
lea rax, [rip + xchain248_n25_β]
mov qword ptr [rbp + 2064], rax
 xchain248_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx249_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx249_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx249_101
.Lx249_100:
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx249_101:
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_not_attack$2F3_ω
 jmp xchain248_n1_α
 xchain248_n0_β:
 jmp proc_not_attack$2F3_ω
# IR_VAR_REF
 xchain248_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain248_n2_α
# IR_LIT_INTEGER
 xchain248_n2_α:
 mov qword ptr [rbp + 2000], 6
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain248_n3_α
.Lx252_0:
 .quad 2
# IR_LIT_STRING
 xchain248_n3_α:
 mov qword ptr [rbp + 2032], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 2040], rax
 jmp xchain248_n4_α
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "[]"
 xchain248_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1968] -> [zr+1920]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1928], rax
# marshal arg1 = producer-box slot [zr+2000] -> [zr+1936]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1944], rax
# marshal arg2 = producer-box slot [zr+2032] -> [zr+1952]
 mov rax, qword ptr [rbp + 2032]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 2040]
 mov qword ptr [rbp + 1960], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1920]
 lea r8, [rbp + 1920]
.Lx254_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx254_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx254_111
 cmp esi, 1
 jne .Lx254_112
 mov r8, rax
 jmp .Lx254_110
.Lx254_112:
 cmp esi, 2
 jne .Lx254_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx254_111
 mov r8, rax
 jmp .Lx254_110
.Lx254_113:
 cmp eax, 13
 jne .Lx254_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx254_111
 cmp rax, r8
 je .Lx254_111
 mov r8, rax
 jmp .Lx254_110
.Lx254_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx254_114
 cmp eax, 99
 je .Lx254_114
 cmp eax, 13
 jne .Lx254_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx254_114
 jmp .Lx254_118
.Lx254_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 je .Lx254_115
 cmp eax, 6
 je .Lx254_114
 cmp eax, 1
 jne .Lx254_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx254_114
 mov rdx, qword ptr [r8 + 8]
 test rdx, rdx
 je .Lx254_114
 jmp .Lx254_116
.Lx254_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx254_117
.Lx254_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx254_117
.Lx254_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx254_117:
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain248_n6_α
 jmp xchain248_n5_α
 xchain248_n4_β:
 jmp xchain248_n6_α
# IR_VAR_REF
 xchain248_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain248_n7_α
# IR_VAR_REF
 xchain248_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain248_n8_α
# IR_LIT_STRING
 xchain248_n7_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx259_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain248_n9_α
.Lx259_0:
 .quad .Lx259_0_s
.Lx259_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain248_n8_α:
 mov qword ptr [rbp + 1456], 6
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain248_n10_α
.Lx260_0:
 .quad 3
 xchain248_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1808]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1816], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1808]
 mov rsi, qword ptr [rip + .Lx261_2]
 jmp .Lx261_3
.Lx261_2:
 .quad .Lx261_2_s
.Lx261_2_s:
 .string "[]"
.Lx261_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je xchain248_n12_α
 jmp xchain248_n11_α
 xchain248_n9_β:
 jmp xchain248_n12_α
# IR_LIT_INTEGER
 xchain248_n10_α:
 mov qword ptr [rbp + 1488], 6
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain248_n13_α
.Lx262_0:
 .quad 0
# IR_VAR_REF
 xchain248_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain248_n14_α
 xchain248_n12_α:
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
 je proc_not_attack$2F3_ω
 jmp xchain248_n6_α
 xchain248_n12_β:
 jmp proc_not_attack$2F3_ω
 xchain248_n13_α:
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
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1376]
 lea r8, [rbp + 1376]
.Lx266_110:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx266_113
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx266_111
 cmp esi, 1
 jne .Lx266_112
 mov r8, rax
 jmp .Lx266_110
.Lx266_112:
 cmp esi, 2
 jne .Lx266_111
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx266_111
 mov r8, rax
 jmp .Lx266_110
.Lx266_113:
 cmp eax, 13
 jne .Lx266_111
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx266_111
 cmp rax, r8
 je .Lx266_111
 mov r8, rax
 jmp .Lx266_110
.Lx266_111:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx266_114
 cmp eax, 99
 je .Lx266_114
 cmp eax, 13
 jne .Lx266_118
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx266_114
 jmp .Lx266_118
.Lx266_118:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 14
 jne .Lx266_119
 lea r10, [rip + g_plw_dot_sl]
 mov edx, dword ptr [r10 + 0]
 cmp edx, 0
 je .Lx266_116
 mov esi, dword ptr [r8 + 4]
 cmp esi, edx
 jne .Lx266_115
 jmp .Lx266_114
.Lx266_119:
 cmp eax, 6
 jne .Lx266_120
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx266_114
 jmp .Lx266_115
.Lx266_120:
 cmp eax, 1
 jne .Lx266_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx266_114
 mov rdx, qword ptr [r8 + 8]
 test rdx, rdx
 je .Lx266_114
 jmp .Lx266_115
.Lx266_114:
 mov eax, 6
 mov edx, 1
 jmp .Lx266_117
.Lx266_115:
 mov eax, 99
 mov edx, 0
 jmp .Lx266_117
.Lx266_116:
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
.Lx266_117:
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n15_α
 xchain248_n13_β:
 jmp xchain248_n16_α
# IR_VAR_REF
 xchain248_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2160]
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain248_n17_α
# IR_VAR_REF
 xchain248_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain248_n18_α
 xchain248_n16_α:
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
 xchain248_n16_β:
 jmp proc_not_attack$2F3_ω
 xchain248_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1728] -> [zr+1696]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1704], rax
# marshal arg1 = producer-box slot [zr+1760] -> [zr+1712]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1720], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1696]
 lea r8, [rbp + 1696]
.Lx272_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx272_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx272_41
 cmp esi, 1
 jne .Lx272_55
 mov r8, rax
 jmp .Lx272_40
.Lx272_55:
 cmp esi, 2
 jne .Lx272_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx272_41
 mov r8, rax
 jmp .Lx272_40
.Lx272_56:
 cmp eax, 13
 jne .Lx272_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx272_41
 cmp rax, r8
 je .Lx272_41
 mov r8, rax
 jmp .Lx272_40
.Lx272_41:
 lea r9, [rbp + 1712]
.Lx272_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx272_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx272_43
 cmp esi, 1
 jne .Lx272_57
 mov r9, rax
 jmp .Lx272_42
.Lx272_57:
 cmp esi, 2
 jne .Lx272_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx272_43
 mov r9, rax
 jmp .Lx272_42
.Lx272_58:
 cmp eax, 13
 jne .Lx272_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx272_43
 cmp rax, r9
 je .Lx272_43
 mov r9, rax
 jmp .Lx272_42
.Lx272_43:
 cmp r8, r9
 je .Lx272_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx272_44
 cmp eax, 99
 je .Lx272_44
 cmp eax, 13
 jne .Lx272_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx272_44
 jmp .Lx272_45
.Lx272_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx272_53
 cmp eax, 99
 je .Lx272_53
 cmp eax, 13
 jne .Lx272_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx272_53
 jmp .Lx272_46
.Lx272_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx272_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx272_53
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
 jmp .Lx272_51
.Lx272_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx272_47
 cmp eax, 99
 je .Lx272_47
 cmp eax, 13
 jne .Lx272_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx272_47
 jmp .Lx272_48
.Lx272_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx272_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx272_53
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
 jmp .Lx272_51
.Lx272_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx272_49
 cmp edx, 14
 je .Lx272_53
 jmp .Lx272_52
.Lx272_49:
 cmp edx, 14
 je .Lx272_52
 cmp ecx, 7
 je .Lx272_53
 cmp edx, 7
 je .Lx272_53
 cmp ecx, 6
 jne .Lx272_50
 cmp edx, 6
 jne .Lx272_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx272_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx272_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx272_51
 jmp .Lx272_52
.Lx272_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx272_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx272_53
.Lx272_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx272_54
.Lx272_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx272_54
.Lx272_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx272_54:
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je xchain248_n12_α
 jmp xchain248_n19_α
 xchain248_n17_β:
 jmp xchain248_n12_α
# IR_VAR_REF
 xchain248_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2160]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain248_n20_α
# IR_VAR_REF
 xchain248_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain248_n21_α
# IR_VAR_REF
 xchain248_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain248_n22_α
# IR_VAR_REF
 xchain248_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain248_n23_α
 xchain248_n22_α:
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
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1248]
 lea r8, [rbp + 1248]
.Lx281_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx281_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx281_61
 cmp esi, 1
 jne .Lx281_62
 mov r8, rax
 jmp .Lx281_60
.Lx281_62:
 cmp esi, 2
 jne .Lx281_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx281_61
 mov r8, rax
 jmp .Lx281_60
.Lx281_63:
 cmp eax, 13
 jne .Lx281_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx281_61
 cmp rax, r8
 je .Lx281_61
 mov r8, rax
 jmp .Lx281_60
.Lx281_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx281_80
 cmp eax, 99
 je .Lx281_80
 cmp eax, 13
 jne .Lx281_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx281_80
 jmp .Lx281_74
.Lx281_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx281_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx281_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx281_73
 lea r9, [rbp + 1264]
.Lx281_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx281_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx281_65
 cmp esi, 1
 jne .Lx281_66
 mov r9, rax
 jmp .Lx281_64
.Lx281_66:
 cmp esi, 2
 jne .Lx281_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx281_65
 mov r9, rax
 jmp .Lx281_64
.Lx281_67:
 cmp eax, 13
 jne .Lx281_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx281_65
 cmp rax, r9
 je .Lx281_65
 mov r9, rax
 jmp .Lx281_64
.Lx281_65:
 lea rcx, [rbp + 1280]
.Lx281_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx281_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx281_69
 cmp esi, 1
 jne .Lx281_70
 mov rcx, rax
 jmp .Lx281_68
.Lx281_70:
 cmp esi, 2
 jne .Lx281_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx281_69
 mov rcx, rax
 jmp .Lx281_68
.Lx281_71:
 cmp eax, 13
 jne .Lx281_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx281_69
 cmp rax, rcx
 je .Lx281_69
 mov rcx, rax
 jmp .Lx281_68
.Lx281_69:
 cmp r9, rcx
 je .Lx281_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx281_75
 cmp eax, 99
 je .Lx281_75
 cmp eax, 13
 jne .Lx281_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx281_75
 jmp .Lx281_72
.Lx281_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx281_76
 cmp eax, 99
 je .Lx281_76
 cmp eax, 13
 jne .Lx281_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx281_76
 jmp .Lx281_72
.Lx281_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx281_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx281_72
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
 jmp .Lx281_77
.Lx281_80:
# PL-SINK-3 inline $unify_lst WRITE mode: carve 2 kids off the PLJ frontier, join unbound args, bind subject to the './2 cell
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx281_72
 lea r10, [rip + g_hp_fr]
 mov eax, dword ptr [r10 + 24]
 test eax, eax
 je .Lx281_72
 mov r11, qword ptr [r10 + 0]
 mov rax, qword ptr [r10 + 8]
 sub rax, 48
 cmp r11, rax
 ja .Lx281_72
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx281_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 72
 cmp rsi, rax
 ja .Lx281_72
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
 lea r9, [rbp + 1264]
.Lx281_81:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx281_84
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx281_82
 cmp esi, 1
 jne .Lx281_83
 mov r9, rax
 jmp .Lx281_81
.Lx281_83:
 cmp esi, 2
 jne .Lx281_82
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx281_82
 mov r9, rax
 jmp .Lx281_81
.Lx281_84:
 cmp eax, 13
 jne .Lx281_82
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx281_82
 cmp rax, r9
 je .Lx281_82
 mov r9, rax
 jmp .Lx281_81
.Lx281_82:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx281_85
 cmp eax, 99
 je .Lx281_85
 cmp eax, 13
 jne .Lx281_86
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx281_85
 jmp .Lx281_86
.Lx281_85:
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
 jmp .Lx281_87
.Lx281_86:
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [rdx + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [rdx + 8], rax
.Lx281_87:
 lea rcx, [rbp + 1280]
.Lx281_88:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx281_91
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx281_89
 cmp esi, 1
 jne .Lx281_90
 mov rcx, rax
 jmp .Lx281_88
.Lx281_90:
 cmp esi, 2
 jne .Lx281_89
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx281_89
 mov rcx, rax
 jmp .Lx281_88
.Lx281_91:
 cmp eax, 13
 jne .Lx281_89
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx281_89
 cmp rax, rcx
 je .Lx281_89
 mov rcx, rax
 jmp .Lx281_88
.Lx281_89:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx281_92
 cmp eax, 99
 je .Lx281_92
 cmp eax, 13
 jne .Lx281_93
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx281_92
 jmp .Lx281_93
.Lx281_92:
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
 jmp .Lx281_94
.Lx281_93:
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rdx + 16], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [rdx + 24], rax
.Lx281_94:
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
 jmp .Lx281_77
.Lx281_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx281_77
.Lx281_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx281_77:
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n24_α
 xchain248_n22_β:
 jmp xchain248_n16_α
 xchain248_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1584]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1592], rax
# marshal arg1 = producer-box slot [zr+1648] -> [zr+1600]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1608], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1584]
 lea r8, [rbp + 1584]
.Lx282_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx282_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx282_41
 cmp esi, 1
 jne .Lx282_55
 mov r8, rax
 jmp .Lx282_40
.Lx282_55:
 cmp esi, 2
 jne .Lx282_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx282_41
 mov r8, rax
 jmp .Lx282_40
.Lx282_56:
 cmp eax, 13
 jne .Lx282_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx282_41
 cmp rax, r8
 je .Lx282_41
 mov r8, rax
 jmp .Lx282_40
.Lx282_41:
 lea r9, [rbp + 1600]
.Lx282_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx282_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx282_43
 cmp esi, 1
 jne .Lx282_57
 mov r9, rax
 jmp .Lx282_42
.Lx282_57:
 cmp esi, 2
 jne .Lx282_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx282_43
 mov r9, rax
 jmp .Lx282_42
.Lx282_58:
 cmp eax, 13
 jne .Lx282_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx282_43
 cmp rax, r9
 je .Lx282_43
 mov r9, rax
 jmp .Lx282_42
.Lx282_43:
 cmp r8, r9
 je .Lx282_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx282_44
 cmp eax, 99
 je .Lx282_44
 cmp eax, 13
 jne .Lx282_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx282_44
 jmp .Lx282_45
.Lx282_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx282_53
 cmp eax, 99
 je .Lx282_53
 cmp eax, 13
 jne .Lx282_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx282_53
 jmp .Lx282_46
.Lx282_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx282_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx282_53
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
 jmp .Lx282_51
.Lx282_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx282_47
 cmp eax, 99
 je .Lx282_47
 cmp eax, 13
 jne .Lx282_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx282_47
 jmp .Lx282_48
.Lx282_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx282_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx282_53
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
 jmp .Lx282_51
.Lx282_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx282_49
 cmp edx, 14
 je .Lx282_53
 jmp .Lx282_52
.Lx282_49:
 cmp edx, 14
 je .Lx282_52
 cmp ecx, 7
 je .Lx282_53
 cmp edx, 7
 je .Lx282_53
 cmp ecx, 6
 jne .Lx282_50
 cmp edx, 6
 jne .Lx282_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx282_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx282_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx282_51
 jmp .Lx282_52
.Lx282_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx282_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx282_53
.Lx282_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx282_54
.Lx282_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx282_54
.Lx282_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx282_54:
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je xchain248_n12_α
 jmp xchain248_n25_α
 xchain248_n23_β:
 jmp xchain248_n12_α
# IR_VAR_REF
 xchain248_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain248_n26_α
# IR_SUSPEND yield+resume
 xchain248_n25_α:
 lea rax, [rip + xchain248_n25_β]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_not_attack$2F3_γ
 xchain248_n25_β:
 jmp xchain248_n12_α
# IR_VAR_REF
 xchain248_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain248_n27_α
 xchain248_n27_α:
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
.Lx289_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx289_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx289_41
 cmp esi, 1
 jne .Lx289_55
 mov r8, rax
 jmp .Lx289_40
.Lx289_55:
 cmp esi, 2
 jne .Lx289_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx289_41
 mov r8, rax
 jmp .Lx289_40
.Lx289_56:
 cmp eax, 13
 jne .Lx289_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx289_41
 cmp rax, r8
 je .Lx289_41
 mov r8, rax
 jmp .Lx289_40
.Lx289_41:
 lea r9, [rbp + 1120]
.Lx289_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx289_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx289_43
 cmp esi, 1
 jne .Lx289_57
 mov r9, rax
 jmp .Lx289_42
.Lx289_57:
 cmp esi, 2
 jne .Lx289_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx289_43
 mov r9, rax
 jmp .Lx289_42
.Lx289_58:
 cmp eax, 13
 jne .Lx289_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx289_43
 cmp rax, r9
 je .Lx289_43
 mov r9, rax
 jmp .Lx289_42
.Lx289_43:
 cmp r8, r9
 je .Lx289_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx289_44
 cmp eax, 99
 je .Lx289_44
 cmp eax, 13
 jne .Lx289_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx289_44
 jmp .Lx289_45
.Lx289_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx289_53
 cmp eax, 99
 je .Lx289_53
 cmp eax, 13
 jne .Lx289_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx289_53
 jmp .Lx289_46
.Lx289_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx289_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx289_53
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
 jmp .Lx289_51
.Lx289_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx289_47
 cmp eax, 99
 je .Lx289_47
 cmp eax, 13
 jne .Lx289_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx289_47
 jmp .Lx289_48
.Lx289_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx289_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx289_53
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
 jmp .Lx289_51
.Lx289_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx289_49
 cmp edx, 14
 je .Lx289_53
 jmp .Lx289_52
.Lx289_49:
 cmp edx, 14
 je .Lx289_52
 cmp ecx, 7
 je .Lx289_53
 cmp edx, 7
 je .Lx289_53
 cmp ecx, 6
 jne .Lx289_50
 cmp edx, 6
 jne .Lx289_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx289_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx289_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx289_51
 jmp .Lx289_52
.Lx289_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx289_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx289_53
.Lx289_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx289_54
.Lx289_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx289_54
.Lx289_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx289_54:
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n28_α
 xchain248_n27_β:
 jmp xchain248_n16_α
# IR_VAR_REF
 xchain248_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain248_n29_α
# IR_VAR_REF
 xchain248_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2144]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain248_n30_α
 xchain248_n30_α:
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
 lea r9, [rbp + 1008]
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
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n31_α
 xchain248_n30_β:
 jmp xchain248_n16_α
# IR_VAR
 xchain248_n31_α:
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 824], rax
 jmp xchain248_n32_α
# IR_VAR
 xchain248_n32_α:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 920], rax
 jmp xchain248_n33_α
# IR_VAR
 xchain248_n33_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 952], rax
 jmp xchain248_n34_α
 xchain248_n34_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n35_α
 xchain248_n34_β:
 jmp xchain248_n16_α
 xchain248_n35_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n36_α
 xchain248_n35_β:
 jmp xchain248_n16_α
# IR_VAR
 xchain248_n36_α:
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 616], rax
 jmp xchain248_n37_α
# IR_VAR
 xchain248_n37_α:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 712], rax
 jmp xchain248_n38_α
# IR_VAR
 xchain248_n38_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 744], rax
 jmp xchain248_n39_α
 xchain248_n39_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n40_α
 xchain248_n39_β:
 jmp xchain248_n16_α
 xchain248_n40_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+576]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n41_α
 xchain248_n40_β:
 jmp xchain248_n16_α
# IR_VAR_REF
 xchain248_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain248_n42_α
# IR_VAR
 xchain248_n42_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 504], rax
 jmp xchain248_n43_α
# IR_LIT_INTEGER
 xchain248_n43_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain248_n44_α
.Lx315_0:
 .quad 1
 xchain248_n44_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+464]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n45_α
 xchain248_n44_β:
 jmp xchain248_n16_α
 xchain248_n45_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 368]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n46_α
 xchain248_n45_β:
 jmp xchain248_n16_α
# IR_VAR_REF
 xchain248_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain248_n47_α
# IR_VAR_REF
 xchain248_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain248_n48_α
# IR_VAR_REF
 xchain248_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain248_n49_α
 xchain248_n49_α:
 mov qword ptr [rbp + 224], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx325_20
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx325_21
.Lx325_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
.Lx325_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx325_22
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx325_23
.Lx325_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
.Lx325_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx325_24
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx325_25
.Lx325_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
.Lx325_25:
 mov edi, 5
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx325_1
 lea rcx, [rip + .Lx325_3]
 lea rdx, [rip + .Lx325_4]
 jmp rax
.Lx325_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx325_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx325_2
.Lx325_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx325_2
.Lx325_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx325_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx325_2
.Lx325_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx325_2
.Lx325_1:
 call rt_faildescr@PLT
.Lx325_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain248_n16_α
 jmp xchain248_n50_α
 xchain248_n49_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx325_0:
 .quad .Lx325_0_s
.Lx325_0_s:
 .string "not_attack/3"
# IR_SUSPEND yield+resume
 xchain248_n50_α:
 lea rax, [rip + xchain248_n50_β]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_not_attack$2F3_γ
 xchain248_n50_β:
 jmp xchain248_n49_β
proc_not_attack$2F3_res:
add rsp, 8
pop rbp
proc_not_attack$2F3_β:
jmp qword ptr [rbp + 2064]
proc_not_attack$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_not_attack$2F3_res]
push rax
mov rax, [rbp + 2184]
mov rbp, [rbp + 2200]
jmp rax
proc_not_attack$2F3_ω:
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
  mov esi, 1648
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "queens/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_queens$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1824
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "queens/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_queens$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "range/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_range$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1632
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_range$2F3_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname4: .string "not_attack/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_not_attack$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 624
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "not_attack/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_not_attack$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2176
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
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
  mov qword ptr [rsp + 392], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain328_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx329_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx329_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx329_101
.Lx329_100:
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx329_101:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain328_n1_α
 xchain328_n0_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain328_n1_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx330_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain328_n2_α
.Lx330_0:
 .quad 16
# IR_VAR_REF
 xchain328_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 400]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain328_n3_α
 xchain328_n3_α:
 mov qword ptr [rbp + 288], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx334_20
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx334_21
.Lx334_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
.Lx334_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx334_22
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx334_23
.Lx334_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
.Lx334_23:
 mov edi, 2
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx334_1
 lea rcx, [rip + .Lx334_3]
 lea rdx, [rip + .Lx334_4]
 jmp rax
.Lx334_3:
 mov qword ptr [rbp + 296], rsp
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx334_5
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx334_2
.Lx334_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx334_2
.Lx334_4:
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx334_6
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx334_2
.Lx334_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx334_2
.Lx334_1:
 call rt_faildescr@PLT
.Lx334_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain328_n5_α
 jmp xchain328_n4_α
 xchain328_n3_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 296]
 jmp qword ptr [rsp]
.Lx334_0:
 .quad .Lx334_0_s
.Lx334_0_s:
 .string "queens/2"
# IR_VAR
 xchain328_n4_α:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 216], rax
 jmp xchain328_n6_α
 xchain328_n5_α:
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
 xchain328_n5_β:
 jmp main_ω
 xchain328_n6_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn339: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn339]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain328_n3_β
 jmp xchain328_n7_α
 xchain328_n6_β:
 jmp xchain328_n3_β
# IR_LIT_STRING
 xchain328_n7_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx340_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain328_n8_α
.Lx340_0:
 .quad .Lx340_0_s
.Lx340_0_s:
 .string ""
 xchain328_n8_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn342: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn342]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain328_n3_β
 jmp xchain328_n9_α
 xchain328_n8_β:
 jmp xchain328_n3_β
# IR_MOVE_LABEL
 xchain328_n9_α:
 lea rax, [rip + xchain328_n3_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain328_n10_α:
 jmp qword ptr [rbp + 32]
 xchain328_n10_β:
 jmp main_ω
main_β:
jmp xchain328_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 392]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 392]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
