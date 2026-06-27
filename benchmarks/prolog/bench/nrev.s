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
# IR_CELL_CALL
 lea rdi, [r12 + 40]
 mov esi, 3
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 call gzp1_α
.Lx5_0:
 test eax, eax
 jne gzq0_g1_α
 jmp gzq0_ω
 gzq0_g0_β:
 mov rdi, qword ptr [r12 + 40]
 call gzp1_β
 jmp .Lx5_0
gzq0_g1_α:
bb3_α:
# IR_CELL_CALL
 lea rdi, [r12 + 56]
 mov esi, 8
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 24]
 call gzp2_α
.Lx7_0:
 test eax, eax
 jne gzq0_g2_α
 jmp gzq0_g0_β
 gzq0_g1_β:
 mov rdi, qword ptr [r12 + 56]
 call gzp2_β
 jmp .Lx7_0
gzq0_g2_α:
bb4_α:
# IR_DET_WRITE
 lea rdi, [r12 + 24]
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
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 lea rdi, [r12 + 24]
 mov esi, 1
 call rt_pl_cells_init@PLT
 jmp gzp13_g0_α
gzp13_g0_α:
bb8_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 30
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp13_ω
 jmp gzp13_g1_α
gzp13_g1_α:
bb9_α:
# IR_CELL_CALL
 lea rdi, [r12 + 40]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 24]
 call gzp12_α
.Lx18_0:
 test eax, eax
 jne gzp13_γ
 jmp gzp13_ω
 gzp13_g1_β:
 mov rdi, qword ptr [r12 + 40]
 call gzp12_β
 jmp .Lx18_0
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
 jmp gzp13_g1_β
gzp2_α:
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
 lea rdi, [r12 + 40]
 mov esi, 4
 call rt_pl_cells_init@PLT
 jmp gzp21_g0_α
gzp21_g0_α:
bb12_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx24_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp21_c0_adv
 jmp gzp21_g1_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "[]"
gzp21_g1_α:
bb13_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx26_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp21_c0_adv
 jmp gzp21_γ
 gzp21_g1_β:
 jmp gzp21_c0_adv
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string "[]"
gzp21_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp21_g2_α
gzp21_g2_α:
bb15_α:
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
 je gzp21_ω
 jmp gzp21_g3_α
gzp21_g3_α:
bb16_α:
# IR_CELL_CALL
 lea rdi, [r12 + 104]
 mov esi, 8
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 56]
 lea rdx, [r12 + 72]
 call gzp2_α
.Lx31_0:
 test eax, eax
 jne gzp21_g4_α
 jmp gzp21_ω
 gzp21_g3_β:
 mov rdi, qword ptr [r12 + 104]
 call gzp2_β
 jmp .Lx31_0
gzp21_g4_α:
bb17_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 88]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 lea rax, [r12 + 40]
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
 je gzp21_g3_β
 jmp gzp21_g5_α
gzp21_g5_α:
bb18_α:
# IR_CELL_CALL
 lea rdi, [r12 + 120]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 72]
 lea rdx, [r12 + 88]
 lea rcx, [r12 + 24]
 call gzp20_α
.Lx35_0:
 test eax, eax
 jne gzp21_γ
 jmp gzp21_g3_β
 gzp21_g5_β:
 mov rdi, qword ptr [r12 + 120]
 call gzp20_β
 jmp .Lx35_0
# IR_CALLEE_FRAME
 gzp21_γ:
 mov eax, 1
 pop r12
 ret
 gzp21_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp2_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp21_g1_β
 jmp gzp21_g5_β
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
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 lea rdi, [r12 + 40]
 mov esi, 4
 call rt_pl_cells_init@PLT
 jmp gzp39_g0_α
gzp39_g0_α:
bb23_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx42_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp39_c0_adv
 jmp gzp39_g1_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "[]"
gzp39_g1_α:
bb24_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp39_c0_adv
 jmp gzp39_γ
 gzp39_g1_β:
 jmp gzp39_c0_adv
gzp39_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp39_g2_α
gzp39_g2_α:
bb26_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 40]
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
 je gzp39_ω
 jmp gzp39_g3_α
gzp39_g3_α:
bb27_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx49_0]
 lea rsi, [r12 + 24]
 mov rdx, 0
 xor ecx, ecx
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp39_ω
 jmp gzp39_g4_α
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string ">"
gzp39_g4_α:
bb28_α:
# IR_DET_IS
 lea rdi, [r12 + 56]
 lea rsi, [r12 + 24]
 mov rdx, qword ptr [rip + .Lx51_0]
 mov rcx, 1
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp39_ω
 jmp gzp39_g5_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "-"
gzp39_g5_α:
bb29_α:
# IR_CELL_CALL
 lea rdi, [r12 + 104]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 40]
 lea rdx, [r12 + 56]
 call gzp12_α
.Lx53_0:
 test eax, eax
 jne gzp39_γ
 jmp gzp39_ω
 gzp39_g5_β:
 mov rdi, qword ptr [r12 + 104]
 call gzp12_β
 jmp .Lx53_0
# IR_CALLEE_FRAME
 gzp39_γ:
 mov eax, 1
 pop r12
 ret
 gzp39_ω:
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
 je gzp39_g1_β
 jmp gzp39_g5_β
gzp20_α:
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
 jmp gzp57_g0_α
gzp57_g0_α:
bb34_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx60_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp57_c0_adv
 jmp gzp57_g1_α
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "[]"
gzp57_g1_α:
bb35_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 lea rsi, [r12 + 24]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp57_c0_adv
 jmp gzp57_γ
 gzp57_g1_β:
 jmp gzp57_c0_adv
gzp57_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp57_g2_α
gzp57_g2_α:
bb37_α:
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
 je gzp57_ω
 jmp gzp57_g3_α
gzp57_g3_α:
bb38_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 40]
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
 je gzp57_ω
 jmp gzp57_g4_α
gzp57_g4_α:
bb39_α:
# IR_CELL_CALL
 lea rdi, [r12 + 104]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 72]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 88]
 call gzp20_α
.Lx69_0:
 test eax, eax
 jne gzp57_γ
 jmp gzp57_ω
 gzp57_g4_β:
 mov rdi, qword ptr [r12 + 104]
 call gzp20_β
 jmp .Lx69_0
# IR_CALLEE_FRAME
 gzp57_γ:
 mov eax, 1
 pop r12
 ret
 gzp57_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp20_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp57_g1_β
 jmp gzp57_g4_β
.section .rodata
.S0: .string "[]"
.S1: .string "."
.S2: .string "a"
.text
