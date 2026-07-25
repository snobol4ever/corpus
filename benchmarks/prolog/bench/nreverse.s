  .intel_syntax noprefix
  .text
  .globl proc_nreverse$2F2_α
proc_nreverse$2F2_α:
#=======================================================================================================================
    .global proc_nreverse$2F2_α
    .global proc_nreverse$2F2_β
    .global proc_nreverse$2F2_γ
    .global proc_nreverse$2F2_ω
  sub rsp, 1616
  mov [rsp + 1592], rcx
  mov [rsp + 1600], rdx
  mov [rsp + 1608], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1512], rsp
  mov rdi, rsp
  mov esi, 1488
  mov edx, 1584
  call rt_jmp_frame_lexprep2@PLT
proc_nreverse$2F2_α_body:
lea rax, [rip + xchain0_n28_β]
mov qword ptr [rbp + 1488], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_nreverse$2F2_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_nreverse$2F2_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [rbp + 1424], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain0_n3_α
.Lx4_0:
 .quad 3
# IR_LIT_INTEGER
 xchain0_n3_α:
 mov qword ptr [rbp + 1456], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain0_n4_α
.Lx5_0:
 .quad 0
 xchain0_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1392] -> [zr+1344]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1360]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1368], rax
# marshal arg2 = producer-box slot [zr+1456] -> [zr+1376]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain0_n8_α
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain0_n9_α
# IR_LIT_INTEGER
 xchain0_n8_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain0_n10_α
.Lx13_0:
 .quad 2
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n10_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain0_n12_α
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "[]"
 xchain0_n11_α:
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
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1216]
 lea r8, [rbp + 1216]
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
 lea r9, [rbp + 1232]
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
 lea rcx, [rbp + 1248]
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
 lea r9, [rbp + 1232]
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
 lea rcx, [rbp + 1248]
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
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
 xchain0_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+400]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+416]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 424], rax
# marshal arg2 = producer-box slot [zr+512] -> [zr+432]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 400]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain0_n17_α
 xchain0_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+560]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je proc_nreverse$2F2_ω
 jmp xchain0_n6_α
 xchain0_n14_β:
 jmp proc_nreverse$2F2_ω
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain0_n18_α
 xchain0_n16_α:
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
 je proc_nreverse$2F2_ω
 jmp proc_nreverse$2F2_ω
 xchain0_n16_β:
 jmp proc_nreverse$2F2_ω
# IR_VAR_REF
 xchain0_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain0_n19_α
# IR_LIT_STRING
 xchain0_n18_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain0_n20_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "[]"
 xchain0_n19_α:
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
.Lx28_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx28_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx28_41
 cmp esi, 1
 jne .Lx28_55
 mov r8, rax
 jmp .Lx28_40
.Lx28_55:
 cmp esi, 2
 jne .Lx28_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx28_41
 mov r8, rax
 jmp .Lx28_40
.Lx28_56:
 cmp eax, 13
 jne .Lx28_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx28_41
 cmp rax, r8
 je .Lx28_41
 mov r8, rax
 jmp .Lx28_40
.Lx28_41:
 lea r9, [rbp + 1088]
.Lx28_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx28_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx28_43
 cmp esi, 1
 jne .Lx28_57
 mov r9, rax
 jmp .Lx28_42
.Lx28_57:
 cmp esi, 2
 jne .Lx28_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx28_43
 mov r9, rax
 jmp .Lx28_42
.Lx28_58:
 cmp eax, 13
 jne .Lx28_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx28_43
 cmp rax, r9
 je .Lx28_43
 mov r9, rax
 jmp .Lx28_42
.Lx28_43:
 cmp r8, r9
 je .Lx28_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx28_44
 cmp eax, 99
 je .Lx28_44
 cmp eax, 13
 jne .Lx28_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx28_44
 jmp .Lx28_45
.Lx28_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx28_53
 cmp eax, 99
 je .Lx28_53
 cmp eax, 13
 jne .Lx28_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx28_53
 jmp .Lx28_46
.Lx28_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx28_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx28_53
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
 jmp .Lx28_51
.Lx28_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx28_47
 cmp eax, 99
 je .Lx28_47
 cmp eax, 13
 jne .Lx28_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx28_47
 jmp .Lx28_48
.Lx28_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx28_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx28_53
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
 jmp .Lx28_51
.Lx28_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx28_49
 cmp edx, 14
 je .Lx28_53
 jmp .Lx28_52
.Lx28_49:
 cmp edx, 14
 je .Lx28_52
 cmp ecx, 7
 je .Lx28_53
 cmp edx, 7
 je .Lx28_53
 cmp ecx, 6
 jne .Lx28_50
 cmp edx, 6
 jne .Lx28_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx28_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx28_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx28_51
 jmp .Lx28_52
.Lx28_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx28_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx28_53
.Lx28_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx28_54
.Lx28_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx28_54
.Lx28_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx28_54:
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n14_α
 xchain0_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 288]
 mov rsi, qword ptr [rip + .Lx29_2]
 jmp .Lx29_3
.Lx29_2:
 .quad .Lx29_2_s
.Lx29_2_s:
 .string "[]"
.Lx29_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain0_n23_α
# IR_VAR_REF
 xchain0_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain0_n24_α
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain0_n25_α
# IR_LIT_STRING
 xchain0_n24_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain0_n26_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "[]"
 xchain0_n25_α:
 mov qword ptr [rbp + 960], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx38_20
 mov rax, qword ptr [rbp + 992]
 mov rdx, qword ptr [rbp + 1000]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx38_21
.Lx38_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 992]
 mov rdx, qword ptr [rbp + 1000]
 call rt_arg_stage@PLT
.Lx38_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx38_22
 mov rax, qword ptr [rbp + 1024]
 mov rdx, qword ptr [rbp + 1032]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx38_23
.Lx38_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 1024]
 mov rdx, qword ptr [rbp + 1032]
 call rt_arg_stage@PLT
.Lx38_23:
 mov rdi, qword ptr [rip + .Lx38_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx38_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx38_3]
 lea rdx, [rip + .Lx38_4]
 jmp rax
.Lx38_3:
 mov qword ptr [rbp + 968], rsp
 mov rax, qword ptr [rbp + 960]
 test rax, rax
 jne .Lx38_5
 mov qword ptr [rbp + 960], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx38_2
.Lx38_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx38_2
.Lx38_4:
 mov rax, qword ptr [rbp + 960]
 test rax, rax
 jne .Lx38_6
 mov qword ptr [rbp + 960], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx38_2
.Lx38_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx38_2
.Lx38_1:
 call rt_faildescr@PLT
.Lx38_2:
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n27_α
 xchain0_n25_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 968]
 jmp qword ptr [rsp]
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "nreverse/2"
 xchain0_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 176]
 mov rsi, qword ptr [rip + .Lx39_2]
 jmp .Lx39_3
.Lx39_2:
 .quad .Lx39_2_s
.Lx39_2_s:
 .string "[]"
.Lx39_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain0_n29_α
# IR_SUSPEND yield+resume
 xchain0_n28_α:
 lea rax, [rip + xchain0_n28_β]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_nreverse$2F2_γ
 xchain0_n28_β:
 jmp xchain0_n16_α
# IR_LIT_STRING
 xchain0_n29_α:
 mov qword ptr [rbp + 848], 1
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain0_n30_α
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain0_n31_α
# IR_LIT_STRING
 xchain0_n31_α:
 mov qword ptr [rbp + 704], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain0_n32_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "[]"
 xchain0_n32_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+784]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+800]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 808], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+816]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain0_n34_α
 xchain0_n34_α:
 mov qword ptr [rbp + 640], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx52_20
 mov rax, qword ptr [rbp + 672]
 mov rdx, qword ptr [rbp + 680]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx52_21
.Lx52_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 672]
 mov rdx, qword ptr [rbp + 680]
 call rt_arg_stage@PLT
.Lx52_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx52_22
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx52_23
.Lx52_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 call rt_arg_stage@PLT
.Lx52_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx52_24
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx52_25
.Lx52_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 call rt_arg_stage@PLT
.Lx52_25:
 mov rdi, qword ptr [rip + .Lx52_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx52_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx52_3]
 lea rdx, [rip + .Lx52_4]
 jmp rax
.Lx52_3:
 mov qword ptr [rbp + 648], rsp
 mov rax, qword ptr [rbp + 640]
 test rax, rax
 jne .Lx52_5
 mov qword ptr [rbp + 640], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx52_2
.Lx52_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx52_2
.Lx52_4:
 mov rax, qword ptr [rbp + 640]
 test rax, rax
 jne .Lx52_6
 mov qword ptr [rbp + 640], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx52_2
.Lx52_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx52_2
.Lx52_1:
 call rt_faildescr@PLT
.Lx52_2:
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain0_n25_β
 jmp xchain0_n35_α
 xchain0_n34_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 648]
 jmp qword ptr [rsp]
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string "concatenate/3"
# IR_SUSPEND yield+resume
 xchain0_n35_α:
 lea rax, [rip + xchain0_n35_β]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_nreverse$2F2_γ
 xchain0_n35_β:
 jmp xchain0_n34_β
proc_nreverse$2F2_res:
add rsp, 8
pop rbp
proc_nreverse$2F2_β:
jmp qword ptr [rbp + 1488]
proc_nreverse$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_nreverse$2F2_res]
push rax
mov rax, [rbp + 1592]
mov rbp, [rbp + 1608]
jmp rax
proc_nreverse$2F2_ω:
mov rax, [rbp + 1600]
lea rsp, [rbp + 1616]
mov rbp, [rbp + 1608]
jmp rax
  .globl proc_reverse$2F2_α
