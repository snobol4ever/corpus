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
 mov rdx, 18
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
 mov rdx, 12
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
 mov rdx, 6
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzq0_ω
 jmp gzq0_g3_α
gzq0_g3_α:
bb5_α:
# IR_CELL_CALL
 lea rdi, [r12 + 72]
 mov esi, 20
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
 mov dword ptr [r12 + 4], 1
 lea rdi, [r12 + 72]
 mov esi, 12
 call rt_pl_cells_init@PLT
 jmp gzp15_g0_α
gzp15_g0_α:
bb10_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx18_0]
 lea rsi, [r12 + 8]
 mov rdx, 0
 lea rcx, [r12 + 24]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp15_c0_adv
 jmp gzp15_g1_α
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "=<"
gzp15_g1_α:
bb11_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 lea rsi, [r12 + 56]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp15_c0_adv
 jmp gzp15_γ
 gzp15_g1_β:
 jmp gzp15_c0_adv
gzp15_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp15_g2_α
gzp15_g2_α:
bb13_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx23_0]
 lea rsi, [r12 + 8]
 mov rdx, 0
 lea rcx, [r12 + 24]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp15_ω
 jmp gzp15_g3_α
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string ">"
gzp15_g3_α:
bb14_α:
# IR_DET_IS
 lea rdi, [r12 + 72]
 lea rsi, [r12 + 8]
 mov rdx, qword ptr [rip + .Lx25_0]
 mov rcx, 1
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp15_ω
 jmp gzp15_g4_α
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "-"
gzp15_g4_α:
bb15_α:
# IR_CELL_CALL
 lea rdi, [r12 + 264]
 mov esi, 20
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 72]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 40]
 lea r8, [r12 + 88]
 call gzp1_α
.Lx27_0:
 test eax, eax
 jne gzp15_g5_α
 jmp gzp15_ω
 gzp15_g4_β:
 mov rdi, qword ptr [r12 + 264]
 call gzp1_β
 jmp .Lx27_0
gzp15_g5_α:
bb16_α:
# IR_DET_IS
 lea rdi, [r12 + 104]
 lea rsi, [r12 + 24]
 mov rdx, qword ptr [rip + .Lx29_0]
 mov rcx, 1
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp15_g4_β
 jmp gzp15_g6_α
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "-"
gzp15_g6_α:
bb17_α:
# IR_CELL_CALL
 lea rdi, [r12 + 280]
 mov esi, 20
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 104]
 lea rdx, [r12 + 40]
 lea rcx, [r12 + 8]
 lea r8, [r12 + 120]
 call gzp1_α
.Lx31_0:
 test eax, eax
 jne gzp15_g7_α
 jmp gzp15_g4_β
 gzp15_g6_β:
 mov rdi, qword ptr [r12 + 280]
 call gzp1_β
 jmp .Lx31_0
gzp15_g7_α:
bb18_α:
# IR_DET_IS
 lea rdi, [r12 + 136]
 lea rsi, [r12 + 40]
 mov rdx, qword ptr [rip + .Lx33_0]
 mov rcx, 1
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp15_g6_β
 jmp gzp15_g8_α
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "-"
gzp15_g8_α:
bb19_α:
# IR_CELL_CALL
 lea rdi, [r12 + 296]
 mov esi, 20
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 136]
 lea rdx, [r12 + 8]
 lea rcx, [r12 + 24]
 lea r8, [r12 + 152]
 call gzp1_α
.Lx35_0:
 test eax, eax
 jne gzp15_g9_α
 jmp gzp15_g6_β
 gzp15_g8_β:
 mov rdi, qword ptr [r12 + 296]
 call gzp1_β
 jmp .Lx35_0
gzp15_g9_α:
bb20_α:
# IR_CELL_CALL
 lea rdi, [r12 + 312]
 mov esi, 20
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 88]
 lea rdx, [r12 + 120]
 lea rcx, [r12 + 152]
 lea r8, [r12 + 56]
 call gzp1_α
.Lx37_0:
 test eax, eax
 jne gzp15_γ
 jmp gzp15_g8_β
 gzp15_g9_β:
 mov rdi, qword ptr [r12 + 312]
 call gzp1_β
 jmp .Lx37_0
# IR_CALLEE_FRAME
 gzp15_γ:
 mov eax, 1
 pop r12
 ret
 gzp15_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp1_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp15_g1_β
 jmp gzp15_g9_β
