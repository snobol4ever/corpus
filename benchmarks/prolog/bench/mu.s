  .intel_syntax noprefix
  .text
  .globl proc_rule$2F3_α
proc_rule$2F3_α:
#=======================================================================================================================
    .global proc_rule$2F3_α
    .global proc_rule$2F3_β
    .global proc_rule$2F3_γ
    .global proc_rule$2F3_ω
  sub rsp, 2912
  mov [rsp + 2888], rcx
  mov [rsp + 2896], rdx
  mov [rsp + 2904], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2840], rsp
  mov rdi, rsp
  mov esi, 2816
  mov edx, 2880
  call rt_jmp_frame_lexprep2@PLT
proc_rule$2F3_α_body:
lea rax, [rip + xchain0_n44_β]
mov qword ptr [rbp + 2816], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_rule$2F3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_rule$2F3_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [rbp + 2752], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain0_n3_α
.Lx4_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n3_α:
 mov qword ptr [rbp + 2784], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain0_n4_α
.Lx5_0:
 .quad 1
 xchain0_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2720] -> [zr+2672]
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 2680], rax
# marshal arg1 = producer-box slot [zr+2752] -> [zr+2688]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2696], rax
# marshal arg2 = producer-box slot [zr+2784] -> [zr+2704]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2672]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n7_α:
 mov qword ptr [rbp + 2624], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 2632], rax
 jmp xchain0_n9_α
.Lx11_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n8_α:
 mov qword ptr [rbp + 2080], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain0_n10_α
.Lx12_0:
 .quad 1
 xchain0_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2592] -> [zr+2560]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2560], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2568], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2560]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n10_α:
 mov qword ptr [rbp + 2112], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [rbp + 2120], rax
 jmp xchain0_n13_α
.Lx14_0:
 .quad 2
# IR_VAR_REF
 xchain0_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain0_n14_α
 xchain0_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2160]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2160]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 cmp eax, 99
 je proc_rule$2F3_ω
 jmp xchain0_n6_α
 xchain0_n12_β:
 jmp proc_rule$2F3_ω
 xchain0_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+2000]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 2008], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+2016]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2024], rax
# marshal arg2 = producer-box slot [zr+2112] -> [zr+2032]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2000]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 jmp xchain0_n17_α
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain0_n18_α
# IR_VAR_REF
 xchain0_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain0_n19_α
 xchain0_n17_α:
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
 lea r9, [rbp + 2464]
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
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n18_α:
 mov qword ptr [rbp + 1952], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain0_n21_α
.Lx26_0:
 .quad 2
# IR_LIT_INTEGER
 xchain0_n19_α:
 mov qword ptr [rbp + 1408], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain0_n22_α
.Lx27_0:
 .quad 1
# IR_VAR_REF
 xchain0_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain0_n23_α
 xchain0_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1920] -> [zr+1888]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1896], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1888]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n25_α
# IR_LIT_INTEGER
 xchain0_n22_α:
 mov qword ptr [rbp + 1440], 6
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain0_n26_α
.Lx31_0:
 .quad 3
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain0_n28_α
 xchain0_n25_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1488]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1488]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je proc_rule$2F3_ω
 jmp xchain0_n16_α
 xchain0_n25_β:
 jmp proc_rule$2F3_ω
 xchain0_n26_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1328]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1336], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1344]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1352], rax
# marshal arg2 = producer-box slot [zr+1440] -> [zr+1360]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1328]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n29_α
 xchain0_n26_β:
 jmp xchain0_n30_α
 xchain0_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2336]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2344], rax
# marshal arg1 = producer-box slot [zr+2400] -> [zr+2352]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2360], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2336]
 lea r8, [rbp + 2336]
.Lx38_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx38_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx38_41
 cmp esi, 1
 jne .Lx38_55
 mov r8, rax
 jmp .Lx38_40
.Lx38_55:
 cmp esi, 2
 jne .Lx38_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx38_41
 mov r8, rax
 jmp .Lx38_40
.Lx38_56:
 cmp eax, 13
 jne .Lx38_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx38_41
 cmp rax, r8
 je .Lx38_41
 mov r8, rax
 jmp .Lx38_40
.Lx38_41:
 lea r9, [rbp + 2352]
.Lx38_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx38_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx38_43
 cmp esi, 1
 jne .Lx38_57
 mov r9, rax
 jmp .Lx38_42
.Lx38_57:
 cmp esi, 2
 jne .Lx38_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx38_43
 mov r9, rax
 jmp .Lx38_42
.Lx38_58:
 cmp eax, 13
 jne .Lx38_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx38_43
 cmp rax, r9
 je .Lx38_43
 mov r9, rax
 jmp .Lx38_42
.Lx38_43:
 cmp r8, r9
 je .Lx38_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx38_44
 cmp eax, 99
 je .Lx38_44
 cmp eax, 13
 jne .Lx38_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx38_44
 jmp .Lx38_45
.Lx38_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx38_53
 cmp eax, 99
 je .Lx38_53
 cmp eax, 13
 jne .Lx38_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx38_53
 jmp .Lx38_46
.Lx38_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx38_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx38_53
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
 jmp .Lx38_51
.Lx38_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx38_47
 cmp eax, 99
 je .Lx38_47
 cmp eax, 13
 jne .Lx38_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx38_47
 jmp .Lx38_48
.Lx38_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx38_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx38_53
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
 jmp .Lx38_51
.Lx38_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx38_49
 cmp edx, 14
 je .Lx38_53
 jmp .Lx38_52
.Lx38_49:
 cmp edx, 14
 je .Lx38_52
 cmp ecx, 7
 je .Lx38_53
 cmp edx, 7
 je .Lx38_53
 cmp ecx, 6
 jne .Lx38_50
 cmp edx, 6
 jne .Lx38_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx38_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx38_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx38_51
 jmp .Lx38_52
.Lx38_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx38_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx38_53
.Lx38_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx38_54
.Lx38_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx38_54
.Lx38_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx38_54:
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp xchain0_n12_α
# IR_VAR_REF
 xchain0_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain0_n32_α
# IR_VAR_REF
 xchain0_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain0_n33_α
# IR_VAR_REF
 xchain0_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain0_n34_α
# IR_VAR_REF
 xchain0_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain0_n35_α
 xchain0_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1776]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
# marshal arg1 = producer-box slot [zr+1840] -> [zr+1792]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1800], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1776]
 lea r8, [rbp + 1776]
.Lx47_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx47_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx47_41
 cmp esi, 1
 jne .Lx47_55
 mov r8, rax
 jmp .Lx47_40
.Lx47_55:
 cmp esi, 2
 jne .Lx47_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx47_41
 mov r8, rax
 jmp .Lx47_40
.Lx47_56:
 cmp eax, 13
 jne .Lx47_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx47_41
 cmp rax, r8
 je .Lx47_41
 mov r8, rax
 jmp .Lx47_40
.Lx47_41:
 lea r9, [rbp + 1792]
.Lx47_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx47_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx47_43
 cmp esi, 1
 jne .Lx47_57
 mov r9, rax
 jmp .Lx47_42
.Lx47_57:
 cmp esi, 2
 jne .Lx47_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx47_43
 mov r9, rax
 jmp .Lx47_42
.Lx47_58:
 cmp eax, 13
 jne .Lx47_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx47_43
 cmp rax, r9
 je .Lx47_43
 mov r9, rax
 jmp .Lx47_42
.Lx47_43:
 cmp r8, r9
 je .Lx47_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx47_44
 cmp eax, 99
 je .Lx47_44
 cmp eax, 13
 jne .Lx47_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx47_44
 jmp .Lx47_45
.Lx47_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx47_53
 cmp eax, 99
 je .Lx47_53
 cmp eax, 13
 jne .Lx47_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx47_53
 jmp .Lx47_46
.Lx47_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx47_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx47_53
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
 jmp .Lx47_51
.Lx47_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx47_47
 cmp eax, 99
 je .Lx47_47
 cmp eax, 13
 jne .Lx47_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx47_47
 jmp .Lx47_48
.Lx47_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx47_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx47_53
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
 jmp .Lx47_51
.Lx47_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx47_49
 cmp edx, 14
 je .Lx47_53
 jmp .Lx47_52
.Lx47_49:
 cmp edx, 14
 je .Lx47_52
 cmp ecx, 7
 je .Lx47_53
 cmp edx, 7
 je .Lx47_53
 cmp ecx, 6
 jne .Lx47_50
 cmp edx, 6
 jne .Lx47_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx47_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx47_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx47_51
 jmp .Lx47_52
.Lx47_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx47_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx47_53
.Lx47_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx47_54
.Lx47_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx47_54
.Lx47_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx47_54:
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n36_α
 xchain0_n32_β:
 jmp xchain0_n25_α
# IR_LIT_INTEGER
 xchain0_n33_α:
 mov qword ptr [rbp + 1280], 6
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain0_n37_α
.Lx48_0:
 .quad 3
# IR_LIT_INTEGER
 xchain0_n34_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain0_n38_α
.Lx49_0:
 .quad 1
# IR_VAR_REF
 xchain0_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain0_n39_α
# IR_VAR_REF
 xchain0_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain0_n40_α
 xchain0_n37_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1216]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1224], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1216]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n41_α
 xchain0_n37_β:
 jmp xchain0_n42_α
# IR_LIT_INTEGER
 xchain0_n38_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain0_n43_α
.Lx55_0:
 .quad 4
 xchain0_n39_α:
 mov qword ptr [rbp + 2224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2256]
 mov rdx, qword ptr [rbp + 2264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2288]
 mov rdx, qword ptr [rbp + 2296]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx57_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx57_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx57_3]
 lea rdx, [rip + .Lx57_4]
 jmp rax
.Lx57_3:
 mov qword ptr [rbp + 2232], rsp
 mov rax, qword ptr [rbp + 2224]
 test rax, rax
 jne .Lx57_5
 mov qword ptr [rbp + 2224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx57_2
.Lx57_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx57_2
.Lx57_4:
 mov rax, qword ptr [rbp + 2224]
 test rax, rax
 jne .Lx57_6
 mov qword ptr [rbp + 2224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx57_2
.Lx57_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx57_2
.Lx57_1:
 call rt_faildescr@PLT
.Lx57_2:
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n44_α
 xchain0_n39_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2232]
 jmp qword ptr [rsp]
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "rule1/2"
# IR_VAR_REF
 xchain0_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain0_n45_α
# IR_VAR_REF
 xchain0_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain0_n46_α
 xchain0_n42_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+816]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_rule$2F3_ω
 jmp xchain0_n30_α
 xchain0_n42_β:
 jmp proc_rule$2F3_ω
 xchain0_n43_α:
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
 je xchain0_n48_α
 jmp xchain0_n47_α
 xchain0_n43_β:
 jmp xchain0_n48_α
# IR_SUSPEND yield+resume
 xchain0_n44_α:
 lea rax, [rip + xchain0_n44_β]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule$2F3_γ
 xchain0_n44_β:
 jmp xchain0_n39_β
 xchain0_n45_α:
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
 lea r9, [rbp + 1680]
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
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n49_α
 xchain0_n45_β:
 jmp xchain0_n25_α
# IR_VAR_REF
 xchain0_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain0_n50_α
# IR_VAR_REF
 xchain0_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain0_n51_α
 xchain0_n48_α:
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
 je proc_rule$2F3_ω
 jmp proc_rule$2F3_ω
 xchain0_n48_β:
 jmp proc_rule$2F3_ω
# IR_VAR_REF
 xchain0_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain0_n52_α
 xchain0_n50_α:
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
.Lx74_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx74_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx74_41
 cmp esi, 1
 jne .Lx74_55
 mov r8, rax
 jmp .Lx74_40
.Lx74_55:
 cmp esi, 2
 jne .Lx74_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx74_41
 mov r8, rax
 jmp .Lx74_40
.Lx74_56:
 cmp eax, 13
 jne .Lx74_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx74_41
 cmp rax, r8
 je .Lx74_41
 mov r8, rax
 jmp .Lx74_40
.Lx74_41:
 lea r9, [rbp + 1120]
.Lx74_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx74_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx74_43
 cmp esi, 1
 jne .Lx74_57
 mov r9, rax
 jmp .Lx74_42
.Lx74_57:
 cmp esi, 2
 jne .Lx74_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx74_43
 mov r9, rax
 jmp .Lx74_42
.Lx74_58:
 cmp eax, 13
 jne .Lx74_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx74_43
 cmp rax, r9
 je .Lx74_43
 mov r9, rax
 jmp .Lx74_42
.Lx74_43:
 cmp r8, r9
 je .Lx74_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx74_44
 cmp eax, 99
 je .Lx74_44
 cmp eax, 13
 jne .Lx74_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx74_44
 jmp .Lx74_45
.Lx74_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx74_53
 cmp eax, 99
 je .Lx74_53
 cmp eax, 13
 jne .Lx74_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx74_53
 jmp .Lx74_46
.Lx74_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx74_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx74_53
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
 jmp .Lx74_51
.Lx74_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx74_47
 cmp eax, 99
 je .Lx74_47
 cmp eax, 13
 jne .Lx74_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx74_47
 jmp .Lx74_48
.Lx74_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx74_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx74_53
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
 jmp .Lx74_51
.Lx74_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx74_49
 cmp edx, 14
 je .Lx74_53
 jmp .Lx74_52
.Lx74_49:
 cmp edx, 14
 je .Lx74_52
 cmp ecx, 7
 je .Lx74_53
 cmp edx, 7
 je .Lx74_53
 cmp ecx, 6
 jne .Lx74_50
 cmp edx, 6
 jne .Lx74_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx74_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx74_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx74_51
 jmp .Lx74_52
.Lx74_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx74_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx74_53
.Lx74_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx74_54
.Lx74_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx74_54
.Lx74_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx74_54:
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n53_α
 xchain0_n50_β:
 jmp xchain0_n42_α
# IR_LIT_INTEGER
 xchain0_n51_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain0_n54_α
.Lx75_0:
 .quad 4
# IR_VAR_REF
 xchain0_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain0_n55_α
# IR_VAR_REF
 xchain0_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain0_n56_α
 xchain0_n54_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 552], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 544]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain0_n48_α
 jmp xchain0_n57_α
 xchain0_n54_β:
 jmp xchain0_n48_α
 xchain0_n55_α:
 mov qword ptr [rbp + 1552], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1584]
 mov rdx, qword ptr [rbp + 1592]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1616]
 mov rdx, qword ptr [rbp + 1624]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx82_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx82_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx82_3]
 lea rdx, [rip + .Lx82_4]
 jmp rax
.Lx82_3:
 mov qword ptr [rbp + 1560], rsp
 mov rax, qword ptr [rbp + 1552]
 test rax, rax
 jne .Lx82_5
 mov qword ptr [rbp + 1552], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx82_2
.Lx82_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx82_2
.Lx82_4:
 mov rax, qword ptr [rbp + 1552]
 test rax, rax
 jne .Lx82_6
 mov qword ptr [rbp + 1552], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx82_2