proc_reverse$2F2_α:
#=======================================================================================================================
    .global proc_reverse$2F2_α
    .global proc_reverse$2F2_β
    .global proc_reverse$2F2_γ
    .global proc_reverse$2F2_ω
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
proc_reverse$2F2_α_body:
lea rax, [rip + xchain55_n12_β]
mov qword ptr [rbp + 560], rax
 xchain55_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_reverse$2F2_ω
 jmp xchain55_n1_α
 xchain55_n0_β:
 jmp proc_reverse$2F2_ω
# IR_VAR_REF
 xchain55_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain55_n2_α
# IR_VAR_REF
 xchain55_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 592]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain55_n3_α
 xchain55_n3_α:
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
.Lx61_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx61_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx61_41
 cmp esi, 1
 jne .Lx61_55
 mov r8, rax
 jmp .Lx61_40
.Lx61_55:
 cmp esi, 2
 jne .Lx61_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx61_41
 mov r8, rax
 jmp .Lx61_40
.Lx61_56:
 cmp eax, 13
 jne .Lx61_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx61_41
 cmp rax, r8
 je .Lx61_41
 mov r8, rax
 jmp .Lx61_40
.Lx61_41:
 lea r9, [rbp + 480]
.Lx61_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx61_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx61_43
 cmp esi, 1
 jne .Lx61_57
 mov r9, rax
 jmp .Lx61_42
.Lx61_57:
 cmp esi, 2
 jne .Lx61_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx61_43
 mov r9, rax
 jmp .Lx61_42
.Lx61_58:
 cmp eax, 13
 jne .Lx61_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx61_43
 cmp rax, r9
 je .Lx61_43
 mov r9, rax
 jmp .Lx61_42
.Lx61_43:
 cmp r8, r9
 je .Lx61_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx61_44
 cmp eax, 99
 je .Lx61_44
 cmp eax, 13
 jne .Lx61_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx61_44
 jmp .Lx61_45
.Lx61_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx61_53
 cmp eax, 99
 je .Lx61_53
 cmp eax, 13
 jne .Lx61_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx61_53
 jmp .Lx61_46
.Lx61_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx61_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx61_53
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
 jmp .Lx61_51
.Lx61_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx61_47
 cmp eax, 99
 je .Lx61_47
 cmp eax, 13
 jne .Lx61_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx61_47
 jmp .Lx61_48
.Lx61_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx61_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx61_53
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
 jmp .Lx61_51
.Lx61_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx61_49
 cmp edx, 14
 je .Lx61_53
 jmp .Lx61_52
.Lx61_49:
 cmp edx, 14
 je .Lx61_52
 cmp ecx, 7
 je .Lx61_53
 cmp edx, 7
 je .Lx61_53
 cmp ecx, 6
 jne .Lx61_50
 cmp edx, 6
 jne .Lx61_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx61_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx61_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx61_51
 jmp .Lx61_52
.Lx61_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx61_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx61_53
.Lx61_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx61_54
.Lx61_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx61_54
.Lx61_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx61_54:
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain55_n5_α
 jmp xchain55_n4_α
 xchain55_n3_β:
 jmp xchain55_n5_α
# IR_VAR_REF
 xchain55_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain55_n6_α
 xchain55_n5_α:
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
 je proc_reverse$2F2_ω
 jmp proc_reverse$2F2_ω
 xchain55_n5_β:
 jmp proc_reverse$2F2_ω
# IR_VAR_REF
 xchain55_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 608]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain55_n7_α
 xchain55_n7_α:
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
 lea r9, [rbp + 368]
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
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain55_n5_α
 jmp xchain55_n8_α
 xchain55_n7_β:
 jmp xchain55_n5_α
# IR_VAR_REF
 xchain55_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 592]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain55_n9_α
# IR_LIT_STRING
 xchain55_n9_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain55_n10_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "[]"
# IR_VAR_REF
 xchain55_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 608]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain55_n11_α
 xchain55_n11_α:
 mov qword ptr [rbp + 208], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx74_20
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx74_21
.Lx74_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
.Lx74_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx74_22
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx74_23
.Lx74_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
.Lx74_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx74_24
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx74_25
.Lx74_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
.Lx74_25:
 mov rdi, qword ptr [rip + .Lx74_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx74_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx74_3]
 lea rdx, [rip + .Lx74_4]
 jmp rax
.Lx74_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx74_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx74_2
.Lx74_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx74_2
.Lx74_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx74_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx74_2
.Lx74_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx74_2
.Lx74_1:
 call rt_faildescr@PLT
.Lx74_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain55_n5_α
 jmp xchain55_n12_α
 xchain55_n11_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "$reverse_/3"
# IR_SUSPEND yield+resume
 xchain55_n12_α:
 lea rax, [rip + xchain55_n12_β]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_reverse$2F2_γ
 xchain55_n12_β:
 jmp xchain55_n11_β
proc_reverse$2F2_res:
add rsp, 8
pop rbp
proc_reverse$2F2_β:
jmp qword ptr [rbp + 560]
proc_reverse$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_reverse$2F2_res]
push rax
mov rax, [rbp + 632]
mov rbp, [rbp + 648]
jmp rax
proc_reverse$2F2_ω:
mov rax, [rbp + 640]
lea rsp, [rbp + 656]
mov rbp, [rbp + 648]
jmp rax
  .globl proc_$reverse_$2F3_α
proc_$reverse_$2F3_α:
#=======================================================================================================================
    .global proc_$reverse_$2F3_α
    .global proc_$reverse_$2F3_β
    .global proc_$reverse_$2F3_γ
    .global proc_$reverse_$2F3_ω
  sub rsp, 1712
  mov [rsp + 1688], rcx
  mov [rsp + 1696], rdx
  mov [rsp + 1704], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1608], rsp
  mov rdi, rsp
  mov esi, 1584
  mov edx, 1680
  call rt_jmp_frame_lexprep2@PLT
proc_$reverse_$2F3_α_body:
lea rax, [rip + xchain77_n25_β]
mov qword ptr [rbp + 1584], rax
 xchain77_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_$reverse_$2F3_ω
 jmp xchain77_n1_α
 xchain77_n0_β:
 jmp proc_$reverse_$2F3_ω
# IR_VAR_REF
 xchain77_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain77_n2_α
# IR_LIT_INTEGER
 xchain77_n2_α:
 mov qword ptr [rbp + 1520], 6
 mov rax, qword ptr [rip + .Lx81_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain77_n3_α
.Lx81_0:
 .quad 2
# IR_LIT_STRING
 xchain77_n3_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain77_n4_α
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "[]"
 xchain77_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1440]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1448], rax
# marshal arg1 = producer-box slot [zr+1520] -> [zr+1456]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1464], rax
# marshal arg2 = producer-box slot [zr+1552] -> [zr+1472]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1440]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 cmp eax, 99
 je xchain77_n6_α
 jmp xchain77_n5_α
 xchain77_n4_β:
 jmp xchain77_n6_α
# IR_VAR_REF
 xchain77_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain77_n7_α
# IR_VAR_REF
 xchain77_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain77_n8_α
# IR_LIT_STRING
 xchain77_n7_α:
 mov qword ptr [rbp + 1392], 1
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [rbp + 1400], rax
 jmp xchain77_n9_α
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain77_n8_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain77_n10_α
.Lx89_0:
 .quad 3
 xchain77_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1328]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1336], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1328]
 mov rsi, qword ptr [rip + .Lx90_2]
 jmp .Lx90_3
.Lx90_2:
 .quad .Lx90_2_s
.Lx90_2_s:
 .string "[]"
.Lx90_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain77_n12_α
 jmp xchain77_n11_α
 xchain77_n9_β:
 jmp xchain77_n12_α
# IR_LIT_INTEGER
 xchain77_n10_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain77_n13_α
.Lx91_0:
 .quad 0
# IR_VAR_REF
 xchain77_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain77_n14_α
 xchain77_n12_α:
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
 je proc_$reverse_$2F3_ω
 jmp xchain77_n6_α
 xchain77_n12_β:
 jmp proc_$reverse_$2F3_ω
 xchain77_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 904], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+912]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 920], rax
# marshal arg2 = producer-box slot [zr+1008] -> [zr+928]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 896]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain77_n16_α
 jmp xchain77_n15_α
 xchain77_n13_β:
 jmp xchain77_n16_α
# IR_VAR_REF
 xchain77_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1632]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain77_n17_α
# IR_VAR_REF
 xchain77_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain77_n18_α
 xchain77_n16_α:
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
 je proc_$reverse_$2F3_ω
 jmp proc_$reverse_$2F3_ω
 xchain77_n16_β:
 jmp proc_$reverse_$2F3_ω
 xchain77_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1216]
 lea r8, [rbp + 1216]
.Lx101_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx101_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx101_41
 cmp esi, 1
 jne .Lx101_55
 mov r8, rax
 jmp .Lx101_40
.Lx101_55:
 cmp esi, 2
 jne .Lx101_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx101_41
 mov r8, rax
 jmp .Lx101_40
.Lx101_56:
 cmp eax, 13
 jne .Lx101_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx101_41
 cmp rax, r8
 je .Lx101_41
 mov r8, rax
 jmp .Lx101_40
.Lx101_41:
 lea r9, [rbp + 1232]
