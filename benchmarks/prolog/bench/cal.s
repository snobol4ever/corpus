  .intel_syntax noprefix
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  pop rbp
  ret
main_α:
# IR_QUERY_FRAME
bb1_α:
 push r12
 mov r12, rdi
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov rdi, r12
 mov esi, 4
 call rt_pl_gz_init@PLT
 jmp gzq0_g0_α
gzq0_g0_α:
bb2_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 1993
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzq0_ω
 jmp gzq0_g1_α
gzq0_g1_α:
bb3_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 4
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzq0_ω
 jmp gzq0_g2_α
gzq0_g2_α:
bb4_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 56]
 mov esi, 0
 mov rdx, 9
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzq0_ω
 jmp gzq0_g3_α
gzq0_g3_α:
bb5_α:
# IR_CELL_CALL
 lea rdi, [r12 + 72]
 mov esi, 8
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 24]
 lea rdx, [r12 + 40]
 lea rcx, [r12 + 56]
 lea r8, [r12 + 8]
 call gzp1_α
.Lx10_0:
 test eax, eax
 jne gzq0_g4_α
 jmp gzq0_ω
 gzq0_g3_β:
 mov rdi, qword ptr [r12 + 72]
 call gzp1_β
 jmp .Lx10_0
gzq0_g4_α:
bb6_α:
# IR_DET_WRITE
 lea rdi, [r12 + 8]
 call rt_pl_write_cell@PLT
 jmp gzq0_g5_α
gzq0_g5_α:
bb7_α:
# IR_DET_NL
 mov edi, 10
 call putchar@PLT
 jmp gzq0_γ
# IR_QUERY_FRAME
 gzq0_γ:
 mov eax, 1
 pop r12
 ret
 gzq0_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
gzp1_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov r11, qword ptr [rsi + 0]
 mov qword ptr [r12 + 8], r11
 mov r11, qword ptr [rsi + 8]
 mov qword ptr [r12 + 16], r11
 mov r11, qword ptr [rdx + 0]
 mov qword ptr [r12 + 24], r11
 mov r11, qword ptr [rdx + 8]
 mov qword ptr [r12 + 32], r11
 mov r11, qword ptr [rcx + 0]
 mov qword ptr [r12 + 40], r11
 mov r11, qword ptr [rcx + 8]
 mov qword ptr [r12 + 48], r11
 mov r11, qword ptr [r8 + 0]
 mov qword ptr [r12 + 56], r11
 mov r11, qword ptr [r8 + 8]
 mov qword ptr [r12 + 64], r11
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 lea rdi, [r12 + 72]
 mov esi, 2
 call rt_pl_cells_init@PLT
 jmp gzp17_g0_α
gzp17_g0_α:
bb10_α:
# IR_CELL_CALL
 lea rdi, [r12 + 104]
 mov esi, 3
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 24]
 lea rdx, [r12 + 72]
 lea rcx, [r12 + 88]
 call gzp15_α
.Lx20_0:
 test eax, eax
 jne gzp17_g1_α
 jmp gzp17_ω
 gzp17_g0_β:
 mov rdi, qword ptr [r12 + 104]
 call gzp15_β
 jmp .Lx20_0
gzp17_g1_α:
bb11_α:
# IR_CELL_CALL
 lea rdi, [r12 + 120]
 mov esi, 33
 call rt_enter@PLT
 mov rdi, rax
 mov r11, qword ptr [r12 + 56]
 mov qword ptr [rdi + 72], r11
 mov r11, qword ptr [r12 + 64]
 mov qword ptr [rdi + 80], r11
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 40]
 lea rcx, [r12 + 72]
 lea r8, [r12 + 88]
 call gzp16_α
.Lx22_0:
 test eax, eax
 jne gzp17_γ
 jmp gzp17_g0_β
 gzp17_g1_β:
 mov rdi, qword ptr [r12 + 120]
 call gzp16_β
 jmp .Lx22_0
# IR_CALLEE_FRAME
 gzp17_γ:
 mov eax, 1
 pop r12
 ret
 gzp17_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp1_β:
 push r12
 mov r12, rdi
 jmp gzp17_g1_β
gzp15_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov r11, qword ptr [rsi + 0]
 mov qword ptr [r12 + 8], r11
 mov r11, qword ptr [rsi + 8]
 mov qword ptr [r12 + 16], r11
 mov r11, qword ptr [rdx + 0]
 mov qword ptr [r12 + 24], r11
 mov r11, qword ptr [rdx + 8]
 mov qword ptr [r12 + 32], r11
 mov r11, qword ptr [rcx + 0]
 mov qword ptr [r12 + 40], r11
 mov r11, qword ptr [rcx + 8]
 mov qword ptr [r12 + 48], r11
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 jmp gzp24_g0_α
gzp24_g0_α:
bb14_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c0_adv
 jmp gzp24_g1_α