.Lx82_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx82_2
.Lx82_1:
 call rt_faildescr@PLT
.Lx82_2:
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n58_α
 xchain0_n55_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1560]
 jmp qword ptr [rsp]
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "rule2/2"
# IR_VAR_REF
 xchain0_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain0_n59_α
# IR_VAR_REF
 xchain0_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain0_n60_α
# IR_SUSPEND yield+resume
 xchain0_n58_α:
 lea rax, [rip + xchain0_n58_β]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule$2F3_γ
 xchain0_n58_β:
 jmp xchain0_n55_β
 xchain0_n59_α:
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
 lea r9, [rbp + 1008]
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
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n61_α
 xchain0_n59_β:
 jmp xchain0_n42_α
# IR_VAR_REF
 xchain0_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain0_n62_α
# IR_VAR_REF
 xchain0_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain0_n63_α
 xchain0_n62_α:
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
.Lx94_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx94_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx94_41
 cmp esi, 1
 jne .Lx94_55
 mov r8, rax
 jmp .Lx94_40
.Lx94_55:
 cmp esi, 2
 jne .Lx94_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx94_41
 mov r8, rax
 jmp .Lx94_40
.Lx94_56:
 cmp eax, 13
 jne .Lx94_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx94_41
 cmp rax, r8
 je .Lx94_41
 mov r8, rax
 jmp .Lx94_40
.Lx94_41:
 lea r9, [rbp + 448]
.Lx94_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx94_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx94_43
 cmp esi, 1
 jne .Lx94_57
 mov r9, rax
 jmp .Lx94_42
.Lx94_57:
 cmp esi, 2
 jne .Lx94_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx94_43
 mov r9, rax
 jmp .Lx94_42
.Lx94_58:
 cmp eax, 13
 jne .Lx94_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx94_43
 cmp rax, r9
 je .Lx94_43
 mov r9, rax
 jmp .Lx94_42
.Lx94_43:
 cmp r8, r9
 je .Lx94_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx94_44
 cmp eax, 99
 je .Lx94_44
 cmp eax, 13
 jne .Lx94_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx94_44
 jmp .Lx94_45
.Lx94_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx94_53
 cmp eax, 99
 je .Lx94_53
 cmp eax, 13
 jne .Lx94_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx94_53
 jmp .Lx94_46
.Lx94_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx94_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx94_53
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
 jmp .Lx94_51
.Lx94_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx94_47
 cmp eax, 99
 je .Lx94_47
 cmp eax, 13
 jne .Lx94_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx94_47
 jmp .Lx94_48
.Lx94_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx94_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx94_53
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
 jmp .Lx94_51
.Lx94_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx94_49
 cmp edx, 14
 je .Lx94_53
 jmp .Lx94_52
.Lx94_49:
 cmp edx, 14
 je .Lx94_52
 cmp ecx, 7
 je .Lx94_53
 cmp edx, 7
 je .Lx94_53
 cmp ecx, 6
 jne .Lx94_50
 cmp edx, 6
 jne .Lx94_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx94_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx94_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx94_51
 jmp .Lx94_52
.Lx94_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx94_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx94_53
.Lx94_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx94_54
.Lx94_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx94_54
.Lx94_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx94_54:
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain0_n48_α
 jmp xchain0_n64_α
 xchain0_n62_β:
 jmp xchain0_n48_α
# IR_VAR_REF
 xchain0_n63_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain0_n65_α
# IR_VAR_REF
 xchain0_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain0_n66_α
 xchain0_n65_α:
 mov qword ptr [rbp + 880], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx100_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx100_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx100_3]
 lea rdx, [rip + .Lx100_4]
 jmp rax
.Lx100_3:
 mov qword ptr [rbp + 888], rsp
 mov rax, qword ptr [rbp + 880]
 test rax, rax
 jne .Lx100_5
 mov qword ptr [rbp + 880], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx100_2
.Lx100_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx100_2
.Lx100_4:
 mov rax, qword ptr [rbp + 880]
 test rax, rax
 jne .Lx100_6
 mov qword ptr [rbp + 880], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx100_2
.Lx100_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx100_2
.Lx100_1:
 call rt_faildescr@PLT
.Lx100_2:
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n67_α
 xchain0_n65_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 888]
 jmp qword ptr [rsp]
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "rule3/2"
# IR_VAR_REF
 xchain0_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain0_n68_α
# IR_SUSPEND yield+resume
 xchain0_n67_α:
 lea rax, [rip + xchain0_n67_β]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule$2F3_γ
 xchain0_n67_β:
 jmp xchain0_n65_β
 xchain0_n68_α:
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
.Lx105_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx105_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx105_41
 cmp esi, 1
 jne .Lx105_55
 mov r8, rax
 jmp .Lx105_40
.Lx105_55:
 cmp esi, 2
 jne .Lx105_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx105_41
 mov r8, rax
 jmp .Lx105_40
.Lx105_56:
 cmp eax, 13
 jne .Lx105_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx105_41
 cmp rax, r8
 je .Lx105_41
 mov r8, rax
 jmp .Lx105_40
.Lx105_41:
 lea r9, [rbp + 336]
.Lx105_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx105_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx105_43
 cmp esi, 1
 jne .Lx105_57
 mov r9, rax
 jmp .Lx105_42
.Lx105_57:
 cmp esi, 2
 jne .Lx105_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx105_43
 mov r9, rax
 jmp .Lx105_42
.Lx105_58:
 cmp eax, 13
 jne .Lx105_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx105_43
 cmp rax, r9
 je .Lx105_43
 mov r9, rax
 jmp .Lx105_42
.Lx105_43:
 cmp r8, r9
 je .Lx105_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx105_44
 cmp eax, 99
 je .Lx105_44
 cmp eax, 13
 jne .Lx105_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx105_44
 jmp .Lx105_45
.Lx105_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx105_53
 cmp eax, 99
 je .Lx105_53
 cmp eax, 13
 jne .Lx105_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx105_53
 jmp .Lx105_46
.Lx105_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx105_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx105_53
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
 jmp .Lx105_51
.Lx105_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx105_47
 cmp eax, 99
 je .Lx105_47
 cmp eax, 13
 jne .Lx105_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx105_47
 jmp .Lx105_48
.Lx105_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx105_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx105_53
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
 jmp .Lx105_51
.Lx105_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx105_49
 cmp edx, 14
 je .Lx105_53
 jmp .Lx105_52
.Lx105_49:
 cmp edx, 14
 je .Lx105_52
 cmp ecx, 7
 je .Lx105_53
 cmp edx, 7
 je .Lx105_53
 cmp ecx, 6
 jne .Lx105_50
 cmp edx, 6
 jne .Lx105_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx105_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx105_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx105_51
 jmp .Lx105_52
.Lx105_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx105_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx105_53
.Lx105_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx105_54
.Lx105_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx105_54
.Lx105_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx105_54:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain0_n48_α
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n48_α
# IR_VAR_REF
 xchain0_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain0_n70_α
# IR_VAR_REF
 xchain0_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain0_n71_α
 xchain0_n71_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx111_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx111_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx111_3]
 lea rdx, [rip + .Lx111_4]
 jmp rax
.Lx111_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx111_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx111_2
.Lx111_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx111_2
.Lx111_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx111_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx111_2
.Lx111_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx111_2
.Lx111_1:
 call rt_faildescr@PLT
.Lx111_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n48_α
 jmp xchain0_n72_α
 xchain0_n71_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx111_0:
 .quad .Lx111_0_s
.Lx111_0_s:
 .string "rule4/2"
# IR_SUSPEND yield+resume
 xchain0_n72_α:
 lea rax, [rip + xchain0_n72_β]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule$2F3_γ
 xchain0_n72_β:
 jmp xchain0_n71_β
proc_rule$2F3_res:
add rsp, 8
pop rbp
proc_rule$2F3_β:
jmp qword ptr [rbp + 2816]
proc_rule$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule$2F3_res]
push rax
mov rax, [rbp + 2888]
mov rbp, [rbp + 2904]
jmp rax
proc_rule$2F3_ω:
mov rax, [rbp + 2896]
lea rsp, [rbp + 2912]
mov rbp, [rbp + 2904]
jmp rax
  .globl proc_rule4$2F2_α
proc_rule4$2F2_α:
#=======================================================================================================================
    .global proc_rule4$2F2_α
    .global proc_rule4$2F2_β
    .global proc_rule4$2F2_γ
    .global proc_rule4$2F2_ω
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
proc_rule4$2F2_α_body:
lea rax, [rip + xchain114_n31_β]
mov qword ptr [rbp + 1488], rax
 xchain114_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule4$2F2_ω
 jmp xchain114_n1_α
 xchain114_n0_β:
 jmp proc_rule4$2F2_ω
# IR_VAR_REF
 xchain114_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain114_n2_α
# IR_LIT_INTEGER
 xchain114_n2_α:
 mov qword ptr [rbp + 1424], 6
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain114_n3_α
.Lx118_0:
 .quad 3
# IR_LIT_INTEGER
 xchain114_n3_α:
 mov qword ptr [rbp + 1456], 6
 mov rax, qword ptr [rip + .Lx119_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain114_n4_α
.Lx119_0:
 .quad 0
 xchain114_n4_α:
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
 je xchain114_n6_α
 jmp xchain114_n5_α
 xchain114_n4_β:
 jmp xchain114_n6_α
# IR_VAR_REF
 xchain114_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain114_n7_α
# IR_VAR_REF
 xchain114_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain114_n8_α
# IR_LIT_STRING
 xchain114_n7_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx125_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain114_n9_α
.Lx125_0:
 .quad .Lx125_0_s
.Lx125_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain114_n8_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain114_n10_α
.Lx126_0:
 .quad 3
# IR_LIT_STRING
 xchain114_n9_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx127_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain114_n11_α
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
 .string "u"
# IR_LIT_INTEGER
 xchain114_n10_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx128_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain114_n12_α
.Lx128_0:
 .quad 0
# IR_LIT_STRING
 xchain114_n11_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx129_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain114_n13_α
.Lx129_0:
 .quad .Lx129_0_s
.Lx129_0_s:
 .string "."
 xchain114_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+640]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 648], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+656]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain114_n15_α
 jmp xchain114_n14_α
 xchain114_n12_β:
 jmp xchain114_n15_α
# IR_LIT_STRING
 xchain114_n13_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx131_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain114_n16_α
.Lx131_0:
 .quad .Lx131_0_s
.Lx131_0_s:
 .string "u"
# IR_VAR_REF
 xchain114_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain114_n17_α
 xchain114_n15_α:
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
 je proc_rule4$2F2_ω
 jmp proc_rule4$2F2_ω
 xchain114_n15_β:
 jmp proc_rule4$2F2_ω
# IR_VAR_REF
 xchain114_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain114_n18_α
# IR_VAR_REF
 xchain114_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain114_n19_α
 xchain114_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1088]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+1104]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1112], rax
# marshal arg2 = producer-box slot [zr+1008] -> [zr+1120]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1088]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je proc_rule4$2F2_ω
 jmp xchain114_n20_α
 xchain114_n18_β:
 jmp proc_rule4$2F2_ω
# IR_VAR_REF
 xchain114_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain114_n21_α
 xchain114_n20_α:
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
# marshal arg2 = producer-box slot [zr+1072] -> [zr+1264]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain114_n23_α
 jmp xchain114_n22_α
 xchain114_n20_β:
 jmp xchain114_n23_α
 xchain114_n21_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+496]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 504], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 520], rax
# marshal arg2 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 536], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 496]
 lea r8, [rbp + 496]
.Lx143_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx143_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx143_61
 cmp esi, 1
 jne .Lx143_62
 mov r8, rax
 jmp .Lx143_60
.Lx143_62:
 cmp esi, 2
 jne .Lx143_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx143_61
 mov r8, rax
 jmp .Lx143_60
.Lx143_63:
 cmp eax, 13
 jne .Lx143_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx143_61
 cmp rax, r8
 je .Lx143_61
 mov r8, rax
 jmp .Lx143_60
.Lx143_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx143_72
 cmp eax, 99
 je .Lx143_72
 cmp eax, 13
 jne .Lx143_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx143_72
 jmp .Lx143_74
.Lx143_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx143_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx143_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx143_73
 lea r9, [rbp + 512]
.Lx143_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx143_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx143_65
 cmp esi, 1
 jne .Lx143_66
 mov r9, rax
 jmp .Lx143_64
.Lx143_66:
 cmp esi, 2
 jne .Lx143_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx143_65
 mov r9, rax
 jmp .Lx143_64
.Lx143_67:
 cmp eax, 13
 jne .Lx143_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx143_65
 cmp rax, r9
 je .Lx143_65
 mov r9, rax
 jmp .Lx143_64
.Lx143_65:
 lea rcx, [rbp + 528]
.Lx143_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx143_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx143_69
 cmp esi, 1
 jne .Lx143_70
 mov rcx, rax
 jmp .Lx143_68
.Lx143_70:
 cmp esi, 2
 jne .Lx143_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx143_69
 mov rcx, rax
 jmp .Lx143_68
.Lx143_71:
 cmp eax, 13
 jne .Lx143_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx143_69
 cmp rax, rcx
 je .Lx143_69
 mov rcx, rax
 jmp .Lx143_68
.Lx143_69:
 cmp r9, rcx
 je .Lx143_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx143_75
 cmp eax, 99
 je .Lx143_75
 cmp eax, 13
 jne .Lx143_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx143_75
 jmp .Lx143_72
.Lx143_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx143_76
 cmp eax, 99
 je .Lx143_76
 cmp eax, 13
 jne .Lx143_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx143_76
 jmp .Lx143_72
.Lx143_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx143_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx143_72
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
 jmp .Lx143_77
.Lx143_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx143_77
.Lx143_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx143_77:
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain114_n15_α
 jmp xchain114_n24_α
 xchain114_n21_β:
 jmp xchain114_n15_α
 xchain114_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+944]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+960]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 968], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 944]
 lea r8, [rbp + 944]
.Lx144_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx144_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx144_41
 cmp esi, 1
 jne .Lx144_55
 mov r8, rax
 jmp .Lx144_40
.Lx144_55:
 cmp esi, 2
 jne .Lx144_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx144_41
 mov r8, rax
 jmp .Lx144_40
.Lx144_56:
 cmp eax, 13
 jne .Lx144_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx144_41
 cmp rax, r8
 je .Lx144_41
 mov r8, rax
 jmp .Lx144_40
.Lx144_41:
 lea r9, [rbp + 960]
.Lx144_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx144_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx144_43
 cmp esi, 1
 jne .Lx144_57
 mov r9, rax
 jmp .Lx144_42
.Lx144_57:
 cmp esi, 2
 jne .Lx144_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx144_43
 mov r9, rax
 jmp .Lx144_42
