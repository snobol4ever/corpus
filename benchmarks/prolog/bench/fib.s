  .intel_syntax noprefix
  .text
  .globl proc_fib$2F2_α
proc_fib$2F2_α:
#=======================================================================================================================
    .global proc_fib$2F2_α
    .global proc_fib$2F2_β
    .global proc_fib$2F2_γ
    .global proc_fib$2F2_ω
  sub rsp, 2336
  mov [rsp + 2312], rcx
  mov [rsp + 2320], rdx
  mov [rsp + 2328], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2200], rsp
  mov rdi, rsp
  mov esi, 2192
  mov edx, 2304
  call rt_jmp_frame_lexprep2@PLT
proc_fib$2F2_α_body:
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
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx1_101:
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_fib$2F2_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_fib$2F2_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [rbp + 2128], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain0_n3_α
.Lx4_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n3_α:
 mov qword ptr [rbp + 2160], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 2168], rax
 jmp xchain0_n4_α
.Lx5_0:
 .quad 0
 xchain0_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2048]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2056], rax
# marshal arg1 = producer-box slot [zr+2128] -> [zr+2064]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2072], rax
# marshal arg2 = producer-box slot [zr+2160] -> [zr+2080]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2088], rax
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 2048]
 lea r8, [rbp + 2048]
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
 je .Lx6_115
 cmp eax, 6
 jne .Lx6_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx6_114
 movabs rdx, 0
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx6_115
 jmp .Lx6_114
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
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n7_α:
 mov qword ptr [rbp + 2000], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain0_n9_α
.Lx11_0:
 .quad 0
# IR_LIT_INTEGER
 xchain0_n8_α:
 mov qword ptr [rbp + 1712], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [rbp + 1720], rax
 jmp xchain0_n10_α
.Lx12_0:
 .quad 1
 xchain0_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1968] -> [zr+1936]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1944], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1936]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n10_α:
 mov qword ptr [rbp + 1744], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain0_n13_α
.Lx14_0:
 .quad 1
# IR_VAR_REF
 xchain0_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain0_n14_α
 xchain0_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1792]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1800], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1792]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je proc_fib$2F2_ω
 jmp xchain0_n6_α
 xchain0_n12_β:
 jmp proc_fib$2F2_ω
 xchain0_n13_α:
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
# PL-SINK-4 inline $ix_g specialized guard (kk emit-time constant); rt_pl_dop_ix_g stays the slow-path oracle (unmodified args)
 lea rdi, [rbp + 1632]
 lea r8, [rbp + 1632]
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
 je .Lx18_115
 cmp eax, 6
 jne .Lx18_114
 mov esi, dword ptr [r8 + 4]
 cmp esi, 0
 jne .Lx18_114
 movabs rdx, 1
 mov rsi, qword ptr [r8 + 8]
 cmp rsi, rdx
 jne .Lx18_115
 jmp .Lx18_114
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
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n16_α
# IR_LIT_INTEGER
 xchain0_n14_α:
 mov qword ptr [rbp + 1888], 6
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [rbp + 1896], rax
 jmp xchain0_n17_α
.Lx19_0:
 .quad 1
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain0_n18_α
# IR_VAR_REF
 xchain0_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain0_n19_α
 xchain0_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1856] -> [zr+1824]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1832], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1824]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n18_α:
 mov qword ptr [rbp + 1584], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [rbp + 1592], rax
 jmp xchain0_n21_α
.Lx25_0:
 .quad 1
# IR_VAR_REF
 xchain0_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2288]
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain0_n22_α
 xchain0_n20_α:
# IR_CUT
 jmp xchain0_n23_α
 xchain0_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1520]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1520]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n25_α
 xchain0_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1264]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1272], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1280]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1288], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1264]
 lea r8, [rbp + 1264]
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
 lea r9, [rbp + 1280]
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
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n26_α
 xchain0_n22_β:
 jmp xchain0_n27_α
# IR_MOVE_LABEL
 xchain0_n23_α:
 lea rax, [rip + xchain0_n12_α]
 mov qword ptr [rbp + 64], rax
 jmp proc_fib$2F2_γ
# IR_VAR_REF
 xchain0_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain0_n29_α
 xchain0_n25_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1376]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1376]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je proc_fib$2F2_ω
 jmp xchain0_n16_α
 xchain0_n25_β:
 jmp proc_fib$2F2_ω