gzp24_g1_α:
bb15_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 6
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c0_adv
 jmp gzp24_g2_α
gzp24_g2_α:
bb16_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c0_adv
 jmp gzp24_γ
 gzp24_g2_β:
 jmp gzp24_c0_adv
gzp24_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g3_α
gzp24_g3_α:
bb18_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c1_adv
 jmp gzp24_g4_α
gzp24_g4_α:
bb19_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c1_adv
 jmp gzp24_g5_α
gzp24_g5_α:
bb20_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c1_adv
 jmp gzp24_γ
 gzp24_g5_β:
 jmp gzp24_c1_adv
gzp24_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g6_α
gzp24_g6_α:
bb22_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 3
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c2_adv
 jmp gzp24_g7_α
gzp24_g7_α:
bb23_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c2_adv
 jmp gzp24_g8_α
gzp24_g8_α:
bb24_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c2_adv
 jmp gzp24_γ
 gzp24_g8_β:
 jmp gzp24_c2_adv
gzp24_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g9_α
gzp24_g9_α:
bb26_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 4
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c3_adv
 jmp gzp24_g10_α
gzp24_g10_α:
bb27_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 5
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c3_adv
 jmp gzp24_g11_α
gzp24_g11_α:
bb28_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c3_adv
 jmp gzp24_γ
 gzp24_g11_β:
 jmp gzp24_c3_adv
gzp24_c3_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 5
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g12_α
gzp24_g12_α:
bb30_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 5
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c4_adv
 jmp gzp24_g13_α
gzp24_g13_α:
bb31_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c4_adv
 jmp gzp24_g14_α
gzp24_g14_α:
bb32_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c4_adv
 jmp gzp24_γ
 gzp24_g14_β:
 jmp gzp24_c4_adv
gzp24_c4_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 6
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g15_α
gzp24_g15_α:
bb34_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 6
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c5_adv
 jmp gzp24_g16_α
gzp24_g16_α:
bb35_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 3
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c5_adv
 jmp gzp24_g17_α
gzp24_g17_α:
bb36_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c5_adv
 jmp gzp24_γ
 gzp24_g17_β:
 jmp gzp24_c5_adv
gzp24_c5_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 7
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g18_α
gzp24_g18_α:
bb38_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 7
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c6_adv
 jmp gzp24_g19_α
gzp24_g19_α:
bb39_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 5
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c6_adv
 jmp gzp24_g20_α
gzp24_g20_α:
bb40_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c6_adv
 jmp gzp24_γ
 gzp24_g20_β:
 jmp gzp24_c6_adv
gzp24_c6_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 8
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g21_α
gzp24_g21_α:
bb42_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 8
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c7_adv
 jmp gzp24_g22_α
gzp24_g22_α:
bb43_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c7_adv
 jmp gzp24_g23_α
gzp24_g23_α:
bb44_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c7_adv
 jmp gzp24_γ
 gzp24_g23_β:
 jmp gzp24_c7_adv
gzp24_c7_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 9
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g24_α
gzp24_g24_α:
bb46_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 9
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c8_adv
 jmp gzp24_g25_α
gzp24_g25_α:
bb47_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 4
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c8_adv
 jmp gzp24_g26_α
gzp24_g26_α:
bb48_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c8_adv
 jmp gzp24_γ
 gzp24_g26_β:
 jmp gzp24_c8_adv
gzp24_c8_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 10
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g27_α
gzp24_g27_α:
bb50_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 10
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c9_adv
 jmp gzp24_g28_α
gzp24_g28_α:
bb51_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 6
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c9_adv
 jmp gzp24_g29_α
gzp24_g29_α:
bb52_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c9_adv
 jmp gzp24_γ
 gzp24_g29_β:
 jmp gzp24_c9_adv
gzp24_c9_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 11
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g30_α
gzp24_g30_α:
bb54_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 11
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c10_adv
 jmp gzp24_g31_α
gzp24_g31_α:
bb55_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c10_adv
 jmp gzp24_g32_α
gzp24_g32_α:
bb56_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c10_adv
 jmp gzp24_γ
 gzp24_g32_β:
 jmp gzp24_c10_adv
gzp24_c10_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 12
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g33_α
gzp24_g33_α:
bb58_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 12
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c11_adv
 jmp gzp24_g34_α
gzp24_g34_α:
bb59_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 4
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c11_adv
 jmp gzp24_g35_α
gzp24_g35_α:
bb60_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c11_adv
 jmp gzp24_γ
 gzp24_g35_β:
 jmp gzp24_c11_adv
gzp24_c11_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 13
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g36_α
gzp24_g36_α:
bb62_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx111_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c12_adv
 jmp gzp24_g37_α
.Lx111_0:
 .quad .Lx111_0_s
.Lx111_0_s:
 .string "jan"
gzp24_g37_α:
bb63_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 6
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c12_adv
 jmp gzp24_g38_α