.Lx144_58:
 cmp eax, 13
 jne .Lx144_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx144_43
 cmp rax, r9
 je .Lx144_43
 mov r9, rax
 jmp .Lx144_42
.Lx144_43:
 cmp r8, r9
 je .Lx144_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx144_44
 cmp eax, 99
 je .Lx144_44
 cmp eax, 13
 jne .Lx144_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx144_44
 jmp .Lx144_45
.Lx144_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx144_53
 cmp eax, 99
 je .Lx144_53
 cmp eax, 13
 jne .Lx144_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx144_53
 jmp .Lx144_46
.Lx144_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx144_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx144_53
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
 jmp .Lx144_51
.Lx144_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx144_47
 cmp eax, 99
 je .Lx144_47
 cmp eax, 13
 jne .Lx144_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx144_47
 jmp .Lx144_48
.Lx144_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx144_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx144_53
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
 jmp .Lx144_51
.Lx144_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx144_49
 cmp edx, 14
 je .Lx144_53
 jmp .Lx144_52
.Lx144_49:
 cmp edx, 14
 je .Lx144_52
 cmp ecx, 7
 je .Lx144_53
 cmp edx, 7
 je .Lx144_53
 cmp ecx, 6
 jne .Lx144_50
 cmp edx, 6
 jne .Lx144_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx144_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx144_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx144_51
 jmp .Lx144_52
.Lx144_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx144_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx144_53
.Lx144_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx144_54
.Lx144_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx144_54
.Lx144_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx144_54:
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain114_n23_α
 jmp xchain114_n25_α
 xchain114_n22_β:
 jmp xchain114_n23_α
 xchain114_n23_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+784]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je proc_rule4$2F2_ω
 jmp xchain114_n6_α
 xchain114_n23_β:
 jmp proc_rule4$2F2_ω
# IR_VAR_REF
 xchain114_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain114_n26_α
# IR_VAR_REF
 xchain114_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain114_n27_α
# IR_VAR_REF
 xchain114_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain114_n28_α
# IR_VAR_REF
 xchain114_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain114_n29_α
# IR_VAR_REF
 xchain114_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain114_n30_α
 xchain114_n29_α:
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
 lea r9, [rbp + 848]
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
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain114_n23_α
 jmp xchain114_n31_α
 xchain114_n29_β:
 jmp xchain114_n23_α
 xchain114_n30_α:
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
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 336]
 lea r8, [rbp + 336]
.Lx157_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx157_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx157_61
 cmp esi, 1
 jne .Lx157_62
 mov r8, rax
 jmp .Lx157_60
.Lx157_62:
 cmp esi, 2
 jne .Lx157_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx157_61
 mov r8, rax
 jmp .Lx157_60
.Lx157_63:
 cmp eax, 13
 jne .Lx157_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx157_61
 cmp rax, r8
 je .Lx157_61
 mov r8, rax
 jmp .Lx157_60
.Lx157_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx157_72
 cmp eax, 99
 je .Lx157_72
 cmp eax, 13
 jne .Lx157_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx157_72
 jmp .Lx157_74
.Lx157_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx157_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx157_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx157_73
 lea r9, [rbp + 352]
.Lx157_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx157_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx157_65
 cmp esi, 1
 jne .Lx157_66
 mov r9, rax
 jmp .Lx157_64
.Lx157_66:
 cmp esi, 2
 jne .Lx157_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx157_65
 mov r9, rax
 jmp .Lx157_64
.Lx157_67:
 cmp eax, 13
 jne .Lx157_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx157_65
 cmp rax, r9
 je .Lx157_65
 mov r9, rax
 jmp .Lx157_64
.Lx157_65:
 lea rcx, [rbp + 368]
.Lx157_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx157_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx157_69
 cmp esi, 1
 jne .Lx157_70
 mov rcx, rax
 jmp .Lx157_68
.Lx157_70:
 cmp esi, 2
 jne .Lx157_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx157_69
 mov rcx, rax
 jmp .Lx157_68
.Lx157_71:
 cmp eax, 13
 jne .Lx157_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx157_69
 cmp rax, rcx
 je .Lx157_69
 mov rcx, rax
 jmp .Lx157_68
.Lx157_69:
 cmp r9, rcx
 je .Lx157_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx157_75
 cmp eax, 99
 je .Lx157_75
 cmp eax, 13
 jne .Lx157_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx157_75
 jmp .Lx157_72
.Lx157_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx157_76
 cmp eax, 99
 je .Lx157_76
 cmp eax, 13
 jne .Lx157_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx157_76
 jmp .Lx157_72
.Lx157_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx157_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx157_72
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
 jmp .Lx157_77
.Lx157_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx157_77
.Lx157_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx157_77:
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain114_n15_α
 jmp xchain114_n32_α
 xchain114_n30_β:
 jmp xchain114_n15_α
# IR_SUSPEND yield+resume
 xchain114_n31_α:
 lea rax, [rip + xchain114_n31_β]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule4$2F2_γ
 xchain114_n31_β:
 jmp xchain114_n23_α
# IR_VAR_REF
 xchain114_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain114_n33_α
# IR_VAR_REF
 xchain114_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain114_n34_α
 xchain114_n34_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx165_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx165_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx165_3]
 lea rdx, [rip + .Lx165_4]
 jmp rax
.Lx165_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx165_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx165_2
.Lx165_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx165_2
.Lx165_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx165_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx165_2
.Lx165_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx165_2
.Lx165_1:
 call rt_faildescr@PLT
.Lx165_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain114_n15_α
 jmp xchain114_n35_α
 xchain114_n34_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx165_0:
 .quad .Lx165_0_s
.Lx165_0_s:
 .string "rule4/2"
# IR_SUSPEND yield+resume
 xchain114_n35_α:
 lea rax, [rip + xchain114_n35_β]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule4$2F2_γ
 xchain114_n35_β:
 jmp xchain114_n34_β
proc_rule4$2F2_res:
add rsp, 8
pop rbp
proc_rule4$2F2_β:
jmp qword ptr [rbp + 1488]
proc_rule4$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule4$2F2_res]
push rax
mov rax, [rbp + 1592]
mov rbp, [rbp + 1608]
jmp rax
proc_rule4$2F2_ω:
mov rax, [rbp + 1600]
lea rsp, [rbp + 1616]
mov rbp, [rbp + 1608]
jmp rax
  .globl proc_rule2$2F2_α
proc_rule2$2F2_α:
#=======================================================================================================================
    .global proc_rule2$2F2_α
    .global proc_rule2$2F2_β
    .global proc_rule2$2F2_γ
    .global proc_rule2$2F2_ω
  sub rsp, 752
  mov [rsp + 728], rcx
  mov [rsp + 736], rdx
  mov [rsp + 744], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 680], rsp
  mov rdi, rsp
  mov esi, 656
  mov edx, 720
  call rt_jmp_frame_lexprep2@PLT
proc_rule2$2F2_α_body:
lea rax, [rip + xchain168_n14_β]
mov qword ptr [rbp + 656], rax
 xchain168_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule2$2F2_ω
 jmp xchain168_n1_α
 xchain168_n0_β:
 jmp proc_rule2$2F2_ω
# IR_VAR_REF
 xchain168_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain168_n2_α
# IR_LIT_STRING
 xchain168_n2_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain168_n3_α
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
 .string "m"
# IR_VAR_REF
 xchain168_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 688]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain168_n4_α
 xchain168_n4_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+544]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
# marshal arg2 = producer-box slot [zr+624] -> [zr+576]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 584], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 544]
 lea r8, [rbp + 544]
.Lx175_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx175_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx175_61
 cmp esi, 1
 jne .Lx175_62
 mov r8, rax
 jmp .Lx175_60
.Lx175_62:
 cmp esi, 2
 jne .Lx175_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx175_61
 mov r8, rax
 jmp .Lx175_60
.Lx175_63:
 cmp eax, 13
 jne .Lx175_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx175_61
 cmp rax, r8
 je .Lx175_61
 mov r8, rax
 jmp .Lx175_60
.Lx175_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx175_72
 cmp eax, 99
 je .Lx175_72
 cmp eax, 13
 jne .Lx175_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx175_72
 jmp .Lx175_74
.Lx175_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx175_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx175_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx175_73
 lea r9, [rbp + 560]
.Lx175_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx175_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx175_65
 cmp esi, 1
 jne .Lx175_66
 mov r9, rax
 jmp .Lx175_64
.Lx175_66:
 cmp esi, 2
 jne .Lx175_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx175_65
 mov r9, rax
 jmp .Lx175_64
.Lx175_67:
 cmp eax, 13
 jne .Lx175_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx175_65
 cmp rax, r9
 je .Lx175_65
 mov r9, rax
 jmp .Lx175_64
.Lx175_65:
 lea rcx, [rbp + 576]
.Lx175_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx175_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx175_69
 cmp esi, 1
 jne .Lx175_70
 mov rcx, rax
 jmp .Lx175_68
.Lx175_70:
 cmp esi, 2
 jne .Lx175_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx175_69
 mov rcx, rax
 jmp .Lx175_68
.Lx175_71:
 cmp eax, 13
 jne .Lx175_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx175_69
 cmp rax, rcx
 je .Lx175_69
 mov rcx, rax
 jmp .Lx175_68
.Lx175_69:
 cmp r9, rcx
 je .Lx175_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx175_75
 cmp eax, 99
 je .Lx175_75
 cmp eax, 13
 jne .Lx175_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx175_75
 jmp .Lx175_72
.Lx175_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx175_76
 cmp eax, 99
 je .Lx175_76
 cmp eax, 13
 jne .Lx175_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx175_76
 jmp .Lx175_72
.Lx175_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx175_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx175_72
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
 jmp .Lx175_77
.Lx175_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx175_77
.Lx175_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx175_77:
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain168_n6_α
 jmp xchain168_n5_α
 xchain168_n4_β:
 jmp xchain168_n6_α
# IR_VAR_REF
 xchain168_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain168_n7_α
 xchain168_n6_α:
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
 je proc_rule2$2F2_ω
 jmp proc_rule2$2F2_ω
 xchain168_n6_β:
 jmp proc_rule2$2F2_ω
# IR_LIT_STRING
 xchain168_n7_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain168_n8_α
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "m"
# IR_VAR_REF
 xchain168_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 704]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain168_n9_α
 xchain168_n9_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+384]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+400]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 424], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 384]
 lea r8, [rbp + 384]
.Lx182_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx182_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx182_61
 cmp esi, 1
 jne .Lx182_62
 mov r8, rax
 jmp .Lx182_60
.Lx182_62:
 cmp esi, 2
 jne .Lx182_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx182_61
 mov r8, rax
 jmp .Lx182_60
.Lx182_63:
 cmp eax, 13
 jne .Lx182_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx182_61
 cmp rax, r8
 je .Lx182_61
 mov r8, rax
 jmp .Lx182_60
.Lx182_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx182_72
 cmp eax, 99
 je .Lx182_72
 cmp eax, 13
 jne .Lx182_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx182_72
 jmp .Lx182_74
.Lx182_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx182_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx182_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx182_73
 lea r9, [rbp + 400]
.Lx182_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx182_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx182_65
 cmp esi, 1
 jne .Lx182_66
 mov r9, rax
 jmp .Lx182_64
.Lx182_66:
 cmp esi, 2
 jne .Lx182_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx182_65
 mov r9, rax
 jmp .Lx182_64
.Lx182_67:
 cmp eax, 13
 jne .Lx182_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx182_65
 cmp rax, r9
 je .Lx182_65
 mov r9, rax
 jmp .Lx182_64
.Lx182_65:
 lea rcx, [rbp + 416]
.Lx182_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx182_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx182_69
 cmp esi, 1
 jne .Lx182_70
 mov rcx, rax
 jmp .Lx182_68
.Lx182_70:
 cmp esi, 2
 jne .Lx182_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx182_69
 mov rcx, rax
 jmp .Lx182_68
.Lx182_71:
 cmp eax, 13
 jne .Lx182_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx182_69
 cmp rax, rcx
 je .Lx182_69
 mov rcx, rax
 jmp .Lx182_68
.Lx182_69:
 cmp r9, rcx
 je .Lx182_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx182_75
 cmp eax, 99
 je .Lx182_75
 cmp eax, 13
 jne .Lx182_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx182_75
 jmp .Lx182_72
.Lx182_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx182_76
 cmp eax, 99
 je .Lx182_76
 cmp eax, 13
 jne .Lx182_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx182_76
 jmp .Lx182_72
.Lx182_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx182_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx182_72
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
 jmp .Lx182_77
.Lx182_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx182_77
.Lx182_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx182_77:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain168_n6_α
 jmp xchain168_n10_α
 xchain168_n9_β:
 jmp xchain168_n6_α
# IR_VAR_REF
 xchain168_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 688]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain168_n11_α
# IR_VAR_REF
 xchain168_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 688]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain168_n12_α
# IR_VAR_REF
 xchain168_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 704]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain168_n13_α
 xchain168_n13_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx190_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx190_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx190_3]
 lea rdx, [rip + .Lx190_4]
 jmp rax
.Lx190_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx190_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx190_2
.Lx190_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx190_2
.Lx190_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx190_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx190_2
.Lx190_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx190_2
.Lx190_1:
 call rt_faildescr@PLT
.Lx190_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain168_n6_α
 jmp xchain168_n14_α
 xchain168_n13_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx190_0:
 .quad .Lx190_0_s
.Lx190_0_s:
 .string "my_append/3"
# IR_SUSPEND yield+resume
 xchain168_n14_α:
 lea rax, [rip + xchain168_n14_β]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule2$2F2_γ
 xchain168_n14_β:
 jmp xchain168_n13_β
proc_rule2$2F2_res:
add rsp, 8
pop rbp
proc_rule2$2F2_β:
jmp qword ptr [rbp + 656]
proc_rule2$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule2$2F2_res]
push rax
mov rax, [rbp + 728]
mov rbp, [rbp + 744]
jmp rax
proc_rule2$2F2_ω:
mov rax, [rbp + 736]
lea rsp, [rbp + 752]
mov rbp, [rbp + 744]
jmp rax
  .globl proc_theorem$2F3_α
proc_theorem$2F3_α:
#=======================================================================================================================
    .global proc_theorem$2F3_α
    .global proc_theorem$2F3_β
    .global proc_theorem$2F3_γ
    .global proc_theorem$2F3_ω
  sub rsp, 2960
  mov [rsp + 2936], rcx
  mov [rsp + 2944], rdx
  mov [rsp + 2952], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2824], rsp
  mov rdi, rsp
  mov esi, 2800
  mov edx, 2928
  call rt_jmp_frame_lexprep2@PLT
proc_theorem$2F3_α_body:
lea rax, [rip + xchain193_n61_β]
mov qword ptr [rbp + 2800], rax
 xchain193_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_theorem$2F3_ω
 jmp xchain193_n1_α
 xchain193_n0_β:
 jmp proc_theorem$2F3_ω
# IR_VAR_REF
 xchain193_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain193_n2_α