# IR_VAR_REF
 xchain0_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain0_n30_α
 xchain0_n27_α:
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
 je proc_fib$2F2_ω
 jmp proc_fib$2F2_ω
 xchain0_n27_β:
 jmp proc_fib$2F2_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n28_α:
 jmp qword ptr [rbp + 64]
 xchain0_n28_β:
 jmp proc_fib$2F2_ω
# IR_LIT_INTEGER
 xchain0_n29_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain0_n31_α
.Lx41_0:
 .quad 1
# IR_VAR_REF
 xchain0_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2208]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain0_n32_α
 xchain0_n31_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1408]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1416], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1408]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n25_α
 xchain0_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1152]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1160], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1168]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1176], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1152]
 lea r8, [rbp + 1152]
.Lx45_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx45_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx45_41
 cmp esi, 1
 jne .Lx45_55
 mov r8, rax
 jmp .Lx45_40
.Lx45_55:
 cmp esi, 2
 jne .Lx45_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx45_41
 mov r8, rax
 jmp .Lx45_40
.Lx45_56:
 cmp eax, 13
 jne .Lx45_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx45_41
 cmp rax, r8
 je .Lx45_41
 mov r8, rax
 jmp .Lx45_40
.Lx45_41:
 lea r9, [rbp + 1168]
.Lx45_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx45_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx45_43
 cmp esi, 1
 jne .Lx45_57
 mov r9, rax
 jmp .Lx45_42
.Lx45_57:
 cmp esi, 2
 jne .Lx45_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx45_43
 mov r9, rax
 jmp .Lx45_42
.Lx45_58:
 cmp eax, 13
 jne .Lx45_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx45_43
 cmp rax, r9
 je .Lx45_43
 mov r9, rax
 jmp .Lx45_42
.Lx45_43:
 cmp r8, r9
 je .Lx45_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx45_44
 cmp eax, 99
 je .Lx45_44
 cmp eax, 13
 jne .Lx45_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx45_44
 jmp .Lx45_45
.Lx45_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx45_53
 cmp eax, 99
 je .Lx45_53
 cmp eax, 13
 jne .Lx45_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx45_53
 jmp .Lx45_46
.Lx45_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx45_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx45_53
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
 jmp .Lx45_51
.Lx45_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx45_47
 cmp eax, 99
 je .Lx45_47
 cmp eax, 13
 jne .Lx45_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx45_47
 jmp .Lx45_48
.Lx45_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx45_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx45_53
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
 jmp .Lx45_51
.Lx45_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx45_49
 cmp edx, 14
 je .Lx45_53
 jmp .Lx45_52
.Lx45_49:
 cmp edx, 14
 je .Lx45_52
 cmp ecx, 7
 je .Lx45_53
 cmp edx, 7
 je .Lx45_53
 cmp ecx, 6
 jne .Lx45_50
 cmp edx, 6
 jne .Lx45_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx45_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx45_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx45_51
 jmp .Lx45_52
.Lx45_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx45_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx45_53
.Lx45_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx45_54
.Lx45_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx45_54
.Lx45_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx45_54:
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n27_α
 xchain0_n33_α:
# IR_CUT
 jmp xchain0_n35_α
# IR_VAR
 xchain0_n34_α:
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 1080], rax
 jmp xchain0_n36_α
# IR_MOVE_LABEL
 xchain0_n35_α:
 lea rax, [rip + xchain0_n25_α]
 mov qword ptr [rbp + 64], rax
 jmp proc_fib$2F2_γ
# IR_LIT_INTEGER
 xchain0_n36_α:
 mov qword ptr [rbp + 1104], 6
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain0_n37_α
.Lx51_0:
 .quad 1
 xchain0_n37_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1040]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1056]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_gt (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 2
 call rt_pl_dop_cmp_gt@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n38_α
 xchain0_n37_β:
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2272]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain0_n39_α
# IR_VAR
 xchain0_n39_α:
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 968], rax
 jmp xchain0_n40_α
# IR_LIT_INTEGER
 xchain0_n40_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain0_n41_α
.Lx57_0:
 .quad 1
 xchain0_n41_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n42_α
 xchain0_n41_β:
 jmp xchain0_n27_α
 xchain0_n42_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 832]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n43_α
 xchain0_n42_β:
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2256]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain0_n44_α
# IR_VAR
 xchain0_n44_α:
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 760], rax
 jmp xchain0_n45_α
# IR_LIT_INTEGER
 xchain0_n45_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain0_n46_α