gzp24_g38_α:
bb64_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c12_adv
 jmp gzp24_γ
 gzp24_g38_β:
 jmp gzp24_c12_adv
gzp24_c12_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 14
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g39_α
gzp24_g39_α:
bb66_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx118_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c13_adv
 jmp gzp24_g40_α
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "feb"
gzp24_g40_α:
bb67_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c13_adv
 jmp gzp24_g41_α
gzp24_g41_α:
bb68_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c13_adv
 jmp gzp24_γ
 gzp24_g41_β:
 jmp gzp24_c13_adv
gzp24_c13_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 15
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g42_α
gzp24_g42_α:
bb70_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx125_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c14_adv
 jmp gzp24_g43_α
.Lx125_0:
 .quad .Lx125_0_s
.Lx125_0_s:
 .string "mar"
gzp24_g43_α:
bb71_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c14_adv
 jmp gzp24_g44_α
gzp24_g44_α:
bb72_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c14_adv
 jmp gzp24_γ
 gzp24_g44_β:
 jmp gzp24_c14_adv
gzp24_c14_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 16
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g45_α
gzp24_g45_α:
bb74_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx132_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c15_adv
 jmp gzp24_g46_α
.Lx132_0:
 .quad .Lx132_0_s
.Lx132_0_s:
 .string "apr"
gzp24_g46_α:
bb75_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 5
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c15_adv
 jmp gzp24_g47_α
gzp24_g47_α:
bb76_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c15_adv
 jmp gzp24_γ
 gzp24_g47_β:
 jmp gzp24_c15_adv
gzp24_c15_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 17
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g48_α
gzp24_g48_α:
bb78_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx139_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c16_adv
 jmp gzp24_g49_α
.Lx139_0:
 .quad .Lx139_0_s
.Lx139_0_s:
 .string "may"
gzp24_g49_α:
bb79_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c16_adv
 jmp gzp24_g50_α
gzp24_g50_α:
bb80_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c16_adv
 jmp gzp24_γ
 gzp24_g50_β:
 jmp gzp24_c16_adv
gzp24_c16_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 18
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g51_α
gzp24_g51_α:
bb82_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx146_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c17_adv
 jmp gzp24_g52_α
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string "jun"
gzp24_g52_α:
bb83_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 3
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c17_adv
 jmp gzp24_g53_α
gzp24_g53_α:
bb84_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c17_adv
 jmp gzp24_γ
 gzp24_g53_β:
 jmp gzp24_c17_adv
gzp24_c17_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 19
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g54_α
gzp24_g54_α:
bb86_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx153_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c18_adv
 jmp gzp24_g55_α
.Lx153_0:
 .quad .Lx153_0_s
.Lx153_0_s:
 .string "jul"
gzp24_g55_α:
bb87_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 5
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c18_adv
 jmp gzp24_g56_α
gzp24_g56_α:
bb88_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c18_adv
 jmp gzp24_γ
 gzp24_g56_β:
 jmp gzp24_c18_adv
gzp24_c18_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 20
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g57_α
gzp24_g57_α:
bb90_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx160_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c19_adv
 jmp gzp24_g58_α
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "aug"
gzp24_g58_α:
bb91_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c19_adv
 jmp gzp24_g59_α
gzp24_g59_α:
bb92_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c19_adv
 jmp gzp24_γ
 gzp24_g59_β:
 jmp gzp24_c19_adv
gzp24_c19_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 21
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g60_α
gzp24_g60_α:
bb94_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx167_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c20_adv
 jmp gzp24_g61_α
.Lx167_0:
 .quad .Lx167_0_s
.Lx167_0_s:
 .string "sep"
gzp24_g61_α:
bb95_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 4
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c20_adv
 jmp gzp24_g62_α
gzp24_g62_α:
bb96_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c20_adv
 jmp gzp24_γ
 gzp24_g62_β:
 jmp gzp24_c20_adv
gzp24_c20_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 22
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g63_α
gzp24_g63_α:
bb98_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx174_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c21_adv
 jmp gzp24_g64_α
.Lx174_0:
 .quad .Lx174_0_s
.Lx174_0_s:
 .string "oct"
gzp24_g64_α:
bb99_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 6
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c21_adv
 jmp gzp24_g65_α
gzp24_g65_α:
bb100_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c21_adv
 jmp gzp24_γ
 gzp24_g65_β:
 jmp gzp24_c21_adv
gzp24_c21_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 23
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g66_α
gzp24_g66_α:
bb102_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx181_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c22_adv
 jmp gzp24_g67_α
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "nov"
gzp24_g67_α:
bb103_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c22_adv
 jmp gzp24_g68_α
gzp24_g68_α:
bb104_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c22_adv
 jmp gzp24_γ
 gzp24_g68_β:
 jmp gzp24_c22_adv
gzp24_c22_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 24
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g69_α
gzp24_g69_α:
bb106_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx188_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c23_adv
 jmp gzp24_g70_α