# IR_LIT_INTEGER
 xchain193_n2_α:
 mov qword ptr [rbp + 2736], 6
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain193_n3_α
.Lx197_0:
 .quad 3
# IR_LIT_INTEGER
 xchain193_n3_α:
 mov qword ptr [rbp + 2768], 6
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [rbp + 2776], rax
 jmp xchain193_n4_α
.Lx198_0:
 .quad 0
 xchain193_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2704] -> [zr+2656]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2664], rax
# marshal arg1 = producer-box slot [zr+2736] -> [zr+2672]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2680], rax
# marshal arg2 = producer-box slot [zr+2768] -> [zr+2688]
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 2696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2656]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 cmp eax, 99
 je xchain193_n6_α
 jmp xchain193_n5_α
 xchain193_n4_β:
 jmp xchain193_n6_α
# IR_VAR_REF
 xchain193_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain193_n7_α
# IR_VAR_REF
 xchain193_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain193_n8_α
# IR_LIT_STRING
 xchain193_n7_α:
 mov qword ptr [rbp + 2608], 1
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain193_n9_α
.Lx204_0:
 .quad .Lx204_0_s
.Lx204_0_s:
 .string "."
# IR_VAR_REF
 xchain193_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain193_n10_α
# IR_LIT_STRING
 xchain193_n9_α:
 mov qword ptr [rbp + 2496], 1
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 2504], rax
 jmp xchain193_n11_α
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "m"
 xchain193_n10_α:
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
.Lx208_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx208_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx208_41
 cmp esi, 1
 jne .Lx208_55
 mov r8, rax
 jmp .Lx208_40
.Lx208_55:
 cmp esi, 2
 jne .Lx208_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx208_41
 mov r8, rax
 jmp .Lx208_40
.Lx208_56:
 cmp eax, 13
 jne .Lx208_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx208_41
 cmp rax, r8
 je .Lx208_41
 mov r8, rax
 jmp .Lx208_40
.Lx208_41:
 lea r9, [rbp + 1312]
.Lx208_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx208_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx208_43
 cmp esi, 1
 jne .Lx208_57
 mov r9, rax
 jmp .Lx208_42
.Lx208_57:
 cmp esi, 2
 jne .Lx208_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx208_43
 mov r9, rax
 jmp .Lx208_42
.Lx208_58:
 cmp eax, 13
 jne .Lx208_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx208_43
 cmp rax, r9
 je .Lx208_43
 mov r9, rax
 jmp .Lx208_42
.Lx208_43:
 cmp r8, r9
 je .Lx208_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx208_44
 cmp eax, 99
 je .Lx208_44
 cmp eax, 13
 jne .Lx208_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx208_44
 jmp .Lx208_45
.Lx208_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx208_53
 cmp eax, 99
 je .Lx208_53
 cmp eax, 13
 jne .Lx208_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx208_53
 jmp .Lx208_46
.Lx208_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx208_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx208_53
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
 jmp .Lx208_51
.Lx208_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx208_47
 cmp eax, 99
 je .Lx208_47
 cmp eax, 13
 jne .Lx208_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx208_47
 jmp .Lx208_48
.Lx208_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx208_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx208_53
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
 jmp .Lx208_51
.Lx208_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx208_49
 cmp edx, 14
 je .Lx208_53
 jmp .Lx208_52
.Lx208_49:
 cmp edx, 14
 je .Lx208_52
 cmp ecx, 7
 je .Lx208_53
 cmp edx, 7
 je .Lx208_53
 cmp ecx, 6
 jne .Lx208_50
 cmp edx, 6
 jne .Lx208_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx208_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx208_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx208_51
 jmp .Lx208_52
.Lx208_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx208_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx208_53
.Lx208_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx208_54
.Lx208_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx208_54
.Lx208_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx208_54:
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain193_n13_α
 jmp xchain193_n12_α
 xchain193_n10_β:
 jmp xchain193_n13_α
# IR_LIT_STRING
 xchain193_n11_α:
 mov qword ptr [rbp + 2464], 1
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain193_n14_α
.Lx209_0:
 .quad .Lx209_0_s
.Lx209_0_s:
 .string "."
# IR_VAR_REF
 xchain193_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain193_n15_α
 xchain193_n13_α:
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
 je proc_theorem$2F3_ω
 jmp proc_theorem$2F3_ω
 xchain193_n13_β:
 jmp proc_theorem$2F3_ω
# IR_LIT_STRING
 xchain193_n14_α:
 mov qword ptr [rbp + 2352], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [rbp + 2360], rax
 jmp xchain193_n16_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "i"
# IR_VAR_REF
 xchain193_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2912]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain193_n17_α
# IR_LIT_STRING
 xchain193_n16_α:
 mov qword ptr [rbp + 2320], 1
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 2328], rax
 jmp xchain193_n18_α
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string "[]"
 xchain193_n17_α:
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
 lea r9, [rbp + 1200]
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
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain193_n13_α
 jmp xchain193_n19_α
 xchain193_n17_β:
 jmp xchain193_n13_α
 xchain193_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2464] -> [zr+2400]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2408], rax
# marshal arg1 = producer-box slot [zr+2352] -> [zr+2416]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2424], rax
# marshal arg2 = producer-box slot [zr+2320] -> [zr+2432]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2400]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 cmp eax, 99
 je proc_theorem$2F3_ω
 jmp xchain193_n20_α
 xchain193_n18_β:
 jmp proc_theorem$2F3_ω
# IR_VAR_REF
 xchain193_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain193_n21_α
 xchain193_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2608] -> [zr+2544]
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2552], rax
# marshal arg1 = producer-box slot [zr+2496] -> [zr+2560]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2560], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2568], rax
# marshal arg2 = producer-box slot [zr+2384] -> [zr+2576]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2544]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 cmp eax, 99
 je xchain193_n23_α
 jmp xchain193_n22_α
 xchain193_n20_β:
 jmp xchain193_n23_α
# IR_LIT_STRING
 xchain193_n21_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain193_n24_α
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "."
 xchain193_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2288] -> [zr+2256]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2264], rax
# marshal arg1 = producer-box slot [zr+2528] -> [zr+2272]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2280], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2256]
 lea r8, [rbp + 2256]
.Lx223_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx223_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx223_41
 cmp esi, 1
 jne .Lx223_55
 mov r8, rax
 jmp .Lx223_40
.Lx223_55:
 cmp esi, 2
 jne .Lx223_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx223_41
 mov r8, rax
 jmp .Lx223_40
.Lx223_56:
 cmp eax, 13
 jne .Lx223_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx223_41
 cmp rax, r8
 je .Lx223_41
 mov r8, rax
 jmp .Lx223_40
.Lx223_41:
 lea r9, [rbp + 2272]
.Lx223_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx223_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx223_43
 cmp esi, 1
 jne .Lx223_57
 mov r9, rax
 jmp .Lx223_42
.Lx223_57:
 cmp esi, 2
 jne .Lx223_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx223_43
 mov r9, rax
 jmp .Lx223_42
.Lx223_58:
 cmp eax, 13
 jne .Lx223_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx223_43
 cmp rax, r9
 je .Lx223_43
 mov r9, rax
 jmp .Lx223_42
.Lx223_43:
 cmp r8, r9
 je .Lx223_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx223_44
 cmp eax, 99
 je .Lx223_44
 cmp eax, 13
 jne .Lx223_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx223_44
 jmp .Lx223_45
.Lx223_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx223_53
 cmp eax, 99
 je .Lx223_53
 cmp eax, 13
 jne .Lx223_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx223_53
 jmp .Lx223_46
.Lx223_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx223_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx223_53
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
 jmp .Lx223_51
.Lx223_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx223_47
 cmp eax, 99
 je .Lx223_47
 cmp eax, 13
 jne .Lx223_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx223_47
 jmp .Lx223_48
.Lx223_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx223_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx223_53
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
 jmp .Lx223_51
.Lx223_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx223_49
 cmp edx, 14
 je .Lx223_53
 jmp .Lx223_52
.Lx223_49:
 cmp edx, 14
 je .Lx223_52
 cmp ecx, 7
 je .Lx223_53
 cmp edx, 7
 je .Lx223_53
 cmp ecx, 6
 jne .Lx223_50
 cmp edx, 6
 jne .Lx223_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx223_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx223_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx223_51
 jmp .Lx223_52
.Lx223_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx223_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx223_53
.Lx223_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx223_54
.Lx223_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx223_54
.Lx223_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx223_54:
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 cmp eax, 99
 je xchain193_n23_α
 jmp xchain193_n25_α
 xchain193_n22_β:
 jmp xchain193_n23_α
 xchain193_n23_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1408]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1416], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1408]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je proc_theorem$2F3_ω
 jmp xchain193_n6_α
 xchain193_n23_β:
 jmp proc_theorem$2F3_ω
# IR_VAR_REF
 xchain193_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2832]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain193_n26_α
# IR_VAR_REF
 xchain193_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain193_n27_α
# IR_VAR_REF
 xchain193_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain193_n28_α
# IR_VAR_REF
 xchain193_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2832]
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain193_n29_α
 xchain193_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1040]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+1056]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1064], rax
# marshal arg2 = producer-box slot [zr+960] -> [zr+1072]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 1080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain193_n13_α
 jmp xchain193_n30_α
 xchain193_n28_β:
 jmp xchain193_n13_α
 xchain193_n29_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2176] -> [zr+2144]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2152], rax
# marshal arg1 = producer-box slot [zr+2208] -> [zr+2160]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2168], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2144]
 lea r8, [rbp + 2144]
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
 lea r9, [rbp + 2160]
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
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 cmp eax, 99
 je xchain193_n23_α
 jmp xchain193_n31_α
 xchain193_n29_β:
 jmp xchain193_n23_α
# IR_VAR_REF
 xchain193_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2896]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain193_n32_α
# IR_VAR_REF
 xchain193_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain193_n33_α
 xchain193_n32_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+912]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+928]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 936], rax
# marshal arg2 = producer-box slot [zr+1136] -> [zr+944]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 952], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 912]
 lea r8, [rbp + 912]
.Lx239_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx239_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx239_61
 cmp esi, 1
 jne .Lx239_62
 mov r8, rax
 jmp .Lx239_60
.Lx239_62:
 cmp esi, 2
 jne .Lx239_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx239_61
 mov r8, rax
 jmp .Lx239_60
.Lx239_63:
 cmp eax, 13
 jne .Lx239_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx239_61
 cmp rax, r8
 je .Lx239_61
 mov r8, rax
 jmp .Lx239_60
.Lx239_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx239_72
 cmp eax, 99
 je .Lx239_72
 cmp eax, 13
 jne .Lx239_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx239_72
 jmp .Lx239_74
.Lx239_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx239_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx239_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx239_73
 lea r9, [rbp + 928]
.Lx239_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx239_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx239_65
 cmp esi, 1
 jne .Lx239_66
 mov r9, rax
 jmp .Lx239_64
.Lx239_66:
 cmp esi, 2
 jne .Lx239_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx239_65
 mov r9, rax
 jmp .Lx239_64
.Lx239_67:
 cmp eax, 13
 jne .Lx239_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx239_65
 cmp rax, r9
 je .Lx239_65
 mov r9, rax
 jmp .Lx239_64
.Lx239_65:
 lea rcx, [rbp + 944]
.Lx239_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx239_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx239_69
 cmp esi, 1
 jne .Lx239_70
 mov rcx, rax
 jmp .Lx239_68
.Lx239_70:
 cmp esi, 2
 jne .Lx239_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx239_69
 mov rcx, rax
 jmp .Lx239_68
.Lx239_71:
 cmp eax, 13
 jne .Lx239_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx239_69
 cmp rax, rcx
 je .Lx239_69
 mov rcx, rax
 jmp .Lx239_68
.Lx239_69:
 cmp r9, rcx
 je .Lx239_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx239_75
 cmp eax, 99
 je .Lx239_75
 cmp eax, 13
 jne .Lx239_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx239_75
 jmp .Lx239_72
.Lx239_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx239_76
 cmp eax, 99
 je .Lx239_76
 cmp eax, 13
 jne .Lx239_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx239_76
 jmp .Lx239_72
.Lx239_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx239_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx239_72
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
 jmp .Lx239_77
.Lx239_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx239_77
.Lx239_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx239_77:
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain193_n13_α
 jmp xchain193_n34_α
 xchain193_n32_β:
 jmp xchain193_n13_α
# IR_LIT_STRING
 xchain193_n33_α:
 mov qword ptr [rbp + 2096], 1
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain193_n35_α
.Lx240_0:
 .quad .Lx240_0_s
.Lx240_0_s:
 .string "."
# IR_VAR
 xchain193_n34_α:
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 808], rax
 jmp xchain193_n36_α
# IR_LIT_STRING
 xchain193_n35_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain193_n37_α
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain193_n36_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain193_n38_α
.Lx244_0:
 .quad 0
# IR_LIT_STRING
 xchain193_n37_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain193_n39_α
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "a"
 xchain193_n38_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_gt (no by-name dispatch)
 lea rdi, [rbp + 768]
 mov esi, 2
 call rt_pl_dop_cmp_gt@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain193_n13_α
 jmp xchain193_n40_α
 xchain193_n38_β:
 jmp xchain193_n13_α
# IR_LIT_STRING
 xchain193_n39_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain193_n41_α
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "."
# IR_VAR_REF
 xchain193_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2880]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain193_n42_α
# IR_LIT_STRING
 xchain193_n41_α:
 mov qword ptr [rbp + 1728], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 1736], rax
 jmp xchain193_n43_α
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "m"
# IR_VAR
 xchain193_n42_α:
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 696], rax
 jmp xchain193_n44_α
# IR_LIT_STRING
 xchain193_n43_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain193_n45_α
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain193_n44_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain193_n46_α
.Lx254_0:
 .quad 1
# IR_LIT_STRING
 xchain193_n45_α:
 mov qword ptr [rbp + 1584], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 1592], rax
 jmp xchain193_n47_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "i"
 xchain193_n46_α:
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
 je xchain193_n13_α
 jmp xchain193_n48_α
 xchain193_n46_β:
 jmp xchain193_n13_α
# IR_LIT_STRING
 xchain193_n47_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain193_n49_α
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "[]"
 xchain193_n48_α:
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
 je xchain193_n13_α
 jmp xchain193_n50_α
 xchain193_n48_β:
 jmp xchain193_n13_α
 xchain193_n49_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1632]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1640], rax
# marshal arg1 = producer-box slot [zr+1584] -> [zr+1648]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1656], rax
# marshal arg2 = producer-box slot [zr+1552] -> [zr+1664]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1632]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je proc_theorem$2F3_ω
 jmp xchain193_n51_α
 xchain193_n49_β:
 jmp proc_theorem$2F3_ω
# IR_VAR_REF
 xchain193_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain193_n52_α
 xchain193_n51_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1776]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1784], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1792]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1800], rax