.Lx101_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx101_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx101_43
 cmp esi, 1
 jne .Lx101_57
 mov r9, rax
 jmp .Lx101_42
.Lx101_57:
 cmp esi, 2
 jne .Lx101_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx101_43
 mov r9, rax
 jmp .Lx101_42
.Lx101_58:
 cmp eax, 13
 jne .Lx101_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx101_43
 cmp rax, r9
 je .Lx101_43
 mov r9, rax
 jmp .Lx101_42
.Lx101_43:
 cmp r8, r9
 je .Lx101_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx101_44
 cmp eax, 99
 je .Lx101_44
 cmp eax, 13
 jne .Lx101_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx101_44
 jmp .Lx101_45
.Lx101_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx101_53
 cmp eax, 99
 je .Lx101_53
 cmp eax, 13
 jne .Lx101_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx101_53
 jmp .Lx101_46
.Lx101_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx101_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx101_53
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
 jmp .Lx101_51
.Lx101_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx101_47
 cmp eax, 99
 je .Lx101_47
 cmp eax, 13
 jne .Lx101_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx101_47
 jmp .Lx101_48
.Lx101_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx101_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx101_53
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
 jmp .Lx101_51
.Lx101_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx101_49
 cmp edx, 14
 je .Lx101_53
 jmp .Lx101_52
.Lx101_49:
 cmp edx, 14
 je .Lx101_52
 cmp ecx, 7
 je .Lx101_53
 cmp edx, 7
 je .Lx101_53
 cmp ecx, 6
 jne .Lx101_50
 cmp edx, 6
 jne .Lx101_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx101_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx101_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx101_51
 jmp .Lx101_52
.Lx101_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx101_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx101_53
.Lx101_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx101_54
.Lx101_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx101_54
.Lx101_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx101_54:
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain77_n12_α
 jmp xchain77_n19_α
 xchain77_n17_β:
 jmp xchain77_n12_α
# IR_VAR_REF
 xchain77_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1648]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain77_n20_α
# IR_VAR_REF
 xchain77_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain77_n21_α
# IR_VAR_REF
 xchain77_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain77_n22_α
# IR_VAR_REF
 xchain77_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1632]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain77_n23_α
 xchain77_n22_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+768]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 776], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+784]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
# marshal arg2 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 808], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 768]
 lea r8, [rbp + 768]
.Lx110_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx110_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx110_61
 cmp esi, 1
 jne .Lx110_62
 mov r8, rax
 jmp .Lx110_60
.Lx110_62:
 cmp esi, 2
 jne .Lx110_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx110_61
 mov r8, rax
 jmp .Lx110_60
.Lx110_63:
 cmp eax, 13
 jne .Lx110_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx110_61
 cmp rax, r8
 je .Lx110_61
 mov r8, rax
 jmp .Lx110_60
.Lx110_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx110_80
 cmp eax, 99
 je .Lx110_80
 cmp eax, 13
 jne .Lx110_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx110_80
 jmp .Lx110_74
.Lx110_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx110_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx110_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx110_73
 lea r9, [rbp + 784]
.Lx110_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx110_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx110_65
 cmp esi, 1
 jne .Lx110_66
 mov r9, rax
 jmp .Lx110_64
.Lx110_66:
 cmp esi, 2
 jne .Lx110_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx110_65
 mov r9, rax
 jmp .Lx110_64
.Lx110_67:
 cmp eax, 13
 jne .Lx110_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx110_65
 cmp rax, r9
 je .Lx110_65
 mov r9, rax
 jmp .Lx110_64
.Lx110_65:
 lea rcx, [rbp + 800]
.Lx110_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx110_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx110_69
 cmp esi, 1
 jne .Lx110_70
 mov rcx, rax
 jmp .Lx110_68
.Lx110_70:
 cmp esi, 2
 jne .Lx110_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx110_69
 mov rcx, rax
 jmp .Lx110_68
.Lx110_71:
 cmp eax, 13
 jne .Lx110_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx110_69
 cmp rax, rcx
 je .Lx110_69
 mov rcx, rax
 jmp .Lx110_68
.Lx110_69:
 cmp r9, rcx
 je .Lx110_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx110_75
 cmp eax, 99
 je .Lx110_75
 cmp eax, 13
 jne .Lx110_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx110_75
 jmp .Lx110_72
.Lx110_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx110_76
 cmp eax, 99
 je .Lx110_76
 cmp eax, 13
 jne .Lx110_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx110_76
 jmp .Lx110_72
.Lx110_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx110_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx110_72
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
 jmp .Lx110_77
.Lx110_80:
# PL-SINK-3 inline $unify_lst WRITE mode: carve 2 kids off the PLJ frontier, join unbound args, bind subject to the './2 cell
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx110_72
 lea r10, [rip + g_hp_fr]
 mov eax, dword ptr [r10 + 24]
 test eax, eax
 je .Lx110_72
 mov r11, qword ptr [r10 + 0]
 mov rax, qword ptr [r10 + 8]
 sub rax, 48
 cmp r11, rax
 ja .Lx110_72
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx110_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 72
 cmp rsi, rax
 ja .Lx110_72
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
 lea r9, [rbp + 784]
.Lx110_81:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx110_84
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx110_82
 cmp esi, 1
 jne .Lx110_83
 mov r9, rax
 jmp .Lx110_81
.Lx110_83:
 cmp esi, 2
 jne .Lx110_82
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx110_82
 mov r9, rax
 jmp .Lx110_81
.Lx110_84:
 cmp eax, 13
 jne .Lx110_82
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx110_82
 cmp rax, r9
 je .Lx110_82
 mov r9, rax
 jmp .Lx110_81
.Lx110_82:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx110_85
 cmp eax, 99
 je .Lx110_85
 cmp eax, 13
 jne .Lx110_86
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx110_85
 jmp .Lx110_86
.Lx110_85:
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
 jmp .Lx110_87
.Lx110_86:
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [rdx + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [rdx + 8], rax
.Lx110_87:
 lea rcx, [rbp + 800]
.Lx110_88:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx110_91
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx110_89
 cmp esi, 1
 jne .Lx110_90
 mov rcx, rax
 jmp .Lx110_88
.Lx110_90:
 cmp esi, 2
 jne .Lx110_89
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx110_89
 mov rcx, rax
 jmp .Lx110_88
.Lx110_91:
 cmp eax, 13
 jne .Lx110_89
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx110_89
 cmp rax, rcx
 je .Lx110_89
 mov rcx, rax
 jmp .Lx110_88
.Lx110_89:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx110_92
 cmp eax, 99
 je .Lx110_92
 cmp eax, 13
 jne .Lx110_93
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx110_92
 jmp .Lx110_93
.Lx110_92:
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
 jmp .Lx110_94
.Lx110_93:
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rdx + 16], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [rdx + 24], rax
.Lx110_94:
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
 jmp .Lx110_77
.Lx110_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx110_77
.Lx110_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx110_77:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain77_n16_α
 jmp xchain77_n24_α
 xchain77_n22_β:
 jmp xchain77_n16_α
 xchain77_n23_α:
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
.Lx111_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx111_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx111_41
 cmp esi, 1
 jne .Lx111_55
 mov r8, rax
 jmp .Lx111_40
.Lx111_55:
 cmp esi, 2
 jne .Lx111_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx111_41
 mov r8, rax
 jmp .Lx111_40
.Lx111_56:
 cmp eax, 13
 jne .Lx111_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx111_41
 cmp rax, r8
 je .Lx111_41
 mov r8, rax
 jmp .Lx111_40
.Lx111_41:
 lea r9, [rbp + 1120]
.Lx111_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx111_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx111_43
 cmp esi, 1
 jne .Lx111_57
 mov r9, rax
 jmp .Lx111_42
.Lx111_57:
 cmp esi, 2
 jne .Lx111_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx111_43
 mov r9, rax
 jmp .Lx111_42
.Lx111_58:
 cmp eax, 13
 jne .Lx111_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx111_43
 cmp rax, r9
 je .Lx111_43
 mov r9, rax
 jmp .Lx111_42
.Lx111_43:
 cmp r8, r9
 je .Lx111_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx111_44
 cmp eax, 99
 je .Lx111_44
 cmp eax, 13
 jne .Lx111_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx111_44
 jmp .Lx111_45
.Lx111_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx111_53
 cmp eax, 99
 je .Lx111_53
 cmp eax, 13
 jne .Lx111_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx111_53
 jmp .Lx111_46
.Lx111_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx111_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx111_53
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
 jmp .Lx111_51
.Lx111_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx111_47
 cmp eax, 99
 je .Lx111_47
 cmp eax, 13
 jne .Lx111_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx111_47
 jmp .Lx111_48
.Lx111_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx111_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx111_53
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
 jmp .Lx111_51
.Lx111_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx111_49
 cmp edx, 14
 je .Lx111_53
 jmp .Lx111_52
.Lx111_49:
 cmp edx, 14
 je .Lx111_52
 cmp ecx, 7
 je .Lx111_53
 cmp edx, 7
 je .Lx111_53
 cmp ecx, 6
 jne .Lx111_50
 cmp edx, 6
 jne .Lx111_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx111_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx111_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx111_51
 jmp .Lx111_52
.Lx111_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx111_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx111_53
.Lx111_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx111_54
.Lx111_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx111_54
.Lx111_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx111_54:
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain77_n12_α
 jmp xchain77_n25_α
 xchain77_n23_β:
 jmp xchain77_n12_α
# IR_VAR_REF
 xchain77_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain77_n26_α