.Lx188_0:
 .quad .Lx188_0_s
.Lx188_0_s:
 .string "dec"
gzp24_g70_α:
bb107_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 4
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c23_adv
 jmp gzp24_g71_α
gzp24_g71_α:
bb108_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c23_adv
 jmp gzp24_γ
 gzp24_g71_β:
 jmp gzp24_c23_adv
gzp24_c23_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 25
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g72_α
gzp24_g72_α:
bb110_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx195_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c24_adv
 jmp gzp24_g73_α
.Lx195_0:
 .quad .Lx195_0_s
.Lx195_0_s:
 .string "January"
gzp24_g73_α:
bb111_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 6
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c24_adv
 jmp gzp24_g74_α
gzp24_g74_α:
bb112_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c24_adv
 jmp gzp24_γ
 gzp24_g74_β:
 jmp gzp24_c24_adv
gzp24_c24_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 26
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g75_α
gzp24_g75_α:
bb114_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx202_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c25_adv
 jmp gzp24_g76_α
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "February"
gzp24_g76_α:
bb115_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c25_adv
 jmp gzp24_g77_α
gzp24_g77_α:
bb116_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c25_adv
 jmp gzp24_γ
 gzp24_g77_β:
 jmp gzp24_c25_adv
gzp24_c25_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 27
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g78_α
gzp24_g78_α:
bb118_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx209_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c26_adv
 jmp gzp24_g79_α
.Lx209_0:
 .quad .Lx209_0_s
.Lx209_0_s:
 .string "March"
gzp24_g79_α:
bb119_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c26_adv
 jmp gzp24_g80_α
gzp24_g80_α:
bb120_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c26_adv
 jmp gzp24_γ
 gzp24_g80_β:
 jmp gzp24_c26_adv
gzp24_c26_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 28
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g81_α
gzp24_g81_α:
bb122_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx216_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c27_adv
 jmp gzp24_g82_α
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string "April"
gzp24_g82_α:
bb123_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 5
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c27_adv
 jmp gzp24_g83_α
gzp24_g83_α:
bb124_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c27_adv
 jmp gzp24_γ
 gzp24_g83_β:
 jmp gzp24_c27_adv
gzp24_c27_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 29
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g84_α
gzp24_g84_α:
bb126_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx223_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c28_adv
 jmp gzp24_g85_α
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "May"
gzp24_g85_α:
bb127_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c28_adv
 jmp gzp24_g86_α
gzp24_g86_α:
bb128_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c28_adv
 jmp gzp24_γ
 gzp24_g86_β:
 jmp gzp24_c28_adv
gzp24_c28_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 30
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g87_α
gzp24_g87_α:
bb130_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx230_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c29_adv
 jmp gzp24_g88_α
.Lx230_0:
 .quad .Lx230_0_s
.Lx230_0_s:
 .string "June"
gzp24_g88_α:
bb131_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 3
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c29_adv
 jmp gzp24_g89_α
gzp24_g89_α:
bb132_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c29_adv
 jmp gzp24_γ
 gzp24_g89_β:
 jmp gzp24_c29_adv
gzp24_c29_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 31
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g90_α
gzp24_g90_α:
bb134_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx237_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c30_adv
 jmp gzp24_g91_α
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "July"
gzp24_g91_α:
bb135_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 5
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c30_adv
 jmp gzp24_g92_α
gzp24_g92_α:
bb136_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c30_adv
 jmp gzp24_γ
 gzp24_g92_β:
 jmp gzp24_c30_adv
gzp24_c30_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 32
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g93_α
gzp24_g93_α:
bb138_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx244_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c31_adv
 jmp gzp24_g94_α
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "August"
gzp24_g94_α:
bb139_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c31_adv
 jmp gzp24_g95_α
gzp24_g95_α:
bb140_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c31_adv
 jmp gzp24_γ
 gzp24_g95_β:
 jmp gzp24_c31_adv
gzp24_c31_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 33
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g96_α
gzp24_g96_α:
bb142_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx251_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c32_adv
 jmp gzp24_g97_α
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "September"
gzp24_g97_α:
bb143_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 4
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c32_adv
 jmp gzp24_g98_α
gzp24_g98_α:
bb144_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c32_adv
 jmp gzp24_γ
 gzp24_g98_β:
 jmp gzp24_c32_adv
gzp24_c32_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 34
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g99_α
gzp24_g99_α:
bb146_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx258_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c33_adv
 jmp gzp24_g100_α
.Lx258_0:
 .quad .Lx258_0_s
.Lx258_0_s:
 .string "October"
gzp24_g100_α:
bb147_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 6
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c33_adv
 jmp gzp24_g101_α
gzp24_g101_α:
bb148_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c33_adv
 jmp gzp24_γ
 gzp24_g101_β:
 jmp gzp24_c33_adv