# marshal arg2 = producer-box slot [zr+1616] -> [zr+1808]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1776]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je proc_theorem$2F3_ω
 jmp xchain193_n53_α
 xchain193_n51_β:
 jmp proc_theorem$2F3_ω
# IR_VAR_REF
 xchain193_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2880]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain193_n54_α
 xchain193_n53_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1920]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1928], rax
# marshal arg1 = producer-box slot [zr+1872] -> [zr+1936]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1944], rax
# marshal arg2 = producer-box slot [zr+1760] -> [zr+1952]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1960], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1920]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je proc_theorem$2F3_ω
 jmp xchain193_n55_α
 xchain193_n53_β:
 jmp proc_theorem$2F3_ω
# IR_VAR_REF
 xchain193_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2896]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain193_n56_α
# IR_LIT_STRING
 xchain193_n55_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain193_n57_α
.Lx268_0:
 .quad .Lx268_0_s
.Lx268_0_s:
 .string "[]"
 xchain193_n56_α:
 mov qword ptr [rbp + 416], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx270_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx270_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx270_3]
 lea rdx, [rip + .Lx270_4]
 jmp rax
.Lx270_3:
 mov qword ptr [rbp + 424], rsp
 mov rax, qword ptr [rbp + 416]
 test rax, rax
 jne .Lx270_5
 mov qword ptr [rbp + 416], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx270_2
.Lx270_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx270_2
.Lx270_4:
 mov rax, qword ptr [rbp + 416]
 test rax, rax
 jne .Lx270_6
 mov qword ptr [rbp + 416], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx270_2
.Lx270_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx270_2
.Lx270_1:
 call rt_faildescr@PLT
.Lx270_2:
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain193_n13_α
 jmp xchain193_n58_α
 xchain193_n56_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 424]
 jmp qword ptr [rsp]
.Lx270_0:
 .quad .Lx270_0_s
.Lx270_0_s:
 .string "theorem/3"
 xchain193_n57_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2032]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2040], rax
# marshal arg1 = producer-box slot [zr+1904] -> [zr+2048]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 2056], rax
# marshal arg2 = producer-box slot [zr+1520] -> [zr+2064]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 2072], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2032]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain193_n23_α
 jmp xchain193_n59_α
 xchain193_n57_β:
 jmp xchain193_n23_α
# IR_VAR_REF
 xchain193_n58_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2832]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain193_n60_α
 xchain193_n59_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1456]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1464], rax
# marshal arg1 = producer-box slot [zr+2016] -> [zr+1472]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1480], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1456]
 lea r8, [rbp + 1456]
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
 lea r9, [rbp + 1472]
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
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain193_n23_α
 jmp xchain193_n61_α
 xchain193_n59_β:
 jmp xchain193_n23_α
# IR_VAR_REF
 xchain193_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain193_n62_α
# IR_SUSPEND yield+resume
 xchain193_n61_α:
 lea rax, [rip + xchain193_n61_β]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_theorem$2F3_γ
 xchain193_n61_β:
 jmp xchain193_n23_α
# IR_VAR_REF
 xchain193_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain193_n63_α
 xchain193_n63_α:
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
 mov rdi, qword ptr [rip + .Lx282_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx282_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx282_3]
 lea rdx, [rip + .Lx282_4]
 jmp rax
.Lx282_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx282_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx282_2
.Lx282_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx282_2
.Lx282_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx282_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx282_2
.Lx282_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx282_2
.Lx282_1:
 call rt_faildescr@PLT
.Lx282_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain193_n56_β
 jmp xchain193_n64_α
 xchain193_n63_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "rule/3"
# IR_SUSPEND yield+resume
 xchain193_n64_α:
 lea rax, [rip + xchain193_n64_β]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_theorem$2F3_γ
 xchain193_n64_β:
 jmp xchain193_n63_β
proc_theorem$2F3_res:
add rsp, 8
pop rbp
proc_theorem$2F3_β:
jmp qword ptr [rbp + 2800]
proc_theorem$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_theorem$2F3_res]
push rax
mov rax, [rbp + 2936]
mov rbp, [rbp + 2952]
jmp rax
proc_theorem$2F3_ω:
mov rax, [rbp + 2944]
lea rsp, [rbp + 2960]
mov rbp, [rbp + 2952]
jmp rax
  .globl proc_mu$2F0_α
proc_mu$2F0_α:
#=======================================================================================================================
    .global proc_mu$2F0_α
    .global proc_mu$2F0_β
    .global proc_mu$2F0_γ
    .global proc_mu$2F0_ω
  sub rsp, 1104
  mov [rsp + 1080], rcx
  mov [rsp + 1088], rdx
  mov [rsp + 1096], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1048], rsp
  mov rdi, rsp
  mov esi, 1024
  mov edx, 1072
  call rt_jmp_frame_lexprep2@PLT
proc_mu$2F0_α_body:
lea rax, [rip + xchain285_n22_β]
mov qword ptr [rbp + 1024], rax
 xchain285_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_mu$2F0_ω
 jmp xchain285_n1_α
 xchain285_n0_β:
 jmp proc_mu$2F0_ω
# IR_LIT_STRING
 xchain285_n1_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain285_n2_α
.Lx287_0:
 .quad .Lx287_0_s
.Lx287_0_s:
 .string "."
# IR_LIT_STRING
 xchain285_n2_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx288_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain285_n3_α
.Lx288_0:
 .quad .Lx288_0_s
.Lx288_0_s:
 .string "m"
# IR_LIT_STRING
 xchain285_n3_α:
 mov qword ptr [rbp + 784], 1
 mov rax, qword ptr [rip + .Lx289_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain285_n4_α
.Lx289_0:
 .quad .Lx289_0_s
.Lx289_0_s:
 .string "."
# IR_LIT_STRING
 xchain285_n4_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx290_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain285_n5_α
.Lx290_0:
 .quad .Lx290_0_s
.Lx290_0_s:
 .string "u"
# IR_LIT_STRING
 xchain285_n5_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain285_n6_α
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "."
# IR_LIT_STRING
 xchain285_n6_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain285_n7_α
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
 .string "i"
# IR_LIT_STRING
 xchain285_n7_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain285_n8_α
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "."
# IR_LIT_STRING
 xchain285_n8_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx294_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain285_n9_α
.Lx294_0:
 .quad .Lx294_0_s
.Lx294_0_s:
 .string "i"
# IR_LIT_STRING
 xchain285_n9_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx295_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain285_n10_α
.Lx295_0:
 .quad .Lx295_0_s
.Lx295_0_s:
 .string "."
# IR_LIT_STRING
 xchain285_n10_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain285_n11_α
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "u"
# IR_LIT_STRING
 xchain285_n11_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain285_n12_α
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "[]"
 xchain285_n12_α:
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
 je proc_mu$2F0_ω
 jmp xchain285_n13_α
 xchain285_n12_β:
 jmp proc_mu$2F0_ω
 xchain285_n13_α:
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
 je proc_mu$2F0_ω
 jmp xchain285_n14_α
 xchain285_n13_β:
 jmp proc_mu$2F0_ω
 xchain285_n14_α:
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
 je proc_mu$2F0_ω
 jmp xchain285_n15_α
 xchain285_n14_β:
 jmp proc_mu$2F0_ω
 xchain285_n15_α:
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
 je proc_mu$2F0_ω
 jmp xchain285_n16_α
 xchain285_n15_β:
 jmp proc_mu$2F0_ω
 xchain285_n16_α:
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
 je xchain285_n18_α
 jmp xchain285_n17_α
 xchain285_n16_β:
 jmp xchain285_n18_α
# IR_LIT_INTEGER
 xchain285_n17_α:
 mov qword ptr [rbp + 960], 6
 mov rax, qword ptr [rip + .Lx303_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain285_n19_α
.Lx303_0:
 .quad 5
 xchain285_n18_α:
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
 je proc_mu$2F0_ω
 jmp proc_mu$2F0_ω
 xchain285_n18_β:
 jmp proc_mu$2F0_ω
# IR_VAR_REF
 xchain285_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1056]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain285_n20_α
 xchain285_n20_α:
 mov qword ptr [rbp + 176], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 992]
 mov rdx, qword ptr [rbp + 1000]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx308_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx308_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx308_3]
 lea rdx, [rip + .Lx308_4]
 jmp rax
.Lx308_3:
 mov qword ptr [rbp + 184], rsp
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx308_5
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx308_2
.Lx308_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx308_2
.Lx308_4:
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx308_6
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx308_2
.Lx308_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx308_2
.Lx308_1:
 call rt_faildescr@PLT
.Lx308_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain285_n18_α
 jmp xchain285_n21_α
 xchain285_n20_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 184]
 jmp qword ptr [rsp]
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
 .string "theorem/3"
 xchain285_n21_α:
# IR_CUT
 jmp xchain285_n22_α
# IR_SUSPEND yield+resume
 xchain285_n22_α:
 lea rax, [rip + xchain285_n22_β]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_mu$2F0_γ
 xchain285_n22_β:
 jmp xchain285_n20_β
proc_mu$2F0_res:
add rsp, 8
pop rbp
proc_mu$2F0_β:
jmp qword ptr [rbp + 1024]
proc_mu$2F0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_mu$2F0_res]
push rax
mov rax, [rbp + 1080]
mov rbp, [rbp + 1096]
jmp rax
proc_mu$2F0_ω:
mov rax, [rbp + 1088]
lea rsp, [rbp + 1104]
mov rbp, [rbp + 1096]
jmp rax
  .globl proc_rule3$2F2_α
proc_rule3$2F2_α:
#=======================================================================================================================
    .global proc_rule3$2F2_α
    .global proc_rule3$2F2_β
    .global proc_rule3$2F2_γ
    .global proc_rule3$2F2_ω
  sub rsp, 1792
  mov [rsp + 1768], rcx
  mov [rsp + 1776], rdx
  mov [rsp + 1784], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1704], rsp
  mov rdi, rsp
  mov esi, 1680
  mov edx, 1760
  call rt_jmp_frame_lexprep2@PLT
proc_rule3$2F2_α_body:
lea rax, [rip + xchain312_n38_β]
mov qword ptr [rbp + 1680], rax
 xchain312_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule3$2F2_ω
 jmp xchain312_n1_α
 xchain312_n0_β:
 jmp proc_rule3$2F2_ω
# IR_VAR_REF
 xchain312_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain312_n2_α
# IR_LIT_INTEGER
 xchain312_n2_α:
 mov qword ptr [rbp + 1616], 6
 mov rax, qword ptr [rip + .Lx316_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain312_n3_α
.Lx316_0:
 .quad 3
# IR_LIT_INTEGER
 xchain312_n3_α:
 mov qword ptr [rbp + 1648], 6
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain312_n4_α
.Lx317_0:
 .quad 0
 xchain312_n4_α:
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
 je xchain312_n6_α
 jmp xchain312_n5_α
 xchain312_n4_β:
 jmp xchain312_n6_α
# IR_VAR_REF
 xchain312_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain312_n7_α
# IR_VAR_REF
 xchain312_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain312_n8_α
# IR_LIT_STRING
 xchain312_n7_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx323_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain312_n9_α
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n8_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain312_n10_α
.Lx324_0:
 .quad 3
# IR_LIT_STRING
 xchain312_n9_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain312_n11_α
.Lx325_0:
 .quad .Lx325_0_s
.Lx325_0_s:
 .string "i"
# IR_LIT_INTEGER
 xchain312_n10_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain312_n12_α
.Lx326_0:
 .quad 0
# IR_LIT_STRING
 xchain312_n11_α:
 mov qword ptr [rbp + 1344], 1
 mov rax, qword ptr [rip + .Lx327_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain312_n13_α
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
 .string "."
 xchain312_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+640]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 648], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+656]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain312_n15_α
 jmp xchain312_n14_α
 xchain312_n12_β:
 jmp xchain312_n15_α
# IR_LIT_STRING
 xchain312_n13_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx329_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain312_n16_α
.Lx329_0:
 .quad .Lx329_0_s
.Lx329_0_s:
 .string "i"
# IR_VAR_REF
 xchain312_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain312_n17_α
 xchain312_n15_α:
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
 je proc_rule3$2F2_ω
 jmp proc_rule3$2F2_ω
 xchain312_n15_β:
 jmp proc_rule3$2F2_ω
# IR_LIT_STRING
 xchain312_n16_α:
 mov qword ptr [rbp + 1200], 1
 mov rax, qword ptr [rip + .Lx333_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain312_n18_α
.Lx333_0:
 .quad .Lx333_0_s
.Lx333_0_s:
 .string "."
# IR_VAR_REF
 xchain312_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain312_n19_α
# IR_LIT_STRING
 xchain312_n18_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx336_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain312_n20_α
.Lx336_0:
 .quad .Lx336_0_s
.Lx336_0_s:
 .string "i"
# IR_VAR_REF
 xchain312_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain312_n21_α
# IR_VAR_REF
 xchain312_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain312_n22_α
 xchain312_n21_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+496]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 504], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 520], rax
# marshal arg2 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 536], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 496]
 lea r8, [rbp + 496]
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
 lea r9, [rbp + 512]
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
 lea rcx, [rbp + 528]
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
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain312_n15_α
 jmp xchain312_n23_α
 xchain312_n21_β:
 jmp xchain312_n15_α
 xchain312_n22_α:
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
# marshal arg2 = producer-box slot [zr+1056] -> [zr+1168]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1136]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je proc_rule3$2F2_ω
 jmp xchain312_n24_α
 xchain312_n22_β:
 jmp proc_rule3$2F2_ω
# IR_VAR_REF
 xchain312_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain312_n25_α
 xchain312_n24_α:
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
 je proc_rule3$2F2_ω
 jmp xchain312_n26_α
 xchain312_n24_β:
 jmp proc_rule3$2F2_ω
# IR_VAR_REF
 xchain312_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain312_n27_α
 xchain312_n26_α:
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
 je xchain312_n29_α
 jmp xchain312_n28_α
 xchain312_n26_β:
 jmp xchain312_n29_α
# IR_VAR_REF
 xchain312_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1728]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain312_n30_α
 xchain312_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1008]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1016], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 992]
 lea r8, [rbp + 992]
.Lx351_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx351_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx351_41
 cmp esi, 1
 jne .Lx351_55
 mov r8, rax
 jmp .Lx351_40
.Lx351_55:
 cmp esi, 2
 jne .Lx351_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx351_41
 mov r8, rax
 jmp .Lx351_40
.Lx351_56:
 cmp eax, 13
 jne .Lx351_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx351_41
 cmp rax, r8
 je .Lx351_41
 mov r8, rax
 jmp .Lx351_40
.Lx351_41:
 lea r9, [rbp + 1008]
.Lx351_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx351_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx351_43
 cmp esi, 1
 jne .Lx351_57
 mov r9, rax
 jmp .Lx351_42