# IR_SUSPEND yield+resume
 xchain77_n25_α:
 lea rax, [rip + xchain77_n25_β]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_$reverse_$2F3_γ
 xchain77_n25_β:
 jmp xchain77_n12_α
# IR_VAR_REF
 xchain77_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1632]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain77_n27_α
 xchain77_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 648], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 624]
 lea r8, [rbp + 624]
.Lx118_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx118_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx118_41
 cmp esi, 1
 jne .Lx118_55
 mov r8, rax
 jmp .Lx118_40
.Lx118_55:
 cmp esi, 2
 jne .Lx118_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx118_41
 mov r8, rax
 jmp .Lx118_40
.Lx118_56:
 cmp eax, 13
 jne .Lx118_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx118_41
 cmp rax, r8
 je .Lx118_41
 mov r8, rax
 jmp .Lx118_40
.Lx118_41:
 lea r9, [rbp + 640]
.Lx118_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx118_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx118_43
 cmp esi, 1
 jne .Lx118_57
 mov r9, rax
 jmp .Lx118_42
.Lx118_57:
 cmp esi, 2
 jne .Lx118_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx118_43
 mov r9, rax
 jmp .Lx118_42
.Lx118_58:
 cmp eax, 13
 jne .Lx118_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx118_43
 cmp rax, r9
 je .Lx118_43
 mov r9, rax
 jmp .Lx118_42
.Lx118_43:
 cmp r8, r9
 je .Lx118_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx118_44
 cmp eax, 99
 je .Lx118_44
 cmp eax, 13
 jne .Lx118_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx118_44
 jmp .Lx118_45
.Lx118_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx118_53
 cmp eax, 99
 je .Lx118_53
 cmp eax, 13
 jne .Lx118_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx118_53
 jmp .Lx118_46
.Lx118_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx118_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx118_53
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
 jmp .Lx118_51
.Lx118_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx118_47
 cmp eax, 99
 je .Lx118_47
 cmp eax, 13
 jne .Lx118_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx118_47
 jmp .Lx118_48
.Lx118_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx118_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx118_53
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
 jmp .Lx118_51
.Lx118_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx118_49
 cmp edx, 14
 je .Lx118_53
 jmp .Lx118_52
.Lx118_49:
 cmp edx, 14
 je .Lx118_52
 cmp ecx, 7
 je .Lx118_53
 cmp edx, 7
 je .Lx118_53
 cmp ecx, 6
 jne .Lx118_50
 cmp edx, 6
 jne .Lx118_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx118_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx118_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx118_51
 jmp .Lx118_52
.Lx118_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx118_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx118_53
.Lx118_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx118_54
.Lx118_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx118_54
.Lx118_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx118_54:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain77_n16_α
 jmp xchain77_n28_α
 xchain77_n27_β:
 jmp xchain77_n16_α
# IR_VAR_REF
 xchain77_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain77_n29_α
# IR_VAR_REF
 xchain77_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain77_n30_α
 xchain77_n30_α:
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
 lea r9, [rbp + 528]
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
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain77_n16_α
 jmp xchain77_n31_α
 xchain77_n30_β:
 jmp xchain77_n16_α
# IR_VAR_REF
 xchain77_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain77_n32_α
# IR_LIT_STRING
 xchain77_n32_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain77_n33_α
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "."
# IR_VAR_REF
 xchain77_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1648]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain77_n34_α
# IR_VAR_REF
 xchain77_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1632]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain77_n35_α
 xchain77_n35_α:
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
 je xchain77_n16_α
 jmp xchain77_n36_α
 xchain77_n35_β:
 jmp xchain77_n16_α
# IR_VAR_REF
 xchain77_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain77_n37_α
 xchain77_n37_α:
 mov qword ptr [rbp + 224], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx135_20
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx135_21
.Lx135_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
.Lx135_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx135_22
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx135_23
.Lx135_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
.Lx135_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx135_24
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx135_25
.Lx135_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
.Lx135_25:
 mov rdi, qword ptr [rip + .Lx135_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx135_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx135_3]
 lea rdx, [rip + .Lx135_4]
 jmp rax
.Lx135_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx135_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx135_2
.Lx135_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx135_2
.Lx135_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx135_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx135_2
.Lx135_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx135_2
.Lx135_1:
 call rt_faildescr@PLT
.Lx135_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain77_n16_α
 jmp xchain77_n38_α
 xchain77_n37_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "$reverse_/3"
# IR_SUSPEND yield+resume
 xchain77_n38_α:
 lea rax, [rip + xchain77_n38_β]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_$reverse_$2F3_γ
 xchain77_n38_β:
 jmp xchain77_n37_β
proc_$reverse_$2F3_res:
add rsp, 8
pop rbp
proc_$reverse_$2F3_β:
jmp qword ptr [rbp + 1584]
proc_$reverse_$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_$reverse_$2F3_res]
push rax
mov rax, [rbp + 1688]
mov rbp, [rbp + 1704]
jmp rax
proc_$reverse_$2F3_ω:
mov rax, [rbp + 1696]
lea rsp, [rbp + 1712]
mov rbp, [rbp + 1704]
jmp rax
  .globl proc_concatenate$2F3_α
proc_concatenate$2F3_α:
#=======================================================================================================================
    .global proc_concatenate$2F3_α
    .global proc_concatenate$2F3_β
    .global proc_concatenate$2F3_γ
    .global proc_concatenate$2F3_ω
  sub rsp, 1616
  mov [rsp + 1592], rcx
  mov [rsp + 1600], rdx
  mov [rsp + 1608], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1512], rsp
  mov rdi, rsp
  mov esi, 1488
  mov edx, 1584
  call rt_jmp_frame_lexprep2@PLT
proc_concatenate$2F3_α_body:
lea rax, [rip + xchain138_n34_β]
mov qword ptr [rbp + 1488], rax
 xchain138_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_concatenate$2F3_ω
 jmp xchain138_n1_α
 xchain138_n0_β:
 jmp proc_concatenate$2F3_ω
# IR_VAR_REF
 xchain138_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain138_n2_α
# IR_LIT_INTEGER
 xchain138_n2_α:
 mov qword ptr [rbp + 1424], 6
 mov rax, qword ptr [rip + .Lx142_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain138_n3_α
.Lx142_0:
 .quad 3
# IR_LIT_INTEGER
 xchain138_n3_α:
 mov qword ptr [rbp + 1456], 6
 mov rax, qword ptr [rip + .Lx143_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain138_n4_α
.Lx143_0:
 .quad 0
 xchain138_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1392] -> [zr+1344]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1360]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1368], rax
# marshal arg2 = producer-box slot [zr+1456] -> [zr+1376]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain138_n6_α
 jmp xchain138_n5_α
 xchain138_n4_β:
 jmp xchain138_n6_α
# IR_VAR_REF
 xchain138_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain138_n7_α
# IR_VAR_REF
 xchain138_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain138_n8_α
# IR_VAR_REF
 xchain138_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain138_n9_α
# IR_LIT_INTEGER
 xchain138_n8_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain138_n10_α
.Lx151_0:
 .quad 2
# IR_VAR_REF
 xchain138_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain138_n11_α
# IR_LIT_STRING
 xchain138_n10_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain138_n12_α
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
 .string "[]"
 xchain138_n11_α:
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
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1216]
 lea r8, [rbp + 1216]
.Lx155_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx155_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx155_61
 cmp esi, 1
 jne .Lx155_62
 mov r8, rax
 jmp .Lx155_60
.Lx155_62:
 cmp esi, 2
 jne .Lx155_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx155_61
 mov r8, rax
 jmp .Lx155_60
.Lx155_63:
 cmp eax, 13
 jne .Lx155_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx155_61
 cmp rax, r8
 je .Lx155_61
 mov r8, rax
 jmp .Lx155_60
.Lx155_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx155_80
 cmp eax, 99
 je .Lx155_80
 cmp eax, 13
 jne .Lx155_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx155_80
 jmp .Lx155_74
.Lx155_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx155_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx155_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx155_73
 lea r9, [rbp + 1232]
.Lx155_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx155_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx155_65
 cmp esi, 1
 jne .Lx155_66
 mov r9, rax
 jmp .Lx155_64
.Lx155_66:
 cmp esi, 2
 jne .Lx155_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx155_65
 mov r9, rax
 jmp .Lx155_64
.Lx155_67:
 cmp eax, 13
 jne .Lx155_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx155_65
 cmp rax, r9
 je .Lx155_65
 mov r9, rax
 jmp .Lx155_64
.Lx155_65:
 lea rcx, [rbp + 1248]
.Lx155_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx155_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx155_69
 cmp esi, 1
 jne .Lx155_70
 mov rcx, rax
 jmp .Lx155_68
.Lx155_70:
 cmp esi, 2
 jne .Lx155_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx155_69
 mov rcx, rax
 jmp .Lx155_68
.Lx155_71:
 cmp eax, 13
 jne .Lx155_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx155_69
 cmp rax, rcx
 je .Lx155_69
 mov rcx, rax
 jmp .Lx155_68
.Lx155_69:
 cmp r9, rcx
 je .Lx155_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx155_75
 cmp eax, 99
 je .Lx155_75
 cmp eax, 13
 jne .Lx155_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx155_75
 jmp .Lx155_72
.Lx155_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx155_76
 cmp eax, 99
 je .Lx155_76
 cmp eax, 13
 jne .Lx155_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx155_76
 jmp .Lx155_72
.Lx155_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx155_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx155_72
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
 jmp .Lx155_77
