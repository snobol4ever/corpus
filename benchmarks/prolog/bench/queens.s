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
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 16
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzq0_ω
 jmp gzq0_g1_α
gzq0_g1_α:
bb3_α:
# IR_CELL_CALL
 lea rdi, [r12 + 40]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 24]
 lea rdx, [r12 + 8]
 call gzp1_α
.Lx6_0:
 test eax, eax
 jne gzq0_g2_α
 jmp gzq0_ω
 gzq0_g1_β:
 mov rdi, qword ptr [r12 + 40]
 call gzp1_β
 jmp .Lx6_0
gzq0_g2_α:
bb4_α:
# IR_DET_WRITE
 lea rdi, [r12 + 8]
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
 lea rdi, [r12 + 40]
 mov esi, 3
 call rt_pl_cells_init@PLT
 jmp gzp13_g0_α
gzp13_g0_α:
bb8_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 56]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp13_ω
 jmp gzp13_g1_α
gzp13_g1_α:
bb9_α:
# IR_CELL_CALL
 lea rdi, [r12 + 88]
 mov esi, 8
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 56]
 lea rdx, [r12 + 8]
 lea rcx, [r12 + 40]
 call gzp11_α
.Lx18_0:
 test eax, eax
 jne gzp13_g2_α
 jmp gzp13_ω
 gzp13_g1_β:
 mov rdi, qword ptr [r12 + 88]
 call gzp11_β
 jmp .Lx18_0
gzp13_g2_α:
bb10_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 72]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx20_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp13_g1_β
 jmp gzp13_g3_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "[]"
gzp13_g3_α:
bb11_α:
# IR_CELL_CALL
 lea rdi, [r12 + 104]
 mov esi, 9
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 40]
 lea rdx, [r12 + 72]
 lea rcx, [r12 + 24]
 call gzp12_α
.Lx22_0:
 test eax, eax
 jne gzp13_γ
 jmp gzp13_g1_β
 gzp13_g3_β:
 mov rdi, qword ptr [r12 + 104]
 call gzp12_β
 jmp .Lx22_0
# IR_CALLEE_FRAME
 gzp13_γ:
 mov eax, 1
 pop r12
 ret
 gzp13_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp1_β:
 push r12
 mov r12, rdi
 jmp gzp13_g3_β
gzp11_α:
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
 lea rdi, [r12 + 56]
 mov esi, 4
 call rt_pl_cells_init@PLT
 jmp gzp24_g0_α
gzp24_g0_α:
bb14_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 lea rsi, [r12 + 8]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp24_c0_adv
 jmp gzp24_g1_α
gzp24_g1_α:
bb15_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 lea rax, [r12 + 8]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S0]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp24_c0_adv
 jmp gzp24_g2_α
gzp24_g2_α:
bb16_α:
# IR_CELL_CUT
 jmp gzp24_γ
 gzp24_g2_β:
 jmp gzp24_ω
gzp24_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp24_g3_α
gzp24_g3_α:
bb18_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 lea rax, [r12 + 8]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 56]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp24_ω
 jmp gzp24_g4_α
gzp24_g4_α:
bb19_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx36_0]
 lea rsi, [r12 + 8]
 mov rdx, 0
 lea rcx, [r12 + 24]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp24_ω
 jmp gzp24_g5_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "<"
gzp24_g5_α:
bb20_α:
# IR_DET_IS
 lea rdi, [r12 + 72]
 lea rsi, [r12 + 8]
 mov rdx, qword ptr [rip + .Lx38_0]
 mov rcx, 1
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp24_ω
 jmp gzp24_g6_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "+"
gzp24_g6_α:
bb21_α:
# IR_CELL_CALL
 lea rdi, [r12 + 120]
 mov esi, 8
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 72]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 56]
 call gzp11_α