.Lx351_57:
 cmp esi, 2
 jne .Lx351_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx351_43
 mov r9, rax
 jmp .Lx351_42
.Lx351_58:
 cmp eax, 13
 jne .Lx351_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx351_43
 cmp rax, r9
 je .Lx351_43
 mov r9, rax
 jmp .Lx351_42
.Lx351_43:
 cmp r8, r9
 je .Lx351_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx351_44
 cmp eax, 99
 je .Lx351_44
 cmp eax, 13
 jne .Lx351_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx351_44
 jmp .Lx351_45
.Lx351_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx351_53
 cmp eax, 99
 je .Lx351_53
 cmp eax, 13
 jne .Lx351_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx351_53
 jmp .Lx351_46
.Lx351_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx351_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx351_53
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
 jmp .Lx351_51
.Lx351_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx351_47
 cmp eax, 99
 je .Lx351_47
 cmp eax, 13
 jne .Lx351_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx351_47
 jmp .Lx351_48
.Lx351_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx351_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx351_53
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
 jmp .Lx351_51
.Lx351_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx351_49
 cmp edx, 14
 je .Lx351_53
 jmp .Lx351_52
.Lx351_49:
 cmp edx, 14
 je .Lx351_52
 cmp ecx, 7
 je .Lx351_53
 cmp edx, 7
 je .Lx351_53
 cmp ecx, 6
 jne .Lx351_50
 cmp edx, 6
 jne .Lx351_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx351_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx351_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx351_51
 jmp .Lx351_52
.Lx351_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx351_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx351_53
.Lx351_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx351_54
.Lx351_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx351_54
.Lx351_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx351_54:
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain312_n29_α
 jmp xchain312_n31_α
 xchain312_n28_β:
 jmp xchain312_n29_α
 xchain312_n29_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+784]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je proc_rule3$2F2_ω
 jmp xchain312_n6_α
 xchain312_n29_β:
 jmp proc_rule3$2F2_ω
 xchain312_n30_α:
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
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 336]
 lea r8, [rbp + 336]
.Lx353_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx353_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx353_61
 cmp esi, 1
 jne .Lx353_62
 mov r8, rax
 jmp .Lx353_60
.Lx353_62:
 cmp esi, 2
 jne .Lx353_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx353_61
 mov r8, rax
 jmp .Lx353_60
.Lx353_63:
 cmp eax, 13
 jne .Lx353_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx353_61
 cmp rax, r8
 je .Lx353_61
 mov r8, rax
 jmp .Lx353_60
.Lx353_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx353_72
 cmp eax, 99
 je .Lx353_72
 cmp eax, 13
 jne .Lx353_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx353_72
 jmp .Lx353_74
.Lx353_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx353_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx353_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx353_73
 lea r9, [rbp + 352]
.Lx353_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx353_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx353_65
 cmp esi, 1
 jne .Lx353_66
 mov r9, rax
 jmp .Lx353_64
.Lx353_66:
 cmp esi, 2
 jne .Lx353_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx353_65
 mov r9, rax
 jmp .Lx353_64
.Lx353_67:
 cmp eax, 13
 jne .Lx353_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx353_65
 cmp rax, r9
 je .Lx353_65
 mov r9, rax
 jmp .Lx353_64
.Lx353_65:
 lea rcx, [rbp + 368]
.Lx353_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx353_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx353_69
 cmp esi, 1
 jne .Lx353_70
 mov rcx, rax
 jmp .Lx353_68
.Lx353_70:
 cmp esi, 2
 jne .Lx353_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx353_69
 mov rcx, rax
 jmp .Lx353_68
.Lx353_71:
 cmp eax, 13
 jne .Lx353_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx353_69
 cmp rax, rcx
 je .Lx353_69
 mov rcx, rax
 jmp .Lx353_68
.Lx353_69:
 cmp r9, rcx
 je .Lx353_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx353_75
 cmp eax, 99
 je .Lx353_75
 cmp eax, 13
 jne .Lx353_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx353_75
 jmp .Lx353_72
.Lx353_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx353_76
 cmp eax, 99
 je .Lx353_76
 cmp eax, 13
 jne .Lx353_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx353_76
 jmp .Lx353_72
.Lx353_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx353_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx353_72
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
 jmp .Lx353_77
.Lx353_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx353_77
.Lx353_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx353_77:
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain312_n15_α
 jmp xchain312_n32_α
 xchain312_n30_β:
 jmp xchain312_n15_α
# IR_VAR_REF
 xchain312_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain312_n33_α
# IR_VAR_REF
 xchain312_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain312_n34_α
# IR_LIT_STRING
 xchain312_n33_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx358_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain312_n35_α
.Lx358_0:
 .quad .Lx358_0_s
.Lx358_0_s:
 .string "u"
# IR_VAR_REF
 xchain312_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1728]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain312_n36_α
# IR_VAR_REF
 xchain312_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain312_n37_α
 xchain312_n36_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx364_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx364_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx364_3]
 lea rdx, [rip + .Lx364_4]
 jmp rax
.Lx364_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx364_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx364_2
.Lx364_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx364_2
.Lx364_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx364_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx364_2
.Lx364_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx364_2
.Lx364_1:
 call rt_faildescr@PLT
.Lx364_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain312_n15_α
 jmp xchain312_n38_α
 xchain312_n36_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx364_0:
 .quad .Lx364_0_s
.Lx364_0_s:
 .string "rule3/2"
 xchain312_n37_α:
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
.Lx365_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx365_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx365_61
 cmp esi, 1
 jne .Lx365_62
 mov r8, rax
 jmp .Lx365_60
.Lx365_62:
 cmp esi, 2
 jne .Lx365_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx365_61
 mov r8, rax
 jmp .Lx365_60
.Lx365_63:
 cmp eax, 13
 jne .Lx365_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx365_61
 cmp rax, r8
 je .Lx365_61
 mov r8, rax
 jmp .Lx365_60
.Lx365_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx365_72
 cmp eax, 99
 je .Lx365_72
 cmp eax, 13
 jne .Lx365_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx365_72
 jmp .Lx365_74
.Lx365_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx365_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx365_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx365_73
 lea r9, [rbp + 880]
.Lx365_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx365_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx365_65
 cmp esi, 1
 jne .Lx365_66
 mov r9, rax
 jmp .Lx365_64
.Lx365_66:
 cmp esi, 2
 jne .Lx365_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx365_65
 mov r9, rax
 jmp .Lx365_64
.Lx365_67:
 cmp eax, 13
 jne .Lx365_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx365_65
 cmp rax, r9
 je .Lx365_65
 mov r9, rax
 jmp .Lx365_64
.Lx365_65:
 lea rcx, [rbp + 896]
.Lx365_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx365_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx365_69
 cmp esi, 1
 jne .Lx365_70
 mov rcx, rax
 jmp .Lx365_68
.Lx365_70:
 cmp esi, 2
 jne .Lx365_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx365_69
 mov rcx, rax
 jmp .Lx365_68
.Lx365_71:
 cmp eax, 13
 jne .Lx365_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx365_69
 cmp rax, rcx
 je .Lx365_69
 mov rcx, rax
 jmp .Lx365_68
.Lx365_69:
 cmp r9, rcx
 je .Lx365_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx365_75
 cmp eax, 99
 je .Lx365_75
 cmp eax, 13
 jne .Lx365_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx365_75
 jmp .Lx365_72
.Lx365_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx365_76
 cmp eax, 99
 je .Lx365_76
 cmp eax, 13
 jne .Lx365_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx365_76
 jmp .Lx365_72
.Lx365_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx365_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx365_72
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
 jmp .Lx365_77
.Lx365_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx365_77
.Lx365_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx365_77:
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain312_n29_α
 jmp xchain312_n39_α
 xchain312_n37_β:
 jmp xchain312_n29_α
# IR_SUSPEND yield+resume
 xchain312_n38_α:
 lea rax, [rip + xchain312_n38_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule3$2F2_γ
 xchain312_n38_β:
 jmp xchain312_n36_β
# IR_SUSPEND yield+resume
 xchain312_n39_α:
 lea rax, [rip + xchain312_n39_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule3$2F2_γ
 xchain312_n39_β:
 jmp xchain312_n29_α
proc_rule3$2F2_res:
add rsp, 8
pop rbp
proc_rule3$2F2_β:
jmp qword ptr [rbp + 1680]
proc_rule3$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule3$2F2_res]
push rax
mov rax, [rbp + 1768]
mov rbp, [rbp + 1784]
jmp rax
proc_rule3$2F2_ω:
mov rax, [rbp + 1776]
lea rsp, [rbp + 1792]
mov rbp, [rbp + 1784]
jmp rax
  .globl proc_rule1$2F2_α
proc_rule1$2F2_α:
#=======================================================================================================================
    .global proc_rule1$2F2_α
    .global proc_rule1$2F2_β
    .global proc_rule1$2F2_γ
    .global proc_rule1$2F2_ω
  sub rsp, 1744
  mov [rsp + 1720], rcx
  mov [rsp + 1728], rdx
  mov [rsp + 1736], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1656], rsp
  mov rdi, rsp
  mov esi, 1632
  mov edx, 1712
  call rt_jmp_frame_lexprep2@PLT
proc_rule1$2F2_α_body:
lea rax, [rip + xchain370_n37_β]
mov qword ptr [rbp + 1632], rax
 xchain370_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule1$2F2_ω
 jmp xchain370_n1_α
 xchain370_n0_β:
 jmp proc_rule1$2F2_ω
# IR_VAR_REF
 xchain370_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain370_n2_α
# IR_LIT_INTEGER
 xchain370_n2_α:
 mov qword ptr [rbp + 1568], 6
 mov rax, qword ptr [rip + .Lx374_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain370_n3_α
.Lx374_0:
 .quad 3
# IR_LIT_INTEGER
 xchain370_n3_α:
 mov qword ptr [rbp + 1600], 6
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain370_n4_α
.Lx375_0:
 .quad 0
 xchain370_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1488]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1496], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1504]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1512], rax
# marshal arg2 = producer-box slot [zr+1600] -> [zr+1520]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1488]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain370_n6_α
 jmp xchain370_n5_α
 xchain370_n4_β:
 jmp xchain370_n6_α
# IR_VAR_REF
 xchain370_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain370_n7_α
# IR_VAR_REF
 xchain370_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain370_n8_α
# IR_LIT_STRING
 xchain370_n7_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx381_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain370_n9_α
.Lx381_0:
 .quad .Lx381_0_s
.Lx381_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain370_n8_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain370_n10_α
.Lx382_0:
 .quad 3
# IR_LIT_STRING
 xchain370_n9_α:
 mov qword ptr [rbp + 1328], 1
 mov rax, qword ptr [rip + .Lx383_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain370_n11_α
.Lx383_0:
 .quad .Lx383_0_s
.Lx383_0_s:
 .string "i"
# IR_LIT_INTEGER
 xchain370_n10_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx384_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain370_n12_α
.Lx384_0:
 .quad 0
# IR_LIT_STRING
 xchain370_n11_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx385_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain370_n13_α
.Lx385_0:
 .quad .Lx385_0_s
.Lx385_0_s:
 .string "[]"
 xchain370_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+640]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 648], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+656]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain370_n15_α
 jmp xchain370_n14_α
 xchain370_n12_β:
 jmp xchain370_n15_α
 xchain370_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1376]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1392]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1400], rax
# marshal arg2 = producer-box slot [zr+1296] -> [zr+1408]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1416], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1376]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain370_n17_α
 jmp xchain370_n16_α
 xchain370_n13_β:
 jmp xchain370_n17_α
# IR_VAR_REF
 xchain370_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain370_n18_α
 xchain370_n15_α:
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
 je proc_rule1$2F2_ω
 jmp proc_rule1$2F2_ω
 xchain370_n15_β:
 jmp proc_rule1$2F2_ω
 xchain370_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1232]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1248]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1256], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1232]
 lea r8, [rbp + 1232]
.Lx391_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx391_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx391_41
 cmp esi, 1
 jne .Lx391_55
 mov r8, rax
 jmp .Lx391_40
.Lx391_55:
 cmp esi, 2
 jne .Lx391_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx391_41
 mov r8, rax
 jmp .Lx391_40
.Lx391_56:
 cmp eax, 13
 jne .Lx391_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx391_41
 cmp rax, r8
 je .Lx391_41
 mov r8, rax
 jmp .Lx391_40
.Lx391_41:
 lea r9, [rbp + 1248]
.Lx391_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx391_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx391_43
 cmp esi, 1
 jne .Lx391_57
 mov r9, rax
 jmp .Lx391_42
.Lx391_57:
 cmp esi, 2
 jne .Lx391_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx391_43
 mov r9, rax
 jmp .Lx391_42
.Lx391_58:
 cmp eax, 13
 jne .Lx391_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx391_43
 cmp rax, r9
 je .Lx391_43
 mov r9, rax
 jmp .Lx391_42
.Lx391_43:
 cmp r8, r9
 je .Lx391_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx391_44
 cmp eax, 99
 je .Lx391_44
 cmp eax, 13
 jne .Lx391_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx391_44
 jmp .Lx391_45
.Lx391_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx391_53
 cmp eax, 99
 je .Lx391_53
 cmp eax, 13
 jne .Lx391_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx391_53
 jmp .Lx391_46
.Lx391_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx391_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx391_53
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
 jmp .Lx391_51
.Lx391_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx391_47
 cmp eax, 99
 je .Lx391_47
 cmp eax, 13
 jne .Lx391_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx391_47
 jmp .Lx391_48
.Lx391_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx391_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx391_53
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
 jmp .Lx391_51
.Lx391_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx391_49
 cmp edx, 14
 je .Lx391_53
 jmp .Lx391_52
.Lx391_49:
 cmp edx, 14
 je .Lx391_52
 cmp ecx, 7
 je .Lx391_53
 cmp edx, 7
 je .Lx391_53
 cmp ecx, 6
 jne .Lx391_50
 cmp edx, 6
 jne .Lx391_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx391_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx391_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx391_51
 jmp .Lx391_52
.Lx391_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx391_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx391_53
.Lx391_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx391_54
.Lx391_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx391_54
.Lx391_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx391_54:
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain370_n17_α
 jmp xchain370_n19_α
 xchain370_n16_β:
 jmp xchain370_n17_α
 xchain370_n17_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+784]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je proc_rule1$2F2_ω
 jmp xchain370_n6_α
 xchain370_n17_β:
 jmp proc_rule1$2F2_ω
# IR_VAR_REF
 xchain370_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1696]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain370_n20_α
# IR_VAR_REF
 xchain370_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain370_n21_α
# IR_VAR_REF
 xchain370_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain370_n22_α
# IR_LIT_STRING
 xchain370_n21_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx399_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain370_n23_α
.Lx399_0:
 .quad .Lx399_0_s
.Lx399_0_s:
 .string "."
 xchain370_n22_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+496]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 504], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 520], rax
# marshal arg2 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 536], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 496]
 lea r8, [rbp + 496]
