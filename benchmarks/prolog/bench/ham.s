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
 mov esi, 1
 call rt_pl_gz_init@PLT
 jmp gzq0_g0_α
gzq0_g0_α:
bb2_α:
# IR_CELL_CALL
 lea rdi, [r12 + 24]
 mov esi, 3
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 call gzp1_α
.Lx4_0:
 test eax, eax
 jne gzq0_g1_α
 jmp gzq0_ω
 gzq0_g0_β:
 mov rdi, qword ptr [r12 + 24]
 call gzp1_β
 jmp .Lx4_0
gzq0_g1_α:
bb3_α:
# IR_DET_WRITE
 lea rdi, [r12 + 8]
 call rt_pl_write_cell@PLT
 jmp gzq0_g2_α
gzq0_g2_α:
bb4_α:
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
 jmp gzp10_g0_α
gzp10_g0_α:
bb7_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
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
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S3]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S4]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S5]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S6]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S7]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S8]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S9]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S10]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S11]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S12]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S13]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S14]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S15]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S16]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S17]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S18]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S19]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S20]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp10_ω
 jmp gzp10_g1_α
gzp10_g1_α:
bb8_α:
# IR_CELL_CALL
 lea rdi, [r12 + 40]
 mov esi, 11
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 24]
 lea rdx, [r12 + 8]
 call gzp9_α
.Lx15_0:
 test eax, eax
 jne gzp10_γ
 jmp gzp10_ω
 gzp10_g1_β:
 mov rdi, qword ptr [r12 + 40]
 call gzp9_β
 jmp .Lx15_0
# IR_CALLEE_FRAME
 gzp10_γ:
 mov eax, 1
 pop r12
 ret
 gzp10_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp1_β:
 push r12
 mov r12, rdi
 jmp gzp10_g1_β
gzp9_α:
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
 mov esi, 7
 call rt_pl_cells_init@PLT
 jmp gzp19_g0_α
gzp19_g0_α:
bb11_α:
# IR_CELL_UNIFY
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
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp19_ω
 jmp gzp19_g1_α
gzp19_g1_α:
bb12_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 40]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 lea rax, [r12 + 72]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 88]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp19_ω
 jmp gzp19_g2_α
gzp19_g2_α:
bb13_α:
# IR_CELL_UNIFY
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
 lea rdi, [r12 + 104]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp19_ω
 jmp gzp19_g3_α
gzp19_g3_α:
bb14_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 120]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx28_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp19_ω
 jmp gzp19_g4_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "[]"
gzp19_g4_α:
bb15_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 72]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 88]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 136]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp19_ω
 jmp gzp19_g5_α
gzp19_g5_α:
bb16_α:
# IR_CELL_CALL
 lea rdi, [r12 + 152]
 mov esi, 13
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 104]
 lea rdx, [r12 + 120]
 lea rcx, [r12 + 136]
 call gzp17_α
.Lx32_0:
 test eax, eax
 jne gzp19_g6_α
 jmp gzp19_ω
 gzp19_g5_β:
 mov rdi, qword ptr [r12 + 152]
 call gzp17_β
 jmp .Lx32_0
gzp19_g6_α:
bb17_α:
# IR_CELL_CALL
 lea rdi, [r12 + 168]
 mov esi, 5
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 72]
 lea rdx, [r12 + 40]
 call gzp18_α
.Lx34_0:
 test eax, eax
 jne gzp19_γ
 jmp gzp19_g5_β
 gzp19_g6_β:
 mov rdi, qword ptr [r12 + 168]
 call gzp18_β
 jmp .Lx34_0
# IR_CALLEE_FRAME
 gzp19_γ:
 mov eax, 1
 pop r12
 ret
 gzp19_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp9_β:
 push r12
 mov r12, rdi
 jmp gzp19_g6_β
gzp17_α:
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
 mov esi, 7
 call rt_pl_cells_init@PLT
 jmp gzp37_g0_α
gzp37_g0_α:
bb20_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 56]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp37_c0_adv
 jmp gzp37_g1_α
gzp37_g1_α:
bb21_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 56]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 24]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 40]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp37_c0_adv
 jmp gzp37_γ
 gzp37_g1_β:
 jmp gzp37_c0_adv
gzp37_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp37_g2_α
gzp37_g2_α:
bb23_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 72]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 88]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp37_ω
 jmp gzp37_g3_α
gzp37_g3_α:
bb24_α:
# IR_CELL_CALL
 lea rdi, [r12 + 168]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 104]
 lea rdx, [r12 + 88]
 lea rcx, [r12 + 120]
 call gzp36_α
.Lx47_0:
 test eax, eax
 jne gzp37_g4_α
 jmp gzp37_ω
 gzp37_g3_β:
 mov rdi, qword ptr [r12 + 168]
 call gzp36_β
 jmp .Lx47_0