gzp24_c33_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 35
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g102_α
gzp24_g102_α:
bb150_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx265_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c34_adv
 jmp gzp24_g103_α
.Lx265_0:
 .quad .Lx265_0_s
.Lx265_0_s:
 .string "November"
gzp24_g103_α:
bb151_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c34_adv
 jmp gzp24_g104_α
gzp24_g104_α:
bb152_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_c34_adv
 jmp gzp24_γ
 gzp24_g104_β:
 jmp gzp24_c34_adv
gzp24_c34_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 36
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g105_α
gzp24_g105_α:
bb154_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx272_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_ω
 jmp gzp24_g106_α
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
 .string "December"
gzp24_g106_α:
bb155_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 4
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_ω
 jmp gzp24_g107_α
gzp24_g107_α:
bb156_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_ω
 jmp gzp24_γ
 gzp24_g107_β:
 jmp gzp24_ω
# IR_CALLEE_FRAME
 gzp24_γ:
 mov eax, 1
 pop r12
 ret
 gzp24_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp15_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp24_g2_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp24_g5_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp24_g8_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 4
 je gzp24_g11_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 5
 je gzp24_g14_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 6
 je gzp24_g17_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 7
 je gzp24_g20_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 8
 je gzp24_g23_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 9
 je gzp24_g26_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 10
 je gzp24_g29_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 11
 je gzp24_g32_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 12
 je gzp24_g35_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 13
 je gzp24_g38_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 14
 je gzp24_g41_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 15
 je gzp24_g44_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 16
 je gzp24_g47_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 17
 je gzp24_g50_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 18
 je gzp24_g53_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 19
 je gzp24_g56_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 20
 je gzp24_g59_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 21
 je gzp24_g62_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 22
 je gzp24_g65_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 23
 je gzp24_g68_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 24
 je gzp24_g71_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 25
 je gzp24_g74_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 26
 je gzp24_g77_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 27
 je gzp24_g80_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 28
 je gzp24_g83_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 29
 je gzp24_g86_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 30
 je gzp24_g89_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 31
 je gzp24_g92_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 32
 je gzp24_g95_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 33
 je gzp24_g98_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 34
 je gzp24_g101_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 35
 je gzp24_g104_β
 jmp gzp24_g107_β
gzp16_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov r11, qword ptr [rsi + 0]
 mov qword ptr [r12 + 8], r11
 mov r11, qword ptr [rsi + 8]
 mov qword ptr [r12 + 16], r11
 mov r11, qword ptr [rdx + 0]
 mov qword ptr [r12 + 24], r11
 mov r11, qword ptr [rdx + 8]
 mov qword ptr [r12 + 32], r11
 mov r11, qword ptr [rcx + 0]
 mov qword ptr [r12 + 40], r11
 mov r11, qword ptr [rcx + 8]
 mov qword ptr [r12 + 48], r11
 mov r11, qword ptr [r8 + 0]
 mov qword ptr [r12 + 56], r11
 mov r11, qword ptr [r8 + 8]
 mov qword ptr [r12 + 64], r11
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 lea rdi, [r12 + 88]
 mov esi, 27
 call rt_pl_cells_init@PLT
 jmp gzp315_g0_α
gzp315_g0_α:
bb195_α:
# IR_DET_IS
 lea rdi, [r12 + 88]
 lea rsi, [r12 + 8]
 mov rdx, qword ptr [rip + .Lx318_0]
 mov rcx, 100
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp315_ω
 jmp gzp315_g1_α
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "//"
gzp315_g1_α:
bb196_α:
# IR_DET_IS
 lea rdi, [r12 + 136]
 lea rsi, [r12 + 88]
 mov rdx, qword ptr [rip + .Lx320_0]
 mov rcx, 100
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp315_ω
 jmp gzp315_g2_α
.Lx320_0:
 .quad .Lx320_0_s
.Lx320_0_s:
 .string "*"