.Lx400_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx400_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx400_61
 cmp esi, 1
 jne .Lx400_62
 mov r8, rax
 jmp .Lx400_60
.Lx400_62:
 cmp esi, 2
 jne .Lx400_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx400_61
 mov r8, rax
 jmp .Lx400_60
.Lx400_63:
 cmp eax, 13
 jne .Lx400_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx400_61
 cmp rax, r8
 je .Lx400_61
 mov r8, rax
 jmp .Lx400_60
.Lx400_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx400_72
 cmp eax, 99
 je .Lx400_72
 cmp eax, 13
 jne .Lx400_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx400_72
 jmp .Lx400_74
.Lx400_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx400_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx400_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx400_73
 lea r9, [rbp + 512]
.Lx400_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx400_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx400_65
 cmp esi, 1
 jne .Lx400_66
 mov r9, rax
 jmp .Lx400_64
.Lx400_66:
 cmp esi, 2
 jne .Lx400_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx400_65
 mov r9, rax
 jmp .Lx400_64
.Lx400_67:
 cmp eax, 13
 jne .Lx400_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx400_65
 cmp rax, r9
 je .Lx400_65
 mov r9, rax
 jmp .Lx400_64
.Lx400_65:
 lea rcx, [rbp + 528]
.Lx400_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx400_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx400_69
 cmp esi, 1
 jne .Lx400_70
 mov rcx, rax
 jmp .Lx400_68
.Lx400_70:
 cmp esi, 2
 jne .Lx400_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx400_69
 mov rcx, rax
 jmp .Lx400_68
.Lx400_71:
 cmp eax, 13
 jne .Lx400_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx400_69
 cmp rax, rcx
 je .Lx400_69
 mov rcx, rax
 jmp .Lx400_68
.Lx400_69:
 cmp r9, rcx
 je .Lx400_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx400_75
 cmp eax, 99
 je .Lx400_75
 cmp eax, 13
 jne .Lx400_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx400_75
 jmp .Lx400_72
.Lx400_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx400_76
 cmp eax, 99
 je .Lx400_76
 cmp eax, 13
 jne .Lx400_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx400_76
 jmp .Lx400_72
.Lx400_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx400_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx400_72
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
 jmp .Lx400_77
.Lx400_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx400_77
.Lx400_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx400_77:
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain370_n15_α
 jmp xchain370_n24_α
 xchain370_n22_β:
 jmp xchain370_n15_α
# IR_LIT_STRING
 xchain370_n23_α:
 mov qword ptr [rbp + 1072], 1
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain370_n25_α
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "i"
# IR_VAR_REF
 xchain370_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain370_n26_α
# IR_LIT_STRING
 xchain370_n25_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx404_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain370_n27_α
.Lx404_0:
 .quad .Lx404_0_s
.Lx404_0_s:
 .string "."
# IR_VAR_REF
 xchain370_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1696]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain370_n28_α
# IR_LIT_STRING
 xchain370_n27_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain370_n29_α
.Lx407_0:
 .quad .Lx407_0_s
.Lx407_0_s:
 .string "u"
# IR_VAR_REF
 xchain370_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain370_n30_α
# IR_LIT_STRING
 xchain370_n29_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx410_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain370_n31_α
.Lx410_0:
 .quad .Lx410_0_s
.Lx410_0_s:
 .string "[]"
 xchain370_n30_α:
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
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 336]
 lea r8, [rbp + 336]
.Lx411_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx411_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx411_61
 cmp esi, 1
 jne .Lx411_62
 mov r8, rax
 jmp .Lx411_60
.Lx411_62:
 cmp esi, 2
 jne .Lx411_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx411_61
 mov r8, rax
 jmp .Lx411_60
.Lx411_63:
 cmp eax, 13
 jne .Lx411_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx411_61
 cmp rax, r8
 je .Lx411_61
 mov r8, rax
 jmp .Lx411_60
.Lx411_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx411_72
 cmp eax, 99
 je .Lx411_72
 cmp eax, 13
 jne .Lx411_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx411_72
 jmp .Lx411_74
.Lx411_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx411_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx411_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx411_73
 lea r9, [rbp + 352]
.Lx411_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx411_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx411_65
 cmp esi, 1
 jne .Lx411_66
 mov r9, rax
 jmp .Lx411_64
.Lx411_66:
 cmp esi, 2
 jne .Lx411_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx411_65
 mov r9, rax
 jmp .Lx411_64
.Lx411_67:
 cmp eax, 13
 jne .Lx411_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx411_65
 cmp rax, r9
 je .Lx411_65
 mov r9, rax
 jmp .Lx411_64
.Lx411_65:
 lea rcx, [rbp + 368]
.Lx411_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx411_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx411_69
 cmp esi, 1
 jne .Lx411_70
 mov rcx, rax
 jmp .Lx411_68
.Lx411_70:
 cmp esi, 2
 jne .Lx411_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx411_69
 mov rcx, rax
 jmp .Lx411_68
.Lx411_71:
 cmp eax, 13
 jne .Lx411_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx411_69
 cmp rax, rcx
 je .Lx411_69
 mov rcx, rax
 jmp .Lx411_68
.Lx411_69:
 cmp r9, rcx
 je .Lx411_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx411_75
 cmp eax, 99
 je .Lx411_75
 cmp eax, 13
 jne .Lx411_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx411_75
 jmp .Lx411_72
.Lx411_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx411_76
 cmp eax, 99
 je .Lx411_76
 cmp eax, 13
 jne .Lx411_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx411_76
 jmp .Lx411_72
.Lx411_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx411_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx411_72
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
 jmp .Lx411_77
.Lx411_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx411_77
.Lx411_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx411_77:
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain370_n15_α
 jmp xchain370_n32_α
 xchain370_n30_β:
 jmp xchain370_n15_α
 xchain370_n31_α:
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
# marshal arg2 = producer-box slot [zr+896] -> [zr+1008]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 976]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je proc_rule1$2F2_ω
 jmp xchain370_n33_α
 xchain370_n31_β:
 jmp proc_rule1$2F2_ω
# IR_VAR_REF
 xchain370_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain370_n34_α
 xchain370_n33_α:
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
 je xchain370_n17_α
 jmp xchain370_n35_α
 xchain370_n33_β:
 jmp xchain370_n17_α
# IR_VAR_REF
 xchain370_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain370_n36_α
 xchain370_n35_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+848]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 856], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 832]
 lea r8, [rbp + 832]
.Lx418_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx418_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx418_41
 cmp esi, 1
 jne .Lx418_55
 mov r8, rax
 jmp .Lx418_40
.Lx418_55:
 cmp esi, 2
 jne .Lx418_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx418_41
 mov r8, rax
 jmp .Lx418_40
.Lx418_56:
 cmp eax, 13
 jne .Lx418_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx418_41
 cmp rax, r8
 je .Lx418_41
 mov r8, rax
 jmp .Lx418_40
.Lx418_41:
 lea r9, [rbp + 848]
.Lx418_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx418_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx418_43
 cmp esi, 1
 jne .Lx418_57
 mov r9, rax
 jmp .Lx418_42
.Lx418_57:
 cmp esi, 2
 jne .Lx418_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx418_43
 mov r9, rax
 jmp .Lx418_42
.Lx418_58:
 cmp eax, 13
 jne .Lx418_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx418_43
 cmp rax, r9
 je .Lx418_43
 mov r9, rax
 jmp .Lx418_42
.Lx418_43:
 cmp r8, r9
 je .Lx418_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx418_44
 cmp eax, 99
 je .Lx418_44
 cmp eax, 13
 jne .Lx418_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx418_44
 jmp .Lx418_45
.Lx418_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx418_53
 cmp eax, 99
 je .Lx418_53
 cmp eax, 13
 jne .Lx418_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx418_53
 jmp .Lx418_46
.Lx418_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx418_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx418_53
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
 jmp .Lx418_51
.Lx418_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx418_47
 cmp eax, 99
 je .Lx418_47
 cmp eax, 13
 jne .Lx418_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx418_47
 jmp .Lx418_48
.Lx418_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx418_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx418_53
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
 jmp .Lx418_51
.Lx418_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx418_49
 cmp edx, 14
 je .Lx418_53
 jmp .Lx418_52
.Lx418_49:
 cmp edx, 14
 je .Lx418_52
 cmp ecx, 7
 je .Lx418_53
 cmp edx, 7
 je .Lx418_53
 cmp ecx, 6
 jne .Lx418_50
 cmp edx, 6
 jne .Lx418_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx418_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx418_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx418_51
 jmp .Lx418_52
.Lx418_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx418_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx418_53
.Lx418_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx418_54
.Lx418_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx418_54
.Lx418_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx418_54:
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain370_n17_α
 jmp xchain370_n37_α
 xchain370_n35_β:
 jmp xchain370_n17_α
 xchain370_n36_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx420_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx420_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx420_3]
 lea rdx, [rip + .Lx420_4]
 jmp rax
.Lx420_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx420_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx420_2
.Lx420_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx420_2
.Lx420_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx420_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx420_2
.Lx420_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx420_2
.Lx420_1:
 call rt_faildescr@PLT
.Lx420_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain370_n15_α
 jmp xchain370_n38_α
 xchain370_n36_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx420_0:
 .quad .Lx420_0_s
.Lx420_0_s:
 .string "rule1/2"
# IR_SUSPEND yield+resume
 xchain370_n37_α:
 lea rax, [rip + xchain370_n37_β]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule1$2F2_γ
 xchain370_n37_β:
 jmp xchain370_n17_α
# IR_SUSPEND yield+resume
 xchain370_n38_α:
 lea rax, [rip + xchain370_n38_β]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule1$2F2_γ
 xchain370_n38_β:
 jmp xchain370_n36_β
proc_rule1$2F2_res:
add rsp, 8
pop rbp
proc_rule1$2F2_β:
jmp qword ptr [rbp + 1632]
proc_rule1$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule1$2F2_res]
push rax
mov rax, [rbp + 1720]
mov rbp, [rbp + 1736]
jmp rax
proc_rule1$2F2_ω:
mov rax, [rbp + 1728]
lea rsp, [rbp + 1744]
mov rbp, [rbp + 1736]
jmp rax
  .globl proc_my_append$2F3_α
proc_my_append$2F3_α:
#=======================================================================================================================
    .global proc_my_append$2F3_α
    .global proc_my_append$2F3_β
    .global proc_my_append$2F3_γ
    .global proc_my_append$2F3_ω
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
proc_my_append$2F3_α_body:
lea rax, [rip + xchain425_n25_β]
mov qword ptr [rbp + 1488], rax
 xchain425_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_my_append$2F3_ω
 jmp xchain425_n1_α
 xchain425_n0_β:
 jmp proc_my_append$2F3_ω
# IR_VAR_REF
 xchain425_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain425_n2_α
# IR_LIT_INTEGER
 xchain425_n2_α:
 mov qword ptr [rbp + 1424], 6
 mov rax, qword ptr [rip + .Lx429_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain425_n3_α
.Lx429_0:
 .quad 2
# IR_LIT_STRING
 xchain425_n3_α:
 mov qword ptr [rbp + 1456], 1
 mov rax, qword ptr [rip + .Lx430_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain425_n4_α
.Lx430_0:
 .quad .Lx430_0_s
.Lx430_0_s:
 .string "[]"
 xchain425_n4_α:
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
 je xchain425_n6_α
 jmp xchain425_n5_α
 xchain425_n4_β:
 jmp xchain425_n6_α
# IR_VAR_REF
 xchain425_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain425_n7_α
# IR_VAR_REF
 xchain425_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain425_n8_α
# IR_LIT_STRING
 xchain425_n7_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx436_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain425_n9_α
.Lx436_0:
 .quad .Lx436_0_s
.Lx436_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain425_n8_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx437_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain425_n10_α
.Lx437_0:
 .quad 3
 xchain425_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1232]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1240], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1232]
 mov rsi, qword ptr [rip + .Lx438_2]
 jmp .Lx438_3
.Lx438_2:
 .quad .Lx438_2_s
.Lx438_2_s:
 .string "[]"
.Lx438_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain425_n12_α
 jmp xchain425_n11_α
 xchain425_n9_β:
 jmp xchain425_n12_α
# IR_LIT_INTEGER
 xchain425_n10_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx439_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain425_n13_α
.Lx439_0:
 .quad 0
# IR_VAR_REF
 xchain425_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain425_n14_α
 xchain425_n12_α:
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
 je proc_my_append$2F3_ω
 jmp xchain425_n6_α
 xchain425_n12_β:
 jmp proc_my_append$2F3_ω
 xchain425_n13_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 800]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain425_n16_α
 jmp xchain425_n15_α
 xchain425_n13_β:
 jmp xchain425_n16_α
# IR_VAR_REF
 xchain425_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain425_n17_α
# IR_VAR_REF
 xchain425_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain425_n18_α
 xchain425_n16_α:
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
 je proc_my_append$2F3_ω
 jmp proc_my_append$2F3_ω
 xchain425_n16_β:
 jmp proc_my_append$2F3_ω
 xchain425_n17_α:
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
.Lx449_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx449_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx449_41
 cmp esi, 1
 jne .Lx449_55
 mov r8, rax
 jmp .Lx449_40
.Lx449_55:
 cmp esi, 2
 jne .Lx449_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx449_41
 mov r8, rax
 jmp .Lx449_40
.Lx449_56:
 cmp eax, 13
 jne .Lx449_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx449_41
 cmp rax, r8
 je .Lx449_41
 mov r8, rax
 jmp .Lx449_40
.Lx449_41:
 lea r9, [rbp + 1136]
.Lx449_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx449_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx449_43
 cmp esi, 1
 jne .Lx449_57
 mov r9, rax
 jmp .Lx449_42
.Lx449_57:
 cmp esi, 2
 jne .Lx449_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx449_43
 mov r9, rax
 jmp .Lx449_42
.Lx449_58:
 cmp eax, 13
 jne .Lx449_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx449_43
 cmp rax, r9
 je .Lx449_43
 mov r9, rax
 jmp .Lx449_42
.Lx449_43:
 cmp r8, r9
 je .Lx449_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx449_44
 cmp eax, 99
 je .Lx449_44
 cmp eax, 13
 jne .Lx449_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx449_44
 jmp .Lx449_45
.Lx449_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx449_53
 cmp eax, 99
 je .Lx449_53
 cmp eax, 13
 jne .Lx449_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx449_53
 jmp .Lx449_46
.Lx449_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx449_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx449_53
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
 jmp .Lx449_51
.Lx449_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx449_47
 cmp eax, 99
 je .Lx449_47
 cmp eax, 13
 jne .Lx449_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx449_47
 jmp .Lx449_48
.Lx449_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx449_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx449_53
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
 jmp .Lx449_51
.Lx449_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx449_49
 cmp edx, 14
 je .Lx449_53
 jmp .Lx449_52