gzp37_g4_α:
bb25_α:
# IR_CELL_CALL
 lea rdi, [r12 + 184]
 mov esi, 5
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 72]
 lea rdx, [r12 + 104]
 call gzp18_α
.Lx49_0:
 test eax, eax
 jne gzp37_g5_α
 jmp gzp37_g3_β
 gzp37_g4_β:
 mov rdi, qword ptr [r12 + 184]
 call gzp18_β
 jmp .Lx49_0
gzp37_g5_α:
bb26_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 104]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 120]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 136]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp37_g4_β
 jmp gzp37_g6_α
gzp37_g6_α:
bb27_α:
# IR_CELL_UNIFY
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
 lea rdi, [r12 + 152]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp37_g4_β
 jmp gzp37_g7_α
gzp37_g7_α:
bb28_α:
# IR_CELL_CALL
 lea rdi, [r12 + 200]
 mov esi, 13
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 136]
 lea rdx, [r12 + 152]
 lea rcx, [r12 + 40]
 call gzp17_α
.Lx55_0:
 test eax, eax
 jne gzp37_γ
 jmp gzp37_g4_β
 gzp37_g7_β:
 mov rdi, qword ptr [r12 + 200]
 call gzp17_β
 jmp .Lx55_0
# IR_CALLEE_FRAME
 gzp37_γ:
 mov eax, 1
 pop r12
 ret
 gzp37_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp17_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp37_g1_β
 jmp gzp37_g7_β
gzp18_α:
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
 jmp gzp61_g0_α
gzp61_g0_α:
bb33_α:
# IR_CELL_CALL
 lea rdi, [r12 + 56]
 mov esi, 2
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 40]
 call gzp59_α
.Lx64_0:
 test eax, eax
 jne gzp61_g1_α
 jmp gzp61_ω
 gzp61_g0_β:
 mov rdi, qword ptr [r12 + 56]
 call gzp59_β
 jmp .Lx64_0
gzp61_g1_α:
bb34_α:
# IR_CELL_CALL
 lea rdi, [r12 + 72]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 24]
 lea rdx, [r12 + 40]
 call gzp60_α
.Lx66_0:
 test eax, eax
 jne gzp61_γ
 jmp gzp61_g0_β
 gzp61_g1_β:
 mov rdi, qword ptr [r12 + 72]
 call gzp60_β
 jmp .Lx66_0
# IR_CALLEE_FRAME
 gzp61_γ:
 mov eax, 1
 pop r12
 ret
 gzp61_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp18_β:
 push r12
 mov r12, rdi
 jmp gzp61_g1_β
gzp36_α:
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
 jmp gzp68_g0_α
gzp68_g0_α:
bb37_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 8]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 40]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp68_c0_adv
 jmp gzp68_γ
 gzp68_g0_β:
 jmp gzp68_c0_adv
gzp68_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp68_g1_α
gzp68_g1_α:
bb39_α:
# IR_CELL_UNIFY
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
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp68_ω
 jmp gzp68_g2_α
gzp68_g2_α:
bb40_α:
# IR_CELL_UNIFY
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
 lea rdi, [r12 + 40]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp68_ω
 jmp gzp68_g3_α
gzp68_g3_α:
bb41_α:
# IR_CELL_CALL
 lea rdi, [r12 + 104]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 72]
 lea rcx, [r12 + 88]
 call gzp36_α
.Lx78_0:
 test eax, eax
 jne gzp68_γ
 jmp gzp68_ω
 gzp68_g3_β:
 mov rdi, qword ptr [r12 + 104]
 call gzp36_β
 jmp .Lx78_0
# IR_CALLEE_FRAME
 gzp68_γ:
 mov eax, 1
 pop r12
 ret
 gzp68_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp36_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp68_g0_β
 jmp gzp68_g3_β
gzp59_α:
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
 jmp gzp82_g0_α
gzp82_g0_α:
bb46_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx85_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c0_adv
 jmp gzp82_g1_α
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
 .string "a"
gzp82_g1_α:
bb47_α:
# IR_CELL_UNIFY
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
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S10]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S11]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c0_adv
 jmp gzp82_γ
 gzp82_g1_β:
 jmp gzp82_c0_adv
gzp82_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g2_α
gzp82_g2_α:
bb49_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx90_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c1_adv
 jmp gzp82_g3_α
.Lx90_0:
 .quad .Lx90_0_s
.Lx90_0_s:
 .string "b"
gzp82_g3_α:
bb50_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S3]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S16]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c1_adv
 jmp gzp82_γ
 gzp82_g3_β:
 jmp gzp82_c1_adv
gzp82_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g4_α
gzp82_g4_α:
bb52_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx95_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c2_adv
 jmp gzp82_g5_α