.Lx155_80:
# PL-SINK-3 inline $unify_lst WRITE mode: carve 2 kids off the PLJ frontier, join unbound args, bind subject to the './2 cell
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx155_72
 lea r10, [rip + g_hp_fr]
 mov eax, dword ptr [r10 + 24]
 test eax, eax
 je .Lx155_72
 mov r11, qword ptr [r10 + 0]
 mov rax, qword ptr [r10 + 8]
 sub rax, 48
 cmp r11, rax
 ja .Lx155_72
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx155_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 72
 cmp rsi, rax
 ja .Lx155_72
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
 lea r9, [rbp + 1232]
.Lx155_81:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx155_84
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx155_82
 cmp esi, 1
 jne .Lx155_83
 mov r9, rax
 jmp .Lx155_81
.Lx155_83:
 cmp esi, 2
 jne .Lx155_82
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx155_82
 mov r9, rax
 jmp .Lx155_81
.Lx155_84:
 cmp eax, 13
 jne .Lx155_82
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx155_82
 cmp rax, r9
 je .Lx155_82
 mov r9, rax
 jmp .Lx155_81
.Lx155_82:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx155_85
 cmp eax, 99
 je .Lx155_85
 cmp eax, 13
 jne .Lx155_86
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx155_85
 jmp .Lx155_86
.Lx155_85:
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
 jmp .Lx155_87
.Lx155_86:
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [rdx + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [rdx + 8], rax
.Lx155_87:
 lea rcx, [rbp + 1248]
.Lx155_88:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx155_91
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx155_89
 cmp esi, 1
 jne .Lx155_90
 mov rcx, rax
 jmp .Lx155_88
.Lx155_90:
 cmp esi, 2
 jne .Lx155_89
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx155_89
 mov rcx, rax
 jmp .Lx155_88
.Lx155_91:
 cmp eax, 13
 jne .Lx155_89
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx155_89
 cmp rax, rcx
 je .Lx155_89
 mov rcx, rax
 jmp .Lx155_88
.Lx155_89:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx155_92
 cmp eax, 99
 je .Lx155_92
 cmp eax, 13
 jne .Lx155_93
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx155_92
 jmp .Lx155_93
.Lx155_92:
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
 jmp .Lx155_94
.Lx155_93:
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rdx + 16], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [rdx + 24], rax
.Lx155_94:
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
 jmp .Lx155_77
.Lx155_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx155_77
.Lx155_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx155_77:
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain138_n14_α
 jmp xchain138_n13_α
 xchain138_n11_β:
 jmp xchain138_n14_α
 xchain138_n12_α:
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
 je xchain138_n16_α
 jmp xchain138_n15_α
 xchain138_n12_β:
 jmp xchain138_n16_α
# IR_VAR_REF
 xchain138_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain138_n17_α
 xchain138_n14_α:
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
 je proc_concatenate$2F3_ω
 jmp xchain138_n6_α
 xchain138_n14_β:
 jmp proc_concatenate$2F3_ω
# IR_VAR_REF
 xchain138_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain138_n18_α
 xchain138_n16_α:
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
 je proc_concatenate$2F3_ω
 jmp proc_concatenate$2F3_ω
 xchain138_n16_β:
 jmp proc_concatenate$2F3_ω
# IR_VAR_REF
 xchain138_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain138_n19_α
# IR_LIT_STRING
 xchain138_n18_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx165_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain138_n20_α
.Lx165_0:
 .quad .Lx165_0_s
.Lx165_0_s:
 .string "[]"
 xchain138_n19_α:
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
.Lx166_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx166_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx166_41
 cmp esi, 1
 jne .Lx166_55
 mov r8, rax
 jmp .Lx166_40
.Lx166_55:
 cmp esi, 2
 jne .Lx166_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx166_41
 mov r8, rax
 jmp .Lx166_40
.Lx166_56:
 cmp eax, 13
 jne .Lx166_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx166_41
 cmp rax, r8
 je .Lx166_41
 mov r8, rax
 jmp .Lx166_40
.Lx166_41:
 lea r9, [rbp + 1088]
.Lx166_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx166_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx166_43
 cmp esi, 1
 jne .Lx166_57
 mov r9, rax
 jmp .Lx166_42
.Lx166_57:
 cmp esi, 2
 jne .Lx166_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx166_43
 mov r9, rax
 jmp .Lx166_42
.Lx166_58:
 cmp eax, 13
 jne .Lx166_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx166_43
 cmp rax, r9
 je .Lx166_43
 mov r9, rax
 jmp .Lx166_42
.Lx166_43:
 cmp r8, r9
 je .Lx166_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx166_44
 cmp eax, 99
 je .Lx166_44
 cmp eax, 13
 jne .Lx166_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx166_44
 jmp .Lx166_45
.Lx166_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx166_53
 cmp eax, 99
 je .Lx166_53
 cmp eax, 13
 jne .Lx166_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx166_53
 jmp .Lx166_46
.Lx166_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx166_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx166_53
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
 jmp .Lx166_51
.Lx166_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx166_47
 cmp eax, 99
 je .Lx166_47
 cmp eax, 13
 jne .Lx166_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx166_47
 jmp .Lx166_48
.Lx166_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx166_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx166_53
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
 jmp .Lx166_51
.Lx166_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx166_49
 cmp edx, 14
 je .Lx166_53
 jmp .Lx166_52
.Lx166_49:
 cmp edx, 14
 je .Lx166_52
 cmp ecx, 7
 je .Lx166_53
 cmp edx, 7
 je .Lx166_53
 cmp ecx, 6
 jne .Lx166_50
 cmp edx, 6
 jne .Lx166_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx166_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx166_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx166_51
 jmp .Lx166_52
.Lx166_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx166_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx166_53
.Lx166_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx166_54
.Lx166_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx166_54
.Lx166_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx166_54:
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain138_n14_α
 jmp xchain138_n21_α
 xchain138_n19_β:
 jmp xchain138_n14_α
 xchain138_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 416]
 mov rsi, qword ptr [rip + .Lx167_2]
 jmp .Lx167_3
.Lx167_2:
 .quad .Lx167_2_s
.Lx167_2_s:
 .string "[]"
.Lx167_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain138_n16_α
 jmp xchain138_n22_α
 xchain138_n20_β:
 jmp xchain138_n16_α
# IR_VAR_REF
 xchain138_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain138_n23_α
# IR_VAR_REF
 xchain138_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain138_n24_α
# IR_VAR_REF
 xchain138_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain138_n25_α
# IR_VAR_REF
 xchain138_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain138_n26_α
# IR_VAR_REF
 xchain138_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain138_n27_α
 xchain138_n26_α:
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
 lea r9, [rbp + 320]
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
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain138_n16_α
 jmp xchain138_n28_α
 xchain138_n26_β:
 jmp xchain138_n16_α
 xchain138_n27_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+944]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+960]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 968], rax
# marshal arg2 = producer-box slot [zr+1024] -> [zr+976]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 984], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 944]
 lea r8, [rbp + 944]
.Lx179_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx179_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx179_61
 cmp esi, 1
 jne .Lx179_62
 mov r8, rax
 jmp .Lx179_60
.Lx179_62:
 cmp esi, 2
 jne .Lx179_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx179_61
 mov r8, rax
 jmp .Lx179_60
.Lx179_63:
 cmp eax, 13
 jne .Lx179_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx179_61
 cmp rax, r8
 je .Lx179_61
 mov r8, rax
 jmp .Lx179_60
.Lx179_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx179_80
 cmp eax, 99
 je .Lx179_80
 cmp eax, 13
 jne .Lx179_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx179_80
 jmp .Lx179_74
.Lx179_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx179_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx179_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx179_73
 lea r9, [rbp + 960]
.Lx179_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx179_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx179_65
 cmp esi, 1
 jne .Lx179_66
 mov r9, rax
 jmp .Lx179_64
.Lx179_66:
 cmp esi, 2
 jne .Lx179_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx179_65
 mov r9, rax
 jmp .Lx179_64
.Lx179_67:
 cmp eax, 13
 jne .Lx179_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx179_65
 cmp rax, r9
 je .Lx179_65
 mov r9, rax
 jmp .Lx179_64
.Lx179_65:
 lea rcx, [rbp + 976]
.Lx179_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx179_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx179_69
 cmp esi, 1
 jne .Lx179_70
 mov rcx, rax
 jmp .Lx179_68
.Lx179_70:
 cmp esi, 2
 jne .Lx179_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx179_69
 mov rcx, rax
 jmp .Lx179_68
.Lx179_71:
 cmp eax, 13
 jne .Lx179_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx179_69
 cmp rax, rcx
 je .Lx179_69
 mov rcx, rax
 jmp .Lx179_68
.Lx179_69:
 cmp r9, rcx
 je .Lx179_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx179_75
 cmp eax, 99
 je .Lx179_75
 cmp eax, 13
 jne .Lx179_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx179_75
 jmp .Lx179_72
.Lx179_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx179_76
 cmp eax, 99
 je .Lx179_76
 cmp eax, 13
 jne .Lx179_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx179_76
 jmp .Lx179_72
.Lx179_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx179_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx179_72
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
 jmp .Lx179_77