.Lx449_49:
 cmp edx, 14
 je .Lx449_52
 cmp ecx, 7
 je .Lx449_53
 cmp edx, 7
 je .Lx449_53
 cmp ecx, 6
 jne .Lx449_50
 cmp edx, 6
 jne .Lx449_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx449_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx449_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx449_51
 jmp .Lx449_52
.Lx449_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx449_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx449_53
.Lx449_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx449_54
.Lx449_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx449_54
.Lx449_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx449_54:
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain425_n12_α
 jmp xchain425_n19_α
 xchain425_n17_β:
 jmp xchain425_n12_α
# IR_VAR_REF
 xchain425_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain425_n20_α
# IR_VAR_REF
 xchain425_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain425_n21_α
# IR_VAR_REF
 xchain425_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain425_n22_α
# IR_VAR_REF
 xchain425_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain425_n23_α
 xchain425_n22_α:
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
.Lx458_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx458_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx458_61
 cmp esi, 1
 jne .Lx458_62
 mov r8, rax
 jmp .Lx458_60
.Lx458_62:
 cmp esi, 2
 jne .Lx458_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx458_61
 mov r8, rax
 jmp .Lx458_60
.Lx458_63:
 cmp eax, 13
 jne .Lx458_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx458_61
 cmp rax, r8
 je .Lx458_61
 mov r8, rax
 jmp .Lx458_60
.Lx458_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx458_72
 cmp eax, 99
 je .Lx458_72
 cmp eax, 13
 jne .Lx458_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx458_72
 jmp .Lx458_74
.Lx458_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx458_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx458_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx458_73
 lea r9, [rbp + 688]
.Lx458_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx458_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx458_65
 cmp esi, 1
 jne .Lx458_66
 mov r9, rax
 jmp .Lx458_64
.Lx458_66:
 cmp esi, 2
 jne .Lx458_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx458_65
 mov r9, rax
 jmp .Lx458_64
.Lx458_67:
 cmp eax, 13
 jne .Lx458_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx458_65
 cmp rax, r9
 je .Lx458_65
 mov r9, rax
 jmp .Lx458_64
.Lx458_65:
 lea rcx, [rbp + 704]
.Lx458_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx458_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx458_69
 cmp esi, 1
 jne .Lx458_70
 mov rcx, rax
 jmp .Lx458_68
.Lx458_70:
 cmp esi, 2
 jne .Lx458_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx458_69
 mov rcx, rax
 jmp .Lx458_68
.Lx458_71:
 cmp eax, 13
 jne .Lx458_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx458_69
 cmp rax, rcx
 je .Lx458_69
 mov rcx, rax
 jmp .Lx458_68
.Lx458_69:
 cmp r9, rcx
 je .Lx458_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx458_75
 cmp eax, 99
 je .Lx458_75
 cmp eax, 13
 jne .Lx458_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx458_75
 jmp .Lx458_72
.Lx458_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx458_76
 cmp eax, 99
 je .Lx458_76
 cmp eax, 13
 jne .Lx458_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx458_76
 jmp .Lx458_72
.Lx458_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx458_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx458_72
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
 jmp .Lx458_77
.Lx458_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx458_77
.Lx458_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx458_77:
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain425_n16_α
 jmp xchain425_n24_α
 xchain425_n22_β:
 jmp xchain425_n16_α
 xchain425_n23_α:
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
.Lx459_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx459_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx459_41
 cmp esi, 1
 jne .Lx459_55
 mov r8, rax
 jmp .Lx459_40
.Lx459_55:
 cmp esi, 2
 jne .Lx459_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx459_41
 mov r8, rax
 jmp .Lx459_40
.Lx459_56:
 cmp eax, 13
 jne .Lx459_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx459_41
 cmp rax, r8
 je .Lx459_41
 mov r8, rax
 jmp .Lx459_40
.Lx459_41:
 lea r9, [rbp + 1024]
.Lx459_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx459_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx459_43
 cmp esi, 1
 jne .Lx459_57
 mov r9, rax
 jmp .Lx459_42
.Lx459_57:
 cmp esi, 2
 jne .Lx459_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx459_43
 mov r9, rax
 jmp .Lx459_42
.Lx459_58:
 cmp eax, 13
 jne .Lx459_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx459_43
 cmp rax, r9
 je .Lx459_43
 mov r9, rax
 jmp .Lx459_42
.Lx459_43:
 cmp r8, r9
 je .Lx459_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx459_44
 cmp eax, 99
 je .Lx459_44
 cmp eax, 13
 jne .Lx459_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx459_44
 jmp .Lx459_45
.Lx459_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx459_53
 cmp eax, 99
 je .Lx459_53
 cmp eax, 13
 jne .Lx459_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx459_53
 jmp .Lx459_46
.Lx459_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx459_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx459_53
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
 jmp .Lx459_51
.Lx459_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx459_47
 cmp eax, 99
 je .Lx459_47
 cmp eax, 13
 jne .Lx459_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx459_47
 jmp .Lx459_48
.Lx459_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx459_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx459_53
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
 jmp .Lx459_51
.Lx459_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx459_49
 cmp edx, 14
 je .Lx459_53
 jmp .Lx459_52
.Lx459_49:
 cmp edx, 14
 je .Lx459_52
 cmp ecx, 7
 je .Lx459_53
 cmp edx, 7
 je .Lx459_53
 cmp ecx, 6
 jne .Lx459_50
 cmp edx, 6
 jne .Lx459_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx459_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx459_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx459_51
 jmp .Lx459_52
.Lx459_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx459_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx459_53
.Lx459_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx459_54
.Lx459_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx459_54
.Lx459_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx459_54:
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain425_n12_α
 jmp xchain425_n25_α
 xchain425_n23_β:
 jmp xchain425_n12_α
# IR_VAR_REF
 xchain425_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain425_n26_α
# IR_SUSPEND yield+resume
 xchain425_n25_α:
 lea rax, [rip + xchain425_n25_β]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_my_append$2F3_γ
 xchain425_n25_β:
 jmp xchain425_n12_α
# IR_VAR_REF
 xchain425_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain425_n27_α
 xchain425_n27_α:
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
.Lx466_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx466_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx466_41
 cmp esi, 1
 jne .Lx466_55
 mov r8, rax
 jmp .Lx466_40
.Lx466_55:
 cmp esi, 2
 jne .Lx466_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx466_41
 mov r8, rax
 jmp .Lx466_40
.Lx466_56:
 cmp eax, 13
 jne .Lx466_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx466_41
 cmp rax, r8
 je .Lx466_41
 mov r8, rax
 jmp .Lx466_40
.Lx466_41:
 lea r9, [rbp + 544]
.Lx466_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx466_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx466_43
 cmp esi, 1
 jne .Lx466_57
 mov r9, rax
 jmp .Lx466_42
.Lx466_57:
 cmp esi, 2
 jne .Lx466_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx466_43
 mov r9, rax
 jmp .Lx466_42
.Lx466_58:
 cmp eax, 13
 jne .Lx466_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx466_43
 cmp rax, r9
 je .Lx466_43
 mov r9, rax
 jmp .Lx466_42
.Lx466_43:
 cmp r8, r9
 je .Lx466_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx466_44
 cmp eax, 99
 je .Lx466_44
 cmp eax, 13
 jne .Lx466_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx466_44
 jmp .Lx466_45
.Lx466_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx466_53
 cmp eax, 99
 je .Lx466_53
 cmp eax, 13
 jne .Lx466_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx466_53
 jmp .Lx466_46
.Lx466_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx466_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx466_53
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
 jmp .Lx466_51
.Lx466_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx466_47
 cmp eax, 99
 je .Lx466_47
 cmp eax, 13
 jne .Lx466_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx466_47
 jmp .Lx466_48
.Lx466_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx466_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx466_53
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
 jmp .Lx466_51
.Lx466_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx466_49
 cmp edx, 14
 je .Lx466_53
 jmp .Lx466_52
.Lx466_49:
 cmp edx, 14
 je .Lx466_52
 cmp ecx, 7
 je .Lx466_53
 cmp edx, 7
 je .Lx466_53
 cmp ecx, 6
 jne .Lx466_50
 cmp edx, 6
 jne .Lx466_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx466_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx466_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx466_51
 jmp .Lx466_52
.Lx466_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx466_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx466_53
.Lx466_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx466_54
.Lx466_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx466_54
.Lx466_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx466_54:
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain425_n16_α
 jmp xchain425_n28_α
 xchain425_n27_β:
 jmp xchain425_n16_α
# IR_VAR_REF
 xchain425_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain425_n29_α
# IR_VAR_REF
 xchain425_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain425_n30_α
# IR_VAR_REF
 xchain425_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain425_n31_α
 xchain425_n31_α:
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
.Lx473_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx473_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx473_61
 cmp esi, 1
 jne .Lx473_62
 mov r8, rax
 jmp .Lx473_60
.Lx473_62:
 cmp esi, 2
 jne .Lx473_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx473_61
 mov r8, rax
 jmp .Lx473_60
.Lx473_63:
 cmp eax, 13
 jne .Lx473_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx473_61
 cmp rax, r8
 je .Lx473_61
 mov r8, rax
 jmp .Lx473_60
.Lx473_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx473_72
 cmp eax, 99
 je .Lx473_72
 cmp eax, 13
 jne .Lx473_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx473_72
 jmp .Lx473_74
.Lx473_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx473_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx473_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx473_73
 lea r9, [rbp + 416]
.Lx473_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx473_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx473_65
 cmp esi, 1
 jne .Lx473_66
 mov r9, rax
 jmp .Lx473_64
.Lx473_66:
 cmp esi, 2
 jne .Lx473_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx473_65
 mov r9, rax
 jmp .Lx473_64
.Lx473_67:
 cmp eax, 13
 jne .Lx473_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx473_65
 cmp rax, r9
 je .Lx473_65
 mov r9, rax
 jmp .Lx473_64
.Lx473_65:
 lea rcx, [rbp + 432]
.Lx473_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx473_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx473_69
 cmp esi, 1
 jne .Lx473_70
 mov rcx, rax
 jmp .Lx473_68
.Lx473_70:
 cmp esi, 2
 jne .Lx473_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx473_69
 mov rcx, rax
 jmp .Lx473_68
.Lx473_71:
 cmp eax, 13
 jne .Lx473_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx473_69
 cmp rax, rcx
 je .Lx473_69
 mov rcx, rax
 jmp .Lx473_68
.Lx473_69:
 cmp r9, rcx
 je .Lx473_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx473_75
 cmp eax, 99
 je .Lx473_75
 cmp eax, 13
 jne .Lx473_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx473_75
 jmp .Lx473_72
.Lx473_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx473_76
 cmp eax, 99
 je .Lx473_76
 cmp eax, 13
 jne .Lx473_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx473_76
 jmp .Lx473_72
.Lx473_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx473_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx473_72
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
 jmp .Lx473_77
.Lx473_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx473_77
.Lx473_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx473_77:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain425_n16_α
 jmp xchain425_n32_α
 xchain425_n31_β:
 jmp xchain425_n16_α
# IR_VAR_REF
 xchain425_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain425_n33_α
# IR_VAR_REF
 xchain425_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain425_n34_α
# IR_VAR_REF
 xchain425_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain425_n35_α
 xchain425_n35_α:
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
 mov rdi, qword ptr [rip + .Lx481_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx481_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx481_3]
 lea rdx, [rip + .Lx481_4]
 jmp rax
.Lx481_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx481_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx481_2
.Lx481_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx481_2
.Lx481_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx481_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx481_2
.Lx481_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx481_2
.Lx481_1:
 call rt_faildescr@PLT
.Lx481_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain425_n16_α
 jmp xchain425_n36_α
 xchain425_n35_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx481_0:
 .quad .Lx481_0_s
.Lx481_0_s:
 .string "my_append/3"
# IR_SUSPEND yield+resume
 xchain425_n36_α:
 lea rax, [rip + xchain425_n36_β]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_my_append$2F3_γ
 xchain425_n36_β:
 jmp xchain425_n35_β
proc_my_append$2F3_res:
add rsp, 8
pop rbp
proc_my_append$2F3_β:
jmp qword ptr [rbp + 1488]
proc_my_append$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_my_append$2F3_res]
push rax
mov rax, [rbp + 1592]
mov rbp, [rbp + 1608]
jmp rax
proc_my_append$2F3_ω:
mov rax, [rbp + 1600]
lea rsp, [rbp + 1616]
mov rbp, [rbp + 1608]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "rule/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_rule$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2880
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "rule4/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_rule4$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1584
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "rule2/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_rule2$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 720
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "theorem/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_theorem$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2928
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname4: .string "mu/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_mu$2F0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1072
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "rule3/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_rule3$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1760
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname6: .string "rule1/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_rule1$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1712
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname7: .string "my_append/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_my_append$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1584
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
  mov qword ptr [rsp + 360], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain484_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain484_n1_α
 xchain484_n0_β:
 jmp main_ω
 xchain484_n1_α:
 mov qword ptr [rbp + 320], 0
 mov rdi, qword ptr [rip + .Lx487_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx487_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx487_3]
 lea rdx, [rip + .Lx487_4]
 jmp rax
.Lx487_3:
 mov qword ptr [rbp + 328], rsp
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx487_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx487_2
.Lx487_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx487_2
.Lx487_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx487_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx487_2
.Lx487_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx487_2
.Lx487_1:
 call rt_faildescr@PLT
.Lx487_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain484_n3_α
 jmp xchain484_n2_α
 xchain484_n1_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 328]
 jmp qword ptr [rsp]
.Lx487_0:
 .quad .Lx487_0_s
.Lx487_0_s:
 .string "mu/0"
# IR_LIT_STRING
 xchain484_n2_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx488_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain484_n4_α
.Lx488_0:
 .quad .Lx488_0_s
.Lx488_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain484_n3_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx489_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain484_n5_α
.Lx489_0:
 .quad .Lx489_0_s
.Lx489_0_s:
 .string "failed"
 xchain484_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn491: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn491]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain484_n7_α
 jmp xchain484_n6_α
 xchain484_n4_β:
 jmp xchain484_n7_α
 xchain484_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+256]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn493: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn493]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain484_n7_α
 jmp xchain484_n6_α
 xchain484_n5_β:
 jmp xchain484_n7_α
# IR_LIT_STRING
 xchain484_n6_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx494_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain484_n8_α
.Lx494_0:
 .quad .Lx494_0_s
.Lx494_0_s:
 .string ""
 xchain484_n7_α:
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
 xchain484_n7_β:
 jmp main_ω
 xchain484_n8_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn497: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn497]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain484_n7_α
 jmp xchain484_n9_α
 xchain484_n8_β:
 jmp xchain484_n7_α
# IR_MOVE_LABEL
 xchain484_n9_α:
 lea rax, [rip + xchain484_n7_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain484_n10_α:
 jmp qword ptr [rbp + 32]
 xchain484_n10_β:
 jmp main_ω
main_β:
jmp xchain484_n10_α
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