gzp315_g2_α:
bb197_α:
# IR_DET_IS
 lea rdi, [r12 + 104]
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 136]
 mov rcx, qword ptr [rip + .Lx322_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp315_ω
 jmp gzp315_g3_α
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "-"
gzp315_g3_α:
bb198_α:
# IR_DET_IS
 lea rdi, [r12 + 152]
 lea rsi, [r12 + 88]
 mov rdx, qword ptr [rip + .Lx324_0]
 mov rcx, 5
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp315_ω
 jmp gzp315_g4_α
.Lx324_0:
 .quad .Lx324_0_s
.Lx324_0_s:
 .string "*"
gzp315_g4_α:
bb199_α:
# IR_DET_IS
 lea rdi, [r12 + 168]
 lea rsi, [r12 + 88]
 mov rdx, qword ptr [rip + .Lx326_0]
 mov rcx, 4
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp315_ω
 jmp gzp315_g5_α
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
 .string "//"
gzp315_g5_α:
bb200_α:
# IR_DET_IS
 lea rdi, [r12 + 184]
 lea rsi, [r12 + 152]
 lea rdx, [r12 + 168]
 mov rcx, qword ptr [rip + .Lx328_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp315_ω
 jmp gzp315_g6_α
.Lx328_0:
 .quad .Lx328_0_s
.Lx328_0_s:
 .string "+"
gzp315_g6_α:
bb201_α:
# IR_DET_IS
 lea rdi, [r12 + 200]
 lea rsi, [r12 + 184]
 lea rdx, [r12 + 104]
 mov rcx, qword ptr [rip + .Lx330_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp315_ω
 jmp gzp315_g7_α
.Lx330_0:
 .quad .Lx330_0_s
.Lx330_0_s:
 .string "+"
gzp315_g7_α:
bb202_α:
# IR_DET_IS
 lea rdi, [r12 + 216]
 lea rsi, [r12 + 104]
 mov rdx, qword ptr [rip + .Lx332_0]
 mov rcx, 4
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp315_ω
 jmp gzp315_g8_α
.Lx332_0:
 .quad .Lx332_0_s
.Lx332_0_s:
 .string "//"
gzp315_g8_α:
bb203_α:
# IR_DET_IS
 lea rdi, [r12 + 232]
 lea rsi, [r12 + 200]
 lea rdx, [r12 + 216]
 mov rcx, qword ptr [rip + .Lx334_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp315_ω
 jmp gzp315_g9_α
.Lx334_0:
 .quad .Lx334_0_s
.Lx334_0_s:
 .string "+"
gzp315_g9_α:
bb204_α:
# IR_DET_IS
 lea rdi, [r12 + 248]
 lea rsi, [r12 + 232]
 lea rdx, [r12 + 24]
 mov rcx, qword ptr [rip + .Lx336_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp315_ω
 jmp gzp315_g10_α
.Lx336_0:
 .quad .Lx336_0_s
.Lx336_0_s:
 .string "+"
gzp315_g10_α:
bb205_α:
# IR_DET_IS
 lea rdi, [r12 + 264]
 lea rsi, [r12 + 248]
 lea rdx, [r12 + 40]
 mov rcx, qword ptr [rip + .Lx338_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp315_ω
 jmp gzp315_g11_α
.Lx338_0:
 .quad .Lx338_0_s
.Lx338_0_s:
 .string "+"
gzp315_g11_α:
bb206_α:
# IR_DET_IS
 lea rdi, [r12 + 120]
 lea rsi, [r12 + 264]
 mov rdx, qword ptr [rip + .Lx340_0]
 mov rcx, 7
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp315_ω
 jmp gzp315_g12_α
.Lx340_0:
 .quad .Lx340_0_s
.Lx340_0_s:
 .string "mod"
gzp315_g12_α:
bb207_α:
# IR_CELL_CALL
 lea rdi, [r12 + 520]
 mov esi, 23
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 120]
 lea rcx, [r12 + 56]
 lea r8, [r12 + 72]
 call gzp314_α
.Lx342_0:
 test eax, eax
 jne gzp315_γ
 jmp gzp315_ω
 gzp315_g12_β:
 mov rdi, qword ptr [r12 + 520]
 call gzp314_β
 jmp .Lx342_0
# IR_CALLEE_FRAME
 gzp315_γ:
 mov eax, 1
 pop r12
 ret
 gzp315_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp16_β:
 push r12
 mov r12, rdi
 jmp gzp315_g12_β
gzp314_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov r11, qword ptr [rsi + 0]
 mov qword ptr [r12 + 8], r11
 mov r11, qword ptr [rsi + 8]
 mov qword ptr [r12 + 16], r11
 mov r11, qword ptr [rdx + 0]
 mov qword ptr [r12 + 24], r11
 mov r11, qword ptr [rdx + 8]
 mov qword ptr [r12 + 32], r11
 mov r11, qword ptr [rcx + 0]
 mov qword ptr [r12 + 40], r11
 mov r11, qword ptr [rcx + 8]
 mov qword ptr [r12 + 48], r11
 mov r11, qword ptr [r8 + 0]
 mov qword ptr [r12 + 56], r11
 mov r11, qword ptr [r8 + 8]
 mov qword ptr [r12 + 64], r11
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 lea rdi, [r12 + 72]
 mov esi, 15
 call rt_pl_cells_init@PLT
 jmp gzp345_g0_α
gzp345_g0_α:
bb210_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 lea rsi, [r12 + 72]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp345_c0_adv
 jmp gzp345_g1_α
gzp345_g1_α:
bb211_α:
# IR_DET_IS
 lea rdi, [r12 + 88]
 lea rsi, [r12 + 8]
 mov rdx, qword ptr [rip + .Lx350_0]
 mov rcx, 4
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp345_c0_adv
 jmp gzp345_g2_α
.Lx350_0:
 .quad .Lx350_0_s
.Lx350_0_s:
 .string "mod"
gzp345_g2_α:
bb212_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx352_0]
 xor esi, esi
 mov rdx, 0
 lea rcx, [r12 + 88]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp345_c0_adv
 jmp gzp345_g3_α
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "=\\="
gzp345_g3_α:
bb213_α:
# IR_CELL_CUT
 jmp gzp345_g4_α
 gzp345_g3_β:
 jmp gzp345_ω
gzp345_g4_α:
bb214_α:
# IR_CELL_CALL
 lea rdi, [r12 + 312]
 mov esi, 2
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 24]
 lea rdx, [r12 + 56]
 call gzp344_α
.Lx356_0:
 test eax, eax
 jne gzp345_γ
 jmp gzp345_g3_β
 gzp345_g4_β:
 mov rdi, qword ptr [r12 + 312]
 call gzp344_β
 jmp .Lx356_0
gzp345_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp345_g5_α
gzp345_g5_α:
bb216_α:
# IR_DET_IS
 lea rdi, [r12 + 136]
 lea rsi, [r12 + 8]
 mov rdx, qword ptr [rip + .Lx359_0]
 mov rcx, 100
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp345_c1_adv
 jmp gzp345_g6_α
.Lx359_0:
 .quad .Lx359_0_s
.Lx359_0_s:
 .string "mod"
gzp345_g6_α:
bb217_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx361_0]
 xor esi, esi
 mov rdx, 0
 lea rcx, [r12 + 136]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp345_c1_adv
 jmp gzp345_g7_α
.Lx361_0:
 .quad .Lx361_0_s
.Lx361_0_s:
 .string "=\\="
gzp345_g7_α:
bb218_α:
# IR_CELL_CUT
 jmp gzp345_g8_α
 gzp345_g7_β:
 jmp gzp345_ω
gzp345_g8_α:
bb219_α:
# IR_DET_IS
 lea rdi, [r12 + 120]
 lea rsi, [r12 + 24]
 lea rdx, [r12 + 40]
 mov rcx, qword ptr [rip + .Lx365_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp345_g7_β
 jmp gzp345_g9_α
.Lx365_0:
 .quad .Lx365_0_s
.Lx365_0_s:
 .string "-"
gzp345_g9_α:
bb220_α:
# IR_CELL_CALL
 lea rdi, [r12 + 328]
 mov esi, 2
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 120]
 lea rdx, [r12 + 56]
 call gzp344_α
.Lx367_0:
 test eax, eax
 jne gzp345_γ
 jmp gzp345_g7_β
 gzp345_g9_β:
 mov rdi, qword ptr [r12 + 328]
 call gzp344_β
 jmp .Lx367_0
gzp345_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp345_g10_α
gzp345_g10_α:
bb222_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 lea rsi, [r12 + 200]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp345_c2_adv
 jmp gzp345_g11_α
gzp345_g11_α:
bb223_α:
# IR_DET_IS
 lea rdi, [r12 + 216]
 lea rsi, [r12 + 8]
 mov rdx, qword ptr [rip + .Lx372_0]
 mov rcx, 400
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp345_c2_adv
 jmp gzp345_g12_α
.Lx372_0:
 .quad .Lx372_0_s
.Lx372_0_s:
 .string "mod"
gzp345_g12_α:
bb224_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx374_0]
 xor esi, esi
 mov rdx, 0
 lea rcx, [r12 + 216]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp345_c2_adv
 jmp gzp345_g13_α
.Lx374_0:
 .quad .Lx374_0_s
.Lx374_0_s:
 .string "=\\="
gzp345_g13_α:
bb225_α:
# IR_CELL_CUT
 jmp gzp345_g14_α
 gzp345_g13_β:
 jmp gzp345_ω
gzp345_g14_α:
bb226_α:
# IR_CELL_CALL
 lea rdi, [r12 + 344]
 mov esi, 2
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 24]
 lea rdx, [r12 + 56]
 call gzp344_α