.Lx40_0:
 test eax, eax
 jne gzp24_γ
 jmp gzp24_ω
 gzp24_g6_β:
 mov rdi, qword ptr [r12 + 120]
 call gzp11_β
 jmp .Lx40_0
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
 gzp11_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp24_g2_β
 jmp gzp24_g6_β
gzp12_α:
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
 lea rdi, [r12 + 56]
 mov esi, 3
 call rt_pl_cells_init@PLT
 jmp gzp46_g0_α
gzp46_g0_α:
bb26_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx49_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp46_c0_adv
 jmp gzp46_g1_α
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "[]"
gzp46_g1_α:
bb27_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 lea rsi, [r12 + 24]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp46_c0_adv
 jmp gzp46_γ
 gzp46_g1_β:
 jmp gzp46_c0_adv
gzp46_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp46_g2_α
gzp46_g2_α:
bb29_α:
# IR_CELL_CALL
 lea rdi, [r12 + 104]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 56]
 lea rcx, [r12 + 72]
 call gzp44_α
.Lx54_0:
 test eax, eax
 jne gzp46_g3_α
 jmp gzp46_ω
 gzp46_g2_β:
 mov rdi, qword ptr [r12 + 104]
 call gzp44_β
 jmp .Lx54_0
gzp46_g3_α:
bb30_α:
# IR_CELL_CALL
 lea rdi, [r12 + 120]
 mov esi, 4
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 24]
 lea rdx, [r12 + 72]
 call gzp45_α
.Lx56_0:
 test eax, eax
 jne gzp46_g4_α
 jmp gzp46_g2_β
 gzp46_g3_β:
 mov rdi, qword ptr [r12 + 120]
 call gzp45_β
 jmp .Lx56_0
gzp46_g4_α:
bb31_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 88]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 lea rax, [r12 + 72]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 24]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp46_g3_β
 jmp gzp46_g5_α
gzp46_g5_α:
bb32_α:
# IR_CELL_CALL
 lea rdi, [r12 + 136]
 mov esi, 9
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 56]
 lea rdx, [r12 + 88]
 lea rcx, [r12 + 40]
 call gzp12_α
.Lx60_0:
 test eax, eax
 jne gzp46_γ
 jmp gzp46_g3_β
 gzp46_g5_β:
 mov rdi, qword ptr [r12 + 136]
 call gzp12_β
 jmp .Lx60_0
# IR_CALLEE_FRAME
 gzp46_γ:
 mov eax, 1
 pop r12
 ret
 gzp46_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp12_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp46_g1_β
 jmp gzp46_g5_β
gzp44_α:
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
 lea rdi, [r12 + 56]
 mov esi, 3
 call rt_pl_cells_init@PLT
 jmp gzp64_g0_α
gzp64_g0_α:
bb37_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 lea rax, [r12 + 40]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 24]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp64_c0_adv
 jmp gzp64_γ
 gzp64_g0_β:
 jmp gzp64_c0_adv
gzp64_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp64_g1_α
gzp64_g1_α:
bb39_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 lea rax, [r12 + 56]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 72]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp64_ω
 jmp gzp64_g2_α
gzp64_g2_α:
bb40_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 lea rax, [r12 + 56]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 88]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp64_ω
 jmp gzp64_g3_α
gzp64_g3_α:
bb41_α:
# IR_CELL_CALL
 lea rdi, [r12 + 104]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 72]
 lea rdx, [r12 + 88]
 lea rcx, [r12 + 40]
 call gzp44_α
.Lx74_0:
 test eax, eax
 jne gzp64_γ
 jmp gzp64_ω
 gzp64_g3_β:
 mov rdi, qword ptr [r12 + 104]
 call gzp44_β
 jmp .Lx74_0
# IR_CALLEE_FRAME
 gzp64_γ:
 mov eax, 1
 pop r12
 ret
 gzp64_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp44_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp64_g0_β
 jmp gzp64_g3_β