.Lx179_80:
# PL-SINK-3 inline $unify_lst WRITE mode: carve 2 kids off the PLJ frontier, join unbound args, bind subject to the './2 cell
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx179_72
 lea r10, [rip + g_hp_fr]
 mov eax, dword ptr [r10 + 24]
 test eax, eax
 je .Lx179_72
 mov r11, qword ptr [r10 + 0]
 mov rax, qword ptr [r10 + 8]
 sub rax, 48
 cmp r11, rax
 ja .Lx179_72
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx179_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 72
 cmp rsi, rax
 ja .Lx179_72
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
 lea r9, [rbp + 960]
.Lx179_81:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx179_84
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx179_82
 cmp esi, 1
 jne .Lx179_83
 mov r9, rax
 jmp .Lx179_81
.Lx179_83:
 cmp esi, 2
 jne .Lx179_82
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx179_82
 mov r9, rax
 jmp .Lx179_81
.Lx179_84:
 cmp eax, 13
 jne .Lx179_82
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx179_82
 cmp rax, r9
 je .Lx179_82
 mov r9, rax
 jmp .Lx179_81
.Lx179_82:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx179_85
 cmp eax, 99
 je .Lx179_85
 cmp eax, 13
 jne .Lx179_86
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx179_85
 jmp .Lx179_86
.Lx179_85:
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
 jmp .Lx179_87
.Lx179_86:
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [rdx + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [rdx + 8], rax
.Lx179_87:
 lea rcx, [rbp + 976]
.Lx179_88:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx179_91
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx179_89
 cmp esi, 1
 jne .Lx179_90
 mov rcx, rax
 jmp .Lx179_88
.Lx179_90:
 cmp esi, 2
 jne .Lx179_89
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx179_89
 mov rcx, rax
 jmp .Lx179_88
.Lx179_91:
 cmp eax, 13
 jne .Lx179_89
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx179_89
 cmp rax, rcx
 je .Lx179_89
 mov rcx, rax
 jmp .Lx179_88
.Lx179_89:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx179_92
 cmp eax, 99
 je .Lx179_92
 cmp eax, 13
 jne .Lx179_93
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx179_92
 jmp .Lx179_93
.Lx179_92:
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
 jmp .Lx179_94
.Lx179_93:
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rdx + 16], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [rdx + 24], rax
.Lx179_94:
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
 jmp .Lx179_77
.Lx179_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx179_77
.Lx179_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx179_77:
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain138_n14_α
 jmp xchain138_n29_α
 xchain138_n27_β:
 jmp xchain138_n14_α
# IR_VAR_REF
 xchain138_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain138_n30_α
# IR_VAR_REF
 xchain138_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain138_n31_α
# IR_VAR_REF
 xchain138_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain138_n32_α
# IR_VAR_REF
 xchain138_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain138_n33_α
 xchain138_n32_α:
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
 lea r9, [rbp + 208]
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
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain138_n16_α
 jmp xchain138_n34_α
 xchain138_n32_β:
 jmp xchain138_n16_α
# IR_VAR_REF
 xchain138_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain138_n35_α
# IR_SUSPEND yield+resume
 xchain138_n34_α:
 lea rax, [rip + xchain138_n34_β]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_concatenate$2F3_γ
 xchain138_n34_β:
 jmp xchain138_n16_α
 xchain138_n35_α:
 mov qword ptr [rbp + 768], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx194_20
 mov rax, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx194_21
.Lx194_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 call rt_arg_stage@PLT
.Lx194_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx194_22
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx194_23
.Lx194_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 call rt_arg_stage@PLT
.Lx194_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx194_24
 mov rax, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx194_25
.Lx194_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 call rt_arg_stage@PLT
.Lx194_25:
 mov rdi, qword ptr [rip + .Lx194_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx194_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx194_3]
 lea rdx, [rip + .Lx194_4]
 jmp rax
.Lx194_3:
 mov qword ptr [rbp + 776], rsp
 mov rax, qword ptr [rbp + 768]
 test rax, rax
 jne .Lx194_5
 mov qword ptr [rbp + 768], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx194_2
.Lx194_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx194_2
.Lx194_4:
 mov rax, qword ptr [rbp + 768]
 test rax, rax
 jne .Lx194_6
 mov qword ptr [rbp + 768], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx194_2
.Lx194_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx194_2
.Lx194_1:
 call rt_faildescr@PLT
.Lx194_2:
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain138_n14_α
 jmp xchain138_n36_α
 xchain138_n35_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 776]
 jmp qword ptr [rsp]
.Lx194_0:
 .quad .Lx194_0_s
.Lx194_0_s:
 .string "concatenate/3"
# IR_SUSPEND yield+resume
 xchain138_n36_α:
 lea rax, [rip + xchain138_n36_β]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_concatenate$2F3_γ
 xchain138_n36_β:
 jmp xchain138_n35_β
proc_concatenate$2F3_res:
add rsp, 8
pop rbp
proc_concatenate$2F3_β:
jmp qword ptr [rbp + 1488]
proc_concatenate$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_concatenate$2F3_res]
push rax
mov rax, [rbp + 1592]
mov rbp, [rbp + 1608]
jmp rax
proc_concatenate$2F3_ω:
mov rax, [rbp + 1600]
lea rsp, [rbp + 1616]
mov rbp, [rbp + 1608]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "nreverse/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_nreverse$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1584
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "reverse/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_reverse$2F2_α]
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
  .Lstartup_pname2: .string "$reverse_/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_$reverse_$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1680
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "concatenate/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_concatenate$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1584
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
  mov qword ptr [rsp + 4712], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain197_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n1_α
 xchain197_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain197_n1_α:
 mov qword ptr [rbp + 4640], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [rbp + 4648], rax
 jmp xchain197_n2_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n2_α:
 mov qword ptr [rbp + 4528], 6
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [rbp + 4536], rax
 jmp xchain197_n3_α
.Lx200_0:
 .quad 1
# IR_LIT_STRING
 xchain197_n3_α:
 mov qword ptr [rbp + 4496], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 4504], rax
 jmp xchain197_n4_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n4_α:
 mov qword ptr [rbp + 4384], 6
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [rbp + 4392], rax
 jmp xchain197_n5_α
.Lx202_0:
 .quad 2
# IR_LIT_STRING
 xchain197_n5_α:
 mov qword ptr [rbp + 4352], 1
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [rbp + 4360], rax
 jmp xchain197_n6_α
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n6_α:
 mov qword ptr [rbp + 4240], 6
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 4248], rax
 jmp xchain197_n7_α
.Lx204_0:
 .quad 3
# IR_LIT_STRING
 xchain197_n7_α:
 mov qword ptr [rbp + 4208], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [rbp + 4216], rax
 jmp xchain197_n8_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n8_α:
 mov qword ptr [rbp + 4096], 6
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 4104], rax
 jmp xchain197_n9_α
.Lx206_0:
 .quad 4
# IR_LIT_STRING
 xchain197_n9_α:
 mov qword ptr [rbp + 4064], 1
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 4072], rax
 jmp xchain197_n10_α
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n10_α:
 mov qword ptr [rbp + 3952], 6
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [rbp + 3960], rax
 jmp xchain197_n11_α
.Lx208_0:
 .quad 5
# IR_LIT_STRING
 xchain197_n11_α:
 mov qword ptr [rbp + 3920], 1
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [rbp + 3928], rax
 jmp xchain197_n12_α
.Lx209_0:
 .quad .Lx209_0_s
.Lx209_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n12_α:
 mov qword ptr [rbp + 3808], 6
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [rbp + 3816], rax
 jmp xchain197_n13_α
.Lx210_0:
 .quad 6
# IR_LIT_STRING
 xchain197_n13_α:
 mov qword ptr [rbp + 3776], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 3784], rax
 jmp xchain197_n14_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n14_α:
 mov qword ptr [rbp + 3664], 6
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 3672], rax
 jmp xchain197_n15_α
.Lx212_0:
 .quad 7
# IR_LIT_STRING
 xchain197_n15_α:
 mov qword ptr [rbp + 3632], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [rbp + 3640], rax
 jmp xchain197_n16_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n16_α:
 mov qword ptr [rbp + 3520], 6
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [rbp + 3528], rax
 jmp xchain197_n17_α
.Lx214_0:
 .quad 8
# IR_LIT_STRING
 xchain197_n17_α:
 mov qword ptr [rbp + 3488], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [rbp + 3496], rax
 jmp xchain197_n18_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n18_α:
 mov qword ptr [rbp + 3376], 6
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 3384], rax
 jmp xchain197_n19_α
.Lx216_0:
 .quad 9
# IR_LIT_STRING
 xchain197_n19_α:
 mov qword ptr [rbp + 3344], 1
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [rbp + 3352], rax
 jmp xchain197_n20_α
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n20_α:
 mov qword ptr [rbp + 3232], 6
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain197_n21_α
.Lx218_0:
 .quad 10
# IR_LIT_STRING
 xchain197_n21_α:
 mov qword ptr [rbp + 3200], 1
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [rbp + 3208], rax
 jmp xchain197_n22_α
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n22_α:
 mov qword ptr [rbp + 3088], 6
 mov rax, qword ptr [rip + .Lx220_0]
 mov qword ptr [rbp + 3096], rax
 jmp xchain197_n23_α
.Lx220_0:
 .quad 11
# IR_LIT_STRING
 xchain197_n23_α:
 mov qword ptr [rbp + 3056], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 3064], rax
 jmp xchain197_n24_α
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n24_α:
 mov qword ptr [rbp + 2944], 6
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain197_n25_α
.Lx222_0:
 .quad 12
# IR_LIT_STRING
 xchain197_n25_α:
 mov qword ptr [rbp + 2912], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [rbp + 2920], rax
 jmp xchain197_n26_α
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n26_α:
 mov qword ptr [rbp + 2800], 6
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [rbp + 2808], rax
 jmp xchain197_n27_α