.Lx378_0:
 test eax, eax
 jne gzp345_γ
 jmp gzp345_g13_β
 gzp345_g14_β:
 mov rdi, qword ptr [r12 + 344]
 call gzp344_β
 jmp .Lx378_0
gzp345_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp345_g15_α
gzp345_g15_α:
bb228_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 lea rsi, [r12 + 248]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp345_ω
 jmp gzp345_g16_α
gzp345_g16_α:
bb229_α:
# IR_DET_IS
 lea rdi, [r12 + 264]
 lea rsi, [r12 + 24]
 lea rdx, [r12 + 40]
 mov rcx, qword ptr [rip + .Lx383_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp345_ω
 jmp gzp345_g17_α
.Lx383_0:
 .quad .Lx383_0_s
.Lx383_0_s:
 .string "-"
gzp345_g17_α:
bb230_α:
# IR_CELL_CALL
 lea rdi, [r12 + 360]
 mov esi, 2
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 264]
 lea rdx, [r12 + 56]
 call gzp344_α
.Lx385_0:
 test eax, eax
 jne gzp345_γ
 jmp gzp345_ω
 gzp345_g17_β:
 mov rdi, qword ptr [r12 + 360]
 call gzp344_β
 jmp .Lx385_0
# IR_CALLEE_FRAME
 gzp345_γ:
 mov eax, 1
 pop r12
 ret
 gzp345_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp314_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp345_g4_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp345_g9_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp345_g14_β
 jmp gzp345_g17_β