.Lx95_0:
 .quad .Lx95_0_s
.Lx95_0_s:
 .string "c"
gzp82_g5_α:
bb53_α:
# IR_CELL_UNIFY
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
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S4]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S12]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c2_adv
 jmp gzp82_γ
 gzp82_g5_β:
 jmp gzp82_c2_adv
gzp82_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g6_α
gzp82_g6_α:
bb55_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx100_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c3_adv
 jmp gzp82_g7_α
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "d"
gzp82_g7_α:
bb56_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S3]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S5]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S17]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c3_adv
 jmp gzp82_γ
 gzp82_g7_β:
 jmp gzp82_c3_adv
gzp82_c3_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 5
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g8_α
gzp82_g8_α:
bb58_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx105_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c4_adv
 jmp gzp82_g9_α
.Lx105_0:
 .quad .Lx105_0_s
.Lx105_0_s:
 .string "e"
gzp82_g9_α:
bb59_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S4]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S6]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S13]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c4_adv
 jmp gzp82_γ
 gzp82_g9_β:
 jmp gzp82_c4_adv
gzp82_c4_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 6
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g10_α
gzp82_g10_α:
bb61_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx110_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c5_adv
 jmp gzp82_g11_α
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "f"
gzp82_g11_α:
bb62_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S5]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S7]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S18]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c5_adv
 jmp gzp82_γ
 gzp82_g11_β:
 jmp gzp82_c5_adv
gzp82_c5_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 7
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g12_α
gzp82_g12_α:
bb64_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx115_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c6_adv
 jmp gzp82_g13_α
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "g"
gzp82_g13_α:
bb65_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S6]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S8]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S14]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c6_adv
 jmp gzp82_γ
 gzp82_g13_β:
 jmp gzp82_c6_adv
gzp82_c6_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 8
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g14_α
gzp82_g14_α:
bb67_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx120_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c7_adv
 jmp gzp82_g15_α
.Lx120_0:
 .quad .Lx120_0_s
.Lx120_0_s:
 .string "h"
gzp82_g15_α:
bb68_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S9]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S7]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S19]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c7_adv
 jmp gzp82_γ
 gzp82_g15_β:
 jmp gzp82_c7_adv
gzp82_c7_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 9
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g16_α
gzp82_g16_α:
bb70_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx125_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c8_adv
 jmp gzp82_g17_α
.Lx125_0:
 .quad .Lx125_0_s
.Lx125_0_s:
 .string "i"
gzp82_g17_α:
bb71_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S10]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S8]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S15]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c8_adv
 jmp gzp82_γ
 gzp82_g17_β:
 jmp gzp82_c8_adv
gzp82_c8_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 10
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g18_α
gzp82_g18_α:
bb73_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx130_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c9_adv
 jmp gzp82_g19_α
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "j"
gzp82_g19_α:
bb74_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S9]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S20]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c9_adv
 jmp gzp82_γ
 gzp82_g19_β:
 jmp gzp82_c9_adv
gzp82_c9_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 11
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g20_α
gzp82_g20_α:
bb76_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx135_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c10_adv
 jmp gzp82_g21_α
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "k"
gzp82_g21_α:
bb77_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S15]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S12]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c10_adv
 jmp gzp82_γ
 gzp82_g21_β:
 jmp gzp82_c10_adv
gzp82_c10_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 12
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g22_α
gzp82_g22_α:
bb79_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx140_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c11_adv
 jmp gzp82_g23_α
.Lx140_0:
 .quad .Lx140_0_s
.Lx140_0_s:
 .string "l"
gzp82_g23_α:
bb80_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S11]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S13]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S3]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c11_adv
 jmp gzp82_γ
 gzp82_g23_β:
 jmp gzp82_c11_adv
gzp82_c11_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 13
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g24_α
gzp82_g24_α:
bb82_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx145_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c12_adv
 jmp gzp82_g25_α
.Lx145_0:
 .quad .Lx145_0_s
.Lx145_0_s:
 .string "m"
gzp82_g25_α:
bb83_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S12]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S14]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S5]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c12_adv
 jmp gzp82_γ
 gzp82_g25_β:
 jmp gzp82_c12_adv
gzp82_c12_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 14
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g26_α
gzp82_g26_α:
bb85_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx150_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c13_adv
 jmp gzp82_g27_α
.Lx150_0:
 .quad .Lx150_0_s
.Lx150_0_s:
 .string "n"
gzp82_g27_α:
bb86_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S13]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S15]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S7]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c13_adv
 jmp gzp82_γ
 gzp82_g27_β:
 jmp gzp82_c13_adv
gzp82_c13_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 15
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g28_α
gzp82_g28_α:
bb88_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx155_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c14_adv
 jmp gzp82_g29_α