.Lx224_0:
 .quad 13
# IR_LIT_STRING
 xchain197_n27_α:
 mov qword ptr [rbp + 2768], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [rbp + 2776], rax
 jmp xchain197_n28_α
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n28_α:
 mov qword ptr [rbp + 2656], 6
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [rbp + 2664], rax
 jmp xchain197_n29_α
.Lx226_0:
 .quad 14
# IR_LIT_STRING
 xchain197_n29_α:
 mov qword ptr [rbp + 2624], 1
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 2632], rax
 jmp xchain197_n30_α
.Lx227_0:
 .quad .Lx227_0_s
.Lx227_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n30_α:
 mov qword ptr [rbp + 2512], 6
 mov rax, qword ptr [rip + .Lx228_0]
 mov qword ptr [rbp + 2520], rax
 jmp xchain197_n31_α
.Lx228_0:
 .quad 15
# IR_LIT_STRING
 xchain197_n31_α:
 mov qword ptr [rbp + 2480], 1
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [rbp + 2488], rax
 jmp xchain197_n32_α
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n32_α:
 mov qword ptr [rbp + 2368], 6
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain197_n33_α
.Lx230_0:
 .quad 16
# IR_LIT_STRING
 xchain197_n33_α:
 mov qword ptr [rbp + 2336], 1
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [rbp + 2344], rax
 jmp xchain197_n34_α
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n34_α:
 mov qword ptr [rbp + 2224], 6
 mov rax, qword ptr [rip + .Lx232_0]
 mov qword ptr [rbp + 2232], rax
 jmp xchain197_n35_α
.Lx232_0:
 .quad 17
# IR_LIT_STRING
 xchain197_n35_α:
 mov qword ptr [rbp + 2192], 1
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [rbp + 2200], rax
 jmp xchain197_n36_α
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n36_α:
 mov qword ptr [rbp + 2080], 6
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain197_n37_α
.Lx234_0:
 .quad 18
# IR_LIT_STRING
 xchain197_n37_α:
 mov qword ptr [rbp + 2048], 1
 mov rax, qword ptr [rip + .Lx235_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain197_n38_α
.Lx235_0:
 .quad .Lx235_0_s
.Lx235_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n38_α:
 mov qword ptr [rbp + 1936], 6
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 1944], rax
 jmp xchain197_n39_α
.Lx236_0:
 .quad 19
# IR_LIT_STRING
 xchain197_n39_α:
 mov qword ptr [rbp + 1904], 1
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain197_n40_α
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n40_α:
 mov qword ptr [rbp + 1792], 6
 mov rax, qword ptr [rip + .Lx238_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain197_n41_α
.Lx238_0:
 .quad 20
# IR_LIT_STRING
 xchain197_n41_α:
 mov qword ptr [rbp + 1760], 1
 mov rax, qword ptr [rip + .Lx239_0]
 mov qword ptr [rbp + 1768], rax
 jmp xchain197_n42_α
.Lx239_0:
 .quad .Lx239_0_s
.Lx239_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n42_α:
 mov qword ptr [rbp + 1648], 6
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain197_n43_α
.Lx240_0:
 .quad 21
# IR_LIT_STRING
 xchain197_n43_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain197_n44_α
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n44_α:
 mov qword ptr [rbp + 1504], 6
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain197_n45_α
.Lx242_0:
 .quad 22
# IR_LIT_STRING
 xchain197_n45_α:
 mov qword ptr [rbp + 1472], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain197_n46_α
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n46_α:
 mov qword ptr [rbp + 1360], 6
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 1368], rax
 jmp xchain197_n47_α
.Lx244_0:
 .quad 23
# IR_LIT_STRING
 xchain197_n47_α:
 mov qword ptr [rbp + 1328], 1
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain197_n48_α
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n48_α:
 mov qword ptr [rbp + 1216], 6
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain197_n49_α
.Lx246_0:
 .quad 24
# IR_LIT_STRING
 xchain197_n49_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain197_n50_α
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n50_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain197_n51_α
.Lx248_0:
 .quad 25
# IR_LIT_STRING
 xchain197_n51_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain197_n52_α
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n52_α:
 mov qword ptr [rbp + 928], 6
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain197_n53_α
.Lx250_0:
 .quad 26
# IR_LIT_STRING
 xchain197_n53_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain197_n54_α
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n54_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain197_n55_α
.Lx252_0:
 .quad 27
# IR_LIT_STRING
 xchain197_n55_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain197_n56_α
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n56_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain197_n57_α
.Lx254_0:
 .quad 28
# IR_LIT_STRING
 xchain197_n57_α:
 mov qword ptr [rbp + 608], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain197_n58_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n58_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain197_n59_α
.Lx256_0:
 .quad 29
# IR_LIT_STRING
 xchain197_n59_α:
 mov qword ptr [rbp + 464], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain197_n60_α
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain197_n60_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain197_n61_α
.Lx258_0:
 .quad 30
# IR_LIT_STRING
 xchain197_n61_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx259_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain197_n62_α
.Lx259_0:
 .quad .Lx259_0_s
.Lx259_0_s:
 .string "[]"
 xchain197_n62_α:
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
 jmp xchain197_n63_α
 xchain197_n62_β:
 jmp main_ω
 xchain197_n63_α:
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
 jmp xchain197_n64_α
 xchain197_n63_β:
 jmp main_ω
 xchain197_n64_α:
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
 jmp xchain197_n65_α
 xchain197_n64_β:
 jmp main_ω
 xchain197_n65_α:
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
 jmp xchain197_n66_α
 xchain197_n65_β:
 jmp main_ω
 xchain197_n66_α:
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
 jmp xchain197_n67_α
 xchain197_n66_β:
 jmp main_ω
 xchain197_n67_α:
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
 jmp xchain197_n68_α
 xchain197_n67_β:
 jmp main_ω
 xchain197_n68_α:
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
 jmp xchain197_n69_α
 xchain197_n68_β:
 jmp main_ω
 xchain197_n69_α:
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
 je main_ω
 jmp xchain197_n70_α
 xchain197_n69_β:
 jmp main_ω
 xchain197_n70_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1552]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1560], rax
# marshal arg1 = producer-box slot [zr+1504] -> [zr+1568]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1576], rax
# marshal arg2 = producer-box slot [zr+1392] -> [zr+1584]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1592], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1552]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n71_α
 xchain197_n70_β:
 jmp main_ω
 xchain197_n71_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1760] -> [zr+1696]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1704], rax
# marshal arg1 = producer-box slot [zr+1648] -> [zr+1712]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1720], rax
# marshal arg2 = producer-box slot [zr+1536] -> [zr+1728]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1736], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1696]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n72_α
 xchain197_n71_β:
 jmp main_ω
 xchain197_n72_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1840]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1848], rax
# marshal arg1 = producer-box slot [zr+1792] -> [zr+1856]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1864], rax
# marshal arg2 = producer-box slot [zr+1680] -> [zr+1872]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1840]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n73_α
 xchain197_n72_β:
 jmp main_ω
 xchain197_n73_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+1984]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 1992], rax
# marshal arg1 = producer-box slot [zr+1936] -> [zr+2000]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 2008], rax
# marshal arg2 = producer-box slot [zr+1824] -> [zr+2016]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 2024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1984]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n74_α
 xchain197_n73_β:
 jmp main_ω
 xchain197_n74_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2128]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2136], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+2144]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2152], rax
# marshal arg2 = producer-box slot [zr+1968] -> [zr+2160]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 2168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2128]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n75_α
 xchain197_n74_β:
 jmp main_ω
 xchain197_n75_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2336] -> [zr+2272]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2280], rax
# marshal arg1 = producer-box slot [zr+2224] -> [zr+2288]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2296], rax
# marshal arg2 = producer-box slot [zr+2112] -> [zr+2304]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2272]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n76_α
 xchain197_n75_β:
 jmp main_ω
 xchain197_n76_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+2416]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2424], rax
# marshal arg1 = producer-box slot [zr+2368] -> [zr+2432]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2440], rax
# marshal arg2 = producer-box slot [zr+2256] -> [zr+2448]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2416]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n77_α
 xchain197_n76_β:
 jmp main_ω
 xchain197_n77_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2624] -> [zr+2560]
 mov rax, qword ptr [rbp + 2624]
 mov qword ptr [rbp + 2560], rax
 mov rax, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 2568], rax
# marshal arg1 = producer-box slot [zr+2512] -> [zr+2576]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2584], rax
# marshal arg2 = producer-box slot [zr+2400] -> [zr+2592]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2560]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n78_α
 xchain197_n77_β:
 jmp main_ω
 xchain197_n78_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2768] -> [zr+2704]
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 2712], rax
# marshal arg1 = producer-box slot [zr+2656] -> [zr+2720]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2728], rax
# marshal arg2 = producer-box slot [zr+2544] -> [zr+2736]
 mov rax, qword ptr [rbp + 2544]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 2744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2704]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n79_α
 xchain197_n78_β:
 jmp main_ω
 xchain197_n79_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2912] -> [zr+2848]
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 2856], rax
# marshal arg1 = producer-box slot [zr+2800] -> [zr+2864]
 mov rax, qword ptr [rbp + 2800]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2808]
 mov qword ptr [rbp + 2872], rax