gzp344_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov r11, qword ptr [rsi + 0]
 mov qword ptr [r12 + 8], r11
 mov r11, qword ptr [rsi + 8]
 mov qword ptr [r12 + 16], r11
 mov r11, qword ptr [rdx + 0]
 mov qword ptr [r12 + 24], r11
 mov r11, qword ptr [rdx + 8]
 mov qword ptr [r12 + 32], r11
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 jmp gzp391_g0_α
gzp391_g0_α:
bb237_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp391_c0_adv
 jmp gzp391_g1_α
gzp391_g1_α:
bb238_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx396_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp391_c0_adv
 jmp gzp391_γ
 gzp391_g1_β:
 jmp gzp391_c0_adv
.Lx396_0:
 .quad .Lx396_0_s
.Lx396_0_s:
 .string "sun"
gzp391_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp391_g2_α
gzp391_g2_α:
bb240_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp391_c1_adv
 jmp gzp391_g3_α
gzp391_g3_α:
bb241_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx401_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp391_c1_adv
 jmp gzp391_γ
 gzp391_g3_β:
 jmp gzp391_c1_adv
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "mon"
gzp391_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp391_g4_α
gzp391_g4_α:
bb243_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp391_c2_adv
 jmp gzp391_g5_α
gzp391_g5_α:
bb244_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx406_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp391_c2_adv
 jmp gzp391_γ
 gzp391_g5_β:
 jmp gzp391_c2_adv
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string "tue"
gzp391_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp391_g6_α
gzp391_g6_α:
bb246_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 3
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp391_c3_adv
 jmp gzp391_g7_α
gzp391_g7_α:
bb247_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx411_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp391_c3_adv
 jmp gzp391_γ
 gzp391_g7_β:
 jmp gzp391_c3_adv
.Lx411_0:
 .quad .Lx411_0_s
.Lx411_0_s:
 .string "wed"
gzp391_c3_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 5
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp391_g8_α
gzp391_g8_α:
bb249_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 4
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp391_c4_adv
 jmp gzp391_g9_α
gzp391_g9_α:
bb250_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx416_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp391_c4_adv
 jmp gzp391_γ
 gzp391_g9_β:
 jmp gzp391_c4_adv
.Lx416_0:
 .quad .Lx416_0_s
.Lx416_0_s:
 .string "thu"
gzp391_c4_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 6
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp391_g10_α
gzp391_g10_α:
bb252_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 5
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp391_c5_adv
 jmp gzp391_g11_α
gzp391_g11_α:
bb253_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx421_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp391_c5_adv
 jmp gzp391_γ
 gzp391_g11_β:
 jmp gzp391_c5_adv
.Lx421_0:
 .quad .Lx421_0_s
.Lx421_0_s:
 .string "fri"
gzp391_c5_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 7
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp391_g12_α
gzp391_g12_α:
bb255_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 0
 mov rdx, 6
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp391_ω
 jmp gzp391_g13_α
gzp391_g13_α:
bb256_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx426_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp391_ω
 jmp gzp391_γ
 gzp391_g13_β:
 jmp gzp391_ω
.Lx426_0:
 .quad .Lx426_0_s
.Lx426_0_s:
 .string "sat"
# IR_CALLEE_FRAME
 gzp391_γ:
 mov eax, 1
 pop r12
 ret
 gzp391_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp344_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp391_g1_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp391_g3_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp391_g5_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 4
 je gzp391_g7_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 5
 je gzp391_g9_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 6
 je gzp391_g11_β
 jmp gzp391_g13_β
.section .rodata
.S0: .string "jan"
.S1: .string "feb"
.S2: .string "mar"
.S3: .string "apr"
.S4: .string "may"
.S5: .string "jun"
.S6: .string "jul"
.S7: .string "aug"
.S8: .string "sep"
.S9: .string "oct"
.S10: .string "nov"
.S11: .string "dec"
.S12: .string "January"
.S13: .string "February"
.S14: .string "March"
.S15: .string "April"
.S16: .string "May"
.S17: .string "June"
.S18: .string "July"
.S19: .string "August"
.S20: .string "September"
.S21: .string "October"
.S22: .string "November"
.S23: .string "December"
.S24: .string "sun"
.S25: .string "mon"
.S26: .string "tue"
.S27: .string "wed"
.S28: .string "thu"
.S29: .string "fri"
.S30: .string "sat"
.text