.Lx64_0:
 .quad 2
 xchain0_n46_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 704]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n47_α
 xchain0_n46_β:
 jmp xchain0_n27_α
 xchain0_n47_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2272]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2224]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain0_n50_α
 xchain0_n50_α:
 lea rsi, [rbp + 544]
 lea rdx, [rbp + 576]
 call proc_fib$2F2_dcα
 jmp .Lx72_2
.Lx72_2:
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp xchain0_n27_α
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string "fib/2"
# IR_VAR_REF
 xchain0_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2256]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain0_n52_α
# IR_VAR_REF
 xchain0_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2240]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain0_n53_α
 xchain0_n53_α:
 lea rsi, [rbp + 416]
 lea rdx, [rbp + 448]
 call proc_fib$2F2_dcα
 jmp .Lx78_2
.Lx78_2:
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain0_n50_β
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp xchain0_n50_β
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string "fib/2"
# IR_VAR_REF
 xchain0_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2208]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain0_n55_α
# IR_VAR
 xchain0_n55_α:
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 296], rax
 jmp xchain0_n56_α
# IR_VAR
 xchain0_n56_α:
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 328], rax
 jmp xchain0_n57_α
 xchain0_n57_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+240]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 248], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+256]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 240]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n58_α
 xchain0_n57_β:
 jmp xchain0_n27_α
 xchain0_n58_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain0_n53_β
 jmp xchain0_n59_α
 xchain0_n58_β:
 jmp xchain0_n53_β
# IR_MOVE_LABEL
 xchain0_n59_α:
 lea rax, [rip + xchain0_n53_β]
 mov qword ptr [rbp + 64], rax
 jmp proc_fib$2F2_γ
proc_fib$2F2_res:
add rsp, 8
pop rbp
proc_fib$2F2_β:
jmp xchain0_n28_α
proc_fib$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2312]
lea rsp, [rbp + 2336]
mov rbp, [rbp + 2328]
jmp rax
proc_fib$2F2_ω:
mov rax, [rbp + 2320]
lea rsp, [rbp + 2336]
mov rbp, [rbp + 2328]
jmp rax
proc_fib$2F2_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 2352
 mov qword ptr [rsp + 2344], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 2304], r11
 lea rax, [rip + .Lx89_2]
 mov qword ptr [rbp + 2312], rax
 lea rax, [rip + .Lx89_3]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2200], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov rdi, rbp
 mov esi, 2192
 mov edx, 2304
 mov ecx, 2
 mov r8d, 2
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_fib$2F2_α_body
.Lx89_2:
 mov rdx, qword ptr [rsp + -2352]
 mov rcx, rsp
 add rcx, -2336
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx89_3:
 mov rdi, qword ptr [rsp + -2352]
 mov rsi, rsp
 add rsi, -2336
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "fib/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_fib$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2304
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_fib$2F2_dcα]
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
  mov qword ptr [rsp + 376], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain90_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx91_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx91_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx91_101
.Lx91_100:
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx91_101:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain90_n1_α
 xchain90_n0_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain90_n1_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain90_n2_α
.Lx92_0:
 .quad 20
# IR_VAR_REF
 xchain90_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain90_n3_α
 xchain90_n3_α:
 lea rsi, [rbp + 304]
 lea rdx, [rbp + 336]
 call proc_fib$2F2_dcα
 jmp .Lx96_2
.Lx96_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain90_n5_α
 jmp xchain90_n4_α
 xchain90_n3_β:
 jmp xchain90_n5_α
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string "fib/2"
# IR_VAR
 xchain90_n4_α:
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 216], rax
 jmp xchain90_n6_α
 xchain90_n5_α:
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
 xchain90_n5_β:
 jmp main_ω
 xchain90_n6_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn101: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn101]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain90_n3_β
 jmp xchain90_n7_α
 xchain90_n6_β:
 jmp xchain90_n3_β
# IR_LIT_STRING
 xchain90_n7_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain90_n8_α
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string ""
 xchain90_n8_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn104: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn104]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain90_n3_β
 jmp xchain90_n9_α
 xchain90_n8_β:
 jmp xchain90_n3_β
# IR_MOVE_LABEL
 xchain90_n9_α:
 lea rax, [rip + xchain90_n3_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain90_n10_α:
 jmp qword ptr [rbp + 32]
 xchain90_n10_β:
 jmp main_ω
main_β:
jmp xchain90_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 376]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 376]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