gzp45_α:
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
 lea rdi, [r12 + 40]
 mov esi, 1
 call rt_pl_cells_init@PLT
 jmp gzp79_g0_α
gzp79_g0_α:
bb46_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp79_ω
 jmp gzp79_g1_α
gzp79_g1_α:
bb47_α:
# IR_CELL_CALL
 lea rdi, [r12 + 56]
 mov esi, 15
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 40]
 call gzp78_α
.Lx84_0:
 test eax, eax
 jne gzp79_γ
 jmp gzp79_ω
 gzp79_g1_β:
 mov rdi, qword ptr [r12 + 56]
 call gzp78_β
 jmp .Lx84_0
# IR_CALLEE_FRAME
 gzp79_γ:
 mov eax, 1
 pop r12
 ret
 gzp79_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp45_β:
 push r12
 mov r12, rdi
 jmp gzp79_g1_β
gzp78_α:
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
 lea rdi, [r12 + 56]
 mov esi, 11
 call rt_pl_cells_init@PLT
 jmp gzp86_g0_α
gzp86_g0_α:
bb50_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx89_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp86_c0_adv
 jmp gzp86_g1_α
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "[]"
gzp86_g1_α:
bb51_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 lea rsi, [r12 + 56]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp86_c0_adv
 jmp gzp86_g2_α
gzp86_g2_α:
bb52_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 lea rsi, [r12 + 72]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp86_c0_adv
 jmp gzp86_γ
 gzp86_g2_β:
 jmp gzp86_c0_adv
gzp86_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp86_g3_α
gzp86_g3_α:
bb54_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 lea rax, [r12 + 88]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 104]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp86_ω
 jmp gzp86_g4_α
gzp86_g4_α:
bb55_α:
# IR_DET_IS
 lea rdi, [r12 + 136]
 lea rsi, [r12 + 88]
 lea rdx, [r12 + 40]
 mov rcx, qword ptr [rip + .Lx98_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp86_ω
 jmp gzp86_g5_α
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "+"
gzp86_g5_α:
bb56_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx100_0]
 lea rsi, [r12 + 24]
 mov rdx, 0
 lea rcx, [r12 + 136]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp86_ω
 jmp gzp86_g6_α
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "=\\="
gzp86_g6_α:
bb57_α:
# IR_DET_IS
 lea rdi, [r12 + 152]
 lea rsi, [r12 + 88]
 lea rdx, [r12 + 40]
 mov rcx, qword ptr [rip + .Lx102_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp86_ω
 jmp gzp86_g7_α
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string "-"
gzp86_g7_α:
bb58_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx104_0]
 lea rsi, [r12 + 24]
 mov rdx, 0
 lea rcx, [r12 + 152]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp86_ω
 jmp gzp86_g8_α
.Lx104_0:
 .quad .Lx104_0_s
.Lx104_0_s:
 .string "=\\="
gzp86_g8_α:
bb59_α:
# IR_DET_IS
 lea rdi, [r12 + 120]
 lea rsi, [r12 + 40]
 mov rdx, qword ptr [rip + .Lx106_0]
 mov rcx, 1
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp86_ω
 jmp gzp86_g9_α
.Lx106_0:
 .quad .Lx106_0_s
.Lx106_0_s:
 .string "+"
gzp86_g9_α:
bb60_α:
# IR_CELL_CALL
 lea rdi, [r12 + 232]
 mov esi, 15
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 104]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 120]
 call gzp78_α
.Lx108_0:
 test eax, eax
 jne gzp86_γ
 jmp gzp86_ω
 gzp86_g9_β:
 mov rdi, qword ptr [r12 + 232]
 call gzp78_β
 jmp .Lx108_0
# IR_CALLEE_FRAME
 gzp86_γ:
 mov eax, 1
 pop r12
 ret
 gzp86_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp78_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp86_g2_β
 jmp gzp86_g9_β
.section .rodata
.S0: .string "[]"
.S1: .string "."
.text