# marshal arg2 = producer-box slot [zr+2688] -> [zr+2880]
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 2888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2848]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n80_α
 xchain197_n79_β:
 jmp main_ω
 xchain197_n80_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3056] -> [zr+2992]
 mov rax, qword ptr [rbp + 3056]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3064]
 mov qword ptr [rbp + 3000], rax
# marshal arg1 = producer-box slot [zr+2944] -> [zr+3008]
 mov rax, qword ptr [rbp + 2944]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 2952]
 mov qword ptr [rbp + 3016], rax
# marshal arg2 = producer-box slot [zr+2832] -> [zr+3024]
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 3032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2992]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n81_α
 xchain197_n80_β:
 jmp main_ω
 xchain197_n81_α:
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
# marshal arg2 = producer-box slot [zr+2976] -> [zr+3168]
 mov rax, qword ptr [rbp + 2976]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 2984]
 mov qword ptr [rbp + 3176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3136]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n82_α
 xchain197_n81_β:
 jmp main_ω
 xchain197_n82_α:
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
 je main_ω
 jmp xchain197_n83_α
 xchain197_n82_β:
 jmp main_ω
 xchain197_n83_α:
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
 je main_ω
 jmp xchain197_n84_α
 xchain197_n83_β:
 jmp main_ω
 xchain197_n84_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3632] -> [zr+3568]
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3568], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3576], rax
# marshal arg1 = producer-box slot [zr+3520] -> [zr+3584]
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 3584], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 3592], rax
# marshal arg2 = producer-box slot [zr+3408] -> [zr+3600]
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 3608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3568]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n85_α
 xchain197_n84_β:
 jmp main_ω
 xchain197_n85_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3776] -> [zr+3712]
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 3712], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 3720], rax
# marshal arg1 = producer-box slot [zr+3664] -> [zr+3728]
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 3728], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 3736], rax
# marshal arg2 = producer-box slot [zr+3552] -> [zr+3744]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3744], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3752], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3712]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n86_α
 xchain197_n85_β:
 jmp main_ω
 xchain197_n86_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3920] -> [zr+3856]
 mov rax, qword ptr [rbp + 3920]
 mov qword ptr [rbp + 3856], rax
 mov rax, qword ptr [rbp + 3928]
 mov qword ptr [rbp + 3864], rax
# marshal arg1 = producer-box slot [zr+3808] -> [zr+3872]
 mov rax, qword ptr [rbp + 3808]
 mov qword ptr [rbp + 3872], rax
 mov rax, qword ptr [rbp + 3816]
 mov qword ptr [rbp + 3880], rax
# marshal arg2 = producer-box slot [zr+3696] -> [zr+3888]
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 3888], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 3896], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3856]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n87_α
 xchain197_n86_β:
 jmp main_ω
 xchain197_n87_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4064] -> [zr+4000]
 mov rax, qword ptr [rbp + 4064]
 mov qword ptr [rbp + 4000], rax
 mov rax, qword ptr [rbp + 4072]
 mov qword ptr [rbp + 4008], rax
# marshal arg1 = producer-box slot [zr+3952] -> [zr+4016]
 mov rax, qword ptr [rbp + 3952]
 mov qword ptr [rbp + 4016], rax
 mov rax, qword ptr [rbp + 3960]
 mov qword ptr [rbp + 4024], rax
# marshal arg2 = producer-box slot [zr+3840] -> [zr+4032]
 mov rax, qword ptr [rbp + 3840]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 3848]
 mov qword ptr [rbp + 4040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4000]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3984], rax
 mov qword ptr [rbp + 3992], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n88_α
 xchain197_n87_β:
 jmp main_ω
 xchain197_n88_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4208] -> [zr+4144]
 mov rax, qword ptr [rbp + 4208]
 mov qword ptr [rbp + 4144], rax
 mov rax, qword ptr [rbp + 4216]
 mov qword ptr [rbp + 4152], rax
# marshal arg1 = producer-box slot [zr+4096] -> [zr+4160]
 mov rax, qword ptr [rbp + 4096]
 mov qword ptr [rbp + 4160], rax
 mov rax, qword ptr [rbp + 4104]
 mov qword ptr [rbp + 4168], rax
# marshal arg2 = producer-box slot [zr+3984] -> [zr+4176]
 mov rax, qword ptr [rbp + 3984]
 mov qword ptr [rbp + 4176], rax
 mov rax, qword ptr [rbp + 3992]
 mov qword ptr [rbp + 4184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4144]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4128], rax
 mov qword ptr [rbp + 4136], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n89_α
 xchain197_n88_β:
 jmp main_ω
 xchain197_n89_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4352] -> [zr+4288]
 mov rax, qword ptr [rbp + 4352]
 mov qword ptr [rbp + 4288], rax
 mov rax, qword ptr [rbp + 4360]
 mov qword ptr [rbp + 4296], rax
# marshal arg1 = producer-box slot [zr+4240] -> [zr+4304]
 mov rax, qword ptr [rbp + 4240]
 mov qword ptr [rbp + 4304], rax
 mov rax, qword ptr [rbp + 4248]
 mov qword ptr [rbp + 4312], rax
# marshal arg2 = producer-box slot [zr+4128] -> [zr+4320]
 mov rax, qword ptr [rbp + 4128]
 mov qword ptr [rbp + 4320], rax
 mov rax, qword ptr [rbp + 4136]
 mov qword ptr [rbp + 4328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4288]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n90_α
 xchain197_n89_β:
 jmp main_ω
 xchain197_n90_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4496] -> [zr+4432]
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 4432], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 4440], rax
# marshal arg1 = producer-box slot [zr+4384] -> [zr+4448]
 mov rax, qword ptr [rbp + 4384]
 mov qword ptr [rbp + 4448], rax
 mov rax, qword ptr [rbp + 4392]
 mov qword ptr [rbp + 4456], rax
# marshal arg2 = producer-box slot [zr+4272] -> [zr+4464]
 mov rax, qword ptr [rbp + 4272]
 mov qword ptr [rbp + 4464], rax
 mov rax, qword ptr [rbp + 4280]
 mov qword ptr [rbp + 4472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4432]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4416], rax
 mov qword ptr [rbp + 4424], rdx
 cmp eax, 99
 je main_ω
 jmp xchain197_n91_α
 xchain197_n90_β:
 jmp main_ω
 xchain197_n91_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4640] -> [zr+4576]
 mov rax, qword ptr [rbp + 4640]
 mov qword ptr [rbp + 4576], rax
 mov rax, qword ptr [rbp + 4648]
 mov qword ptr [rbp + 4584], rax
# marshal arg1 = producer-box slot [zr+4528] -> [zr+4592]
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 4592], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 4600], rax
# marshal arg2 = producer-box slot [zr+4416] -> [zr+4608]
 mov rax, qword ptr [rbp + 4416]
 mov qword ptr [rbp + 4608], rax
 mov rax, qword ptr [rbp + 4424]
 mov qword ptr [rbp + 4616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4576]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 cmp eax, 99
 je xchain197_n93_α
 jmp xchain197_n92_α
 xchain197_n91_β:
 jmp xchain197_n93_α
# IR_VAR_REF
 xchain197_n92_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4720]
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 jmp xchain197_n94_α
 xchain197_n93_α:
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
 xchain197_n93_β:
 jmp main_ω
 xchain197_n94_α:
 mov qword ptr [rbp + 288], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx294_20
 mov rax, qword ptr [rbp + 4560]
 mov rdx, qword ptr [rbp + 4568]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx294_21
.Lx294_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4560]
 mov rdx, qword ptr [rbp + 4568]
 call rt_arg_stage@PLT
.Lx294_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx294_22
 mov rax, qword ptr [rbp + 4672]
 mov rdx, qword ptr [rbp + 4680]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx294_23
.Lx294_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 4672]
 mov rdx, qword ptr [rbp + 4680]
 call rt_arg_stage@PLT
.Lx294_23:
 mov rdi, qword ptr [rip + .Lx294_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx294_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx294_3]
 lea rdx, [rip + .Lx294_4]
 jmp rax
.Lx294_3:
 mov qword ptr [rbp + 296], rsp
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx294_5
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx294_2
.Lx294_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx294_2
.Lx294_4:
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx294_6
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx294_2
.Lx294_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx294_2
.Lx294_1:
 call rt_faildescr@PLT
.Lx294_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain197_n93_α
 jmp xchain197_n95_α
 xchain197_n94_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 296]
 jmp qword ptr [rsp]
.Lx294_0:
 .quad .Lx294_0_s
.Lx294_0_s:
 .string "nreverse/2"
# IR_VAR
 xchain197_n95_α:
 mov rax, qword ptr [rbp + 4720]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 4728]
 mov qword ptr [rbp + 216], rax
 jmp xchain197_n96_α
 xchain197_n96_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn298: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn298]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain197_n94_β
 jmp xchain197_n97_α
 xchain197_n96_β:
 jmp xchain197_n94_β
# IR_LIT_STRING
 xchain197_n97_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx299_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain197_n98_α
.Lx299_0:
 .quad .Lx299_0_s
.Lx299_0_s:
 .string ""
 xchain197_n98_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn301: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn301]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain197_n94_β
 jmp xchain197_n99_α
 xchain197_n98_β:
 jmp xchain197_n94_β
# IR_MOVE_LABEL
 xchain197_n99_α:
 lea rax, [rip + xchain197_n94_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain197_n100_α:
 jmp qword ptr [rbp + 32]
 xchain197_n100_β:
 jmp main_ω
main_β:
jmp xchain197_n100_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 4712]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 4712]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
