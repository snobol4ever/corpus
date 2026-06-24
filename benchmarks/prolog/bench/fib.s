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
 mov esi, 2
 call rt_pl_gz_init@PLT
 jmp gzq0_g0_α
gzq0_g0_α:
bb2_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 16]
 mov esi, 0
 mov rdx, 20
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzq0_ω
 jmp gzq0_g1_α
gzq0_g1_α:
bb3_α:
# IR_CELL_CALL
 lea rdi, [r12 + 24]
 mov esi, 14
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 8]
 call gzp1_α
.Lx6_0:
 test eax, eax
 jne gzq0_g2_α
 jmp gzq0_ω
 gzq0_g1_β:
 mov rdi, qword ptr [r12 + 24]
 call gzp1_β
 jmp .Lx6_0
gzq0_g2_α:
bb4_α:
# IR_DET_WRITE
 mov rdi, qword ptr [r12 + 8]
 call rt_pl_write_cell@PLT
 jmp gzq0_g3_α
gzq0_g3_α:
bb5_α:
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
 mov qword ptr [r12 + 8], rsi
 mov qword ptr [r12 + 16], rdx
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 lea rdi, [r12 + 24]
 mov esi, 10
 call rt_pl_cells_init@PLT
 jmp gzp11_g0_α
gzp11_g0_α:
bb8_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp11_c0_adv
 jmp gzp11_g1_α
gzp11_g1_α:
bb9_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 16]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp11_c0_adv
 jmp gzp11_g2_α
gzp11_g2_α:
bb10_α:
# IR_CELL_CUT
 jmp gzp11_γ
 gzp11_g2_β:
 jmp gzp11_ω
gzp11_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp11_g3_α
gzp11_g3_α:
bb12_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp11_c1_adv
 jmp gzp11_g4_α
gzp11_g4_α:
bb13_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 16]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp11_c1_adv
 jmp gzp11_g5_α
gzp11_g5_α:
bb14_α:
# IR_CELL_CUT
 jmp gzp11_γ
 gzp11_g5_β:
 jmp gzp11_ω
gzp11_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp11_g6_α
gzp11_g6_α:
bb16_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx28_0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, 0
 xor ecx, ecx
 mov r8, 1
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp11_ω
 jmp gzp11_g7_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string ">"
gzp11_g7_α:
bb17_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 24]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [rip + .Lx30_0]
 mov rcx, 1
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp11_ω
 jmp gzp11_g8_α
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "-"
gzp11_g8_α:
bb18_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [rip + .Lx32_0]
 mov rcx, 2
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp11_ω
 jmp gzp11_g9_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "-"
gzp11_g9_α:
bb19_α:
# IR_CELL_CALL
 lea rdi, [r12 + 104]
 mov esi, 14
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 40]
 call gzp1_α
.Lx34_0:
 test eax, eax
 jne gzp11_g10_α
 jmp gzp11_ω
 gzp11_g9_β:
 mov rdi, qword ptr [r12 + 104]
 call gzp1_β
 jmp .Lx34_0
gzp11_g10_α:
bb20_α:
# IR_CELL_CALL
 lea rdi, [r12 + 112]
 mov esi, 14
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 48]
 call gzp1_α
.Lx36_0:
 test eax, eax
 jne gzp11_g11_α
 jmp gzp11_g9_β
 gzp11_g10_β:
 mov rdi, qword ptr [r12 + 112]
 call gzp1_β
 jmp .Lx36_0
gzp11_g11_α:
bb21_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [rip + .Lx38_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp11_g10_β
 jmp gzp11_γ
 gzp11_g11_β:
 jmp gzp11_g10_β
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "+"
# IR_CALLEE_FRAME
 gzp11_γ:
 mov eax, 1
 pop r12
 ret
 gzp11_ω:
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
 je gzp11_g2_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp11_g5_β
 jmp gzp11_g11_β