.Lx155_0:
 .quad .Lx155_0_s
.Lx155_0_s:
 .string "o"
gzp82_g29_α:
bb89_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S14]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S11]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S9]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c14_adv
 jmp gzp82_γ
 gzp82_g29_β:
 jmp gzp82_c14_adv
gzp82_c14_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 16
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g30_α
gzp82_g30_α:
bb91_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx160_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c15_adv
 jmp gzp82_g31_α
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "p"
gzp82_g31_α:
bb92_α:
# IR_CELL_UNIFY
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
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S17]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S20]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c15_adv
 jmp gzp82_γ
 gzp82_g31_β:
 jmp gzp82_c15_adv
gzp82_c15_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 17
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g32_α
gzp82_g32_α:
bb94_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx165_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c16_adv
 jmp gzp82_g33_α
.Lx165_0:
 .quad .Lx165_0_s
.Lx165_0_s:
 .string "q"
gzp82_g33_α:
bb95_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S16]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S18]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S4]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c16_adv
 jmp gzp82_γ
 gzp82_g33_β:
 jmp gzp82_c16_adv
gzp82_c16_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 18
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g34_α
gzp82_g34_α:
bb97_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx170_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c17_adv
 jmp gzp82_g35_α
.Lx170_0:
 .quad .Lx170_0_s
.Lx170_0_s:
 .string "r"
gzp82_g35_α:
bb98_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S17]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S19]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S6]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c17_adv
 jmp gzp82_γ
 gzp82_g35_β:
 jmp gzp82_c17_adv
gzp82_c17_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 19
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g36_α
gzp82_g36_α:
bb100_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx175_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_c18_adv
 jmp gzp82_g37_α
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "s"
gzp82_g37_α:
bb101_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S18]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S20]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S8]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_c18_adv
 jmp gzp82_γ
 gzp82_g37_β:
 jmp gzp82_c18_adv
gzp82_c18_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 20
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp82_g38_α
gzp82_g38_α:
bb103_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx180_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp82_ω
 jmp gzp82_g39_α
.Lx180_0:
 .quad .Lx180_0_s
.Lx180_0_s:
 .string "t"
gzp82_g39_α:
bb104_α:
# IR_CELL_UNIFY
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S16]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S19]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S10]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp82_ω
 jmp gzp82_γ
 gzp82_g39_β:
 jmp gzp82_ω
# IR_CALLEE_FRAME
 gzp82_γ:
 mov eax, 1
 pop r12
 ret
 gzp82_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp59_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp82_g1_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp82_g3_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp82_g5_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 4
 je gzp82_g7_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 5
 je gzp82_g9_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 6
 je gzp82_g11_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 7
 je gzp82_g13_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 8
 je gzp82_g15_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 9
 je gzp82_g17_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 10
 je gzp82_g19_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 11
 je gzp82_g21_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 12
 je gzp82_g23_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 13
 je gzp82_g25_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 14
 je gzp82_g27_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 15
 je gzp82_g29_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 16
 je gzp82_g31_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 17
 je gzp82_g33_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 18
 je gzp82_g35_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 19
 je gzp82_g37_β
 jmp gzp82_g39_β
gzp60_α:
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
 mov esi, 3
 call rt_pl_cells_init@PLT
 jmp gzp204_g0_α
gzp204_g0_α:
bb127_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 8]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 40]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp204_c0_adv
 jmp gzp204_γ
 gzp204_g0_β:
 jmp gzp204_c0_adv
gzp204_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp204_g1_α
gzp204_g1_α:
bb129_α:
# IR_CELL_UNIFY
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
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp204_ω
 jmp gzp204_g2_α
gzp204_g2_α:
bb130_α:
# IR_CELL_CALL
 lea rdi, [r12 + 88]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 72]
 call gzp60_α
.Lx212_0:
 test eax, eax
 jne gzp204_γ
 jmp gzp204_ω
 gzp204_g2_β:
 mov rdi, qword ptr [r12 + 88]
 call gzp60_β
 jmp .Lx212_0
# IR_CALLEE_FRAME
 gzp204_γ:
 mov eax, 1
 pop r12
 ret
 gzp204_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp60_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp204_g0_β
 jmp gzp204_g2_β
.section .rodata
.S0: .string "."
.S1: .string "a"
.S2: .string "b"
.S3: .string "c"
.S4: .string "d"
.S5: .string "e"
.S6: .string "f"
.S7: .string "g"
.S8: .string "h"
.S9: .string "i"
.S10: .string "j"
.S11: .string "k"
.S12: .string "l"
.S13: .string "m"
.S14: .string "n"
.S15: .string "o"
.S16: .string "p"
.S17: .string "q"
.S18: .string "r"
.S19: .string "s"
.S20: .string "t"
.S21: .string "[]"
.text
