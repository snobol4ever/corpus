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
 jmp gzq0_g0_α
gzq0_g0_α:
bb2_α:
# IR_CELL_ITE
gzi6_g0_α:
bb3_α:
# IR_CELL_CALL
 lea rdi, [r12 + 8]
 mov esi, 3
 call rt_enter@PLT
 mov rdi, rax
 call gzp1_α
.Lx8_0:
 test eax, eax
 jne gzi3_c1
 jmp gzi3_c2
 gzi6_g0_β:
 mov rdi, qword ptr [r12 + 8]
 call gzp1_β
 jmp .Lx8_0
gzi3_c1:
# IR_CELL_ITE
 mov dword ptr [r12 + 24], 1
 jmp gzi3_t
gzi3_c2:
# IR_CELL_ITE
 mov dword ptr [r12 + 24], 2
 jmp gzi3_e
gzi3_t:
gzi13_g0_α:
bb6_α:
# IR_DET_WRITE
 mov rdi, qword ptr [rip + .Lx15_0]
 call rt_write_atom@PLT
 jmp gzq0_g1_α
 gzi13_g0_β:
 jmp gzq0_ω
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "ok"
gzi3_e:
gzi16_g0_α:
bb7_α:
# IR_DET_WRITE
 mov rdi, qword ptr [rip + .Lx18_0]
 call rt_write_atom@PLT
 jmp gzq0_g1_α
 gzi16_g0_β:
 jmp gzq0_ω
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "failed"
# IR_CELL_ITE
 gzq0_g0_β:
 mov eax, dword ptr [r12 + 24]
 cmp eax, 1
 je gzi13_g0_β
 jmp gzi16_g0_β
gzq0_g1_α:
bb9_α:
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
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 jmp gzp26_g0_α
gzp26_g0_α:
bb12_α:
# IR_CELL_CALL
 lea rdi, [r12 + 8]
 mov esi, 4
 call rt_enter@PLT
 mov rdi, rax
 call gzp23_α
.Lx29_0:
 test eax, eax
 jne gzp26_g1_α
 jmp gzp26_ω
gzp26_g1_α:
bb13_α:
# IR_CELL_CALL
 lea rdi, [r12 + 24]
 mov esi, 4
 call rt_enter@PLT
 mov rdi, rax
 call gzp24_α
.Lx31_0:
 test eax, eax
 jne gzp26_g2_α
 jmp gzp26_ω
gzp26_g2_α:
bb14_α:
# IR_CELL_CALL
 lea rdi, [r12 + 40]
 mov esi, 4
 call rt_enter@PLT
 mov rdi, rax
 call gzp25_α
.Lx33_0:
 test eax, eax
 jne gzp26_γ
 jmp gzp26_ω
 gzp26_g2_β:
 mov rdi, qword ptr [r12 + 40]
 call gzp25_β
 jmp .Lx33_0
# IR_CALLEE_FRAME
 gzp26_γ:
 mov eax, 1
 pop r12
 ret
 gzp26_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp1_β:
 push r12
 mov r12, rdi
 jmp gzp26_g2_β
gzp23_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 lea rdi, [r12 + 8]
 mov esi, 3
 call rt_pl_cells_init@PLT
 jmp gzp36_g0_α
gzp36_g0_α:
bb17_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
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
 mov edi, 0
 mov rsi, 1
 xor edx, edx
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
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 sub rsp, 32
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
 mov edi, 0
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 0
 mov rsi, 2
 xor edx, edx
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
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
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
 mov edi, 0
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 0
 mov rsi, 3
 xor edx, edx
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
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp36_ω
 jmp gzp36_g1_α
gzp36_g1_α:
bb18_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx41_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp36_ω
 jmp gzp36_g2_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "x"
gzp36_g2_α:
bb19_α:
# IR_CELL_CALL
 lea rdi, [r12 + 56]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 24]
 lea rdx, [r12 + 40]
 lea rcx, [r12 + 8]
 call gzp35_α
.Lx43_0:
 test eax, eax
 jne gzp36_γ
 jmp gzp36_ω
 gzp36_g2_β:
 mov rdi, qword ptr [r12 + 56]
 call gzp35_β
 jmp .Lx43_0
# IR_CALLEE_FRAME
 gzp36_γ:
 mov eax, 1
 pop r12
 ret
 gzp36_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp23_β:
 push r12
 mov r12, rdi
 jmp gzp36_g2_β
gzp24_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 lea rdi, [r12 + 8]
 mov esi, 3
 call rt_pl_cells_init@PLT
 jmp gzp45_g0_α
gzp45_g0_α:
bb22_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rdi, [rip + .S4]
 mov esi, 1
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 16
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rdi, [rip + .S4]
 mov esi, 1
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 16
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rdi, [rip + .S4]
 mov esi, 1
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 16
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rdi, [rip + .S4]
 mov esi, 1
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 16
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rdi, [rip + .S4]
 mov esi, 1
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 16
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rdi, [rip + .S4]
 mov esi, 1
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 16
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rdi, [rip + .S4]
 mov esi, 1
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 16
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rdi, [rip + .S4]
 mov esi, 1
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 16
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rdi, [rip + .S4]
 mov esi, 1
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 16
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rdi, [rip + .S4]
 mov esi, 1
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp45_ω
 jmp gzp45_g1_α
gzp45_g1_α:
bb23_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx50_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp45_ω
 jmp gzp45_g2_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "x"
gzp45_g2_α:
bb24_α:
# IR_CELL_CALL
 lea rdi, [r12 + 56]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 24]
 lea rdx, [r12 + 40]
 lea rcx, [r12 + 8]
 call gzp35_α
.Lx52_0:
 test eax, eax
 jne gzp45_γ
 jmp gzp45_ω
 gzp45_g2_β:
 mov rdi, qword ptr [r12 + 56]
 call gzp35_β
 jmp .Lx52_0
# IR_CALLEE_FRAME
 gzp45_γ:
 mov eax, 1
 pop r12
 ret
 gzp45_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp24_β:
 push r12
 mov r12, rdi
 jmp gzp45_g2_β
gzp25_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 lea rdi, [r12 + 8]
 mov esi, 3
 call rt_pl_cells_init@PLT
 jmp gzp54_g0_α
gzp54_g0_α:
bb27_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 sub rsp, 32
 sub rsp, 32
 sub rsp, 32
 sub rsp, 32
 sub rsp, 32
 sub rsp, 32
 sub rsp, 32
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
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S5]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S5]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S5]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S5]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S5]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S5]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S5]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S5]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S5]
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
 je gzp54_ω
 jmp gzp54_g1_α
gzp54_g1_α:
bb28_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx59_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp54_ω
 jmp gzp54_g2_α
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "x"
gzp54_g2_α:
bb29_α:
# IR_CELL_CALL
 lea rdi, [r12 + 56]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 24]
 lea rdx, [r12 + 40]
 lea rcx, [r12 + 8]
 call gzp35_α
.Lx61_0:
 test eax, eax
 jne gzp54_γ
 jmp gzp54_ω
 gzp54_g2_β:
 mov rdi, qword ptr [r12 + 56]
 call gzp35_β
 jmp .Lx61_0
# IR_CALLEE_FRAME
 gzp54_γ:
 mov eax, 1
 pop r12
 ret
 gzp54_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp25_β:
 push r12
 mov r12, rdi
 jmp gzp54_g2_β
gzp35_α:
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
 mov esi, 30
 call rt_pl_cells_init@PLT
 jmp gzp63_g0_α
gzp63_g0_α:
bb32_α:
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
 je gzp63_c0_adv
 jmp gzp63_g1_α
gzp63_g1_α:
bb33_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 40]
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
 je gzp63_c0_adv
 jmp gzp63_g2_α
gzp63_g2_α:
bb34_α:
# IR_CELL_CUT
 jmp gzp63_g3_α
 gzp63_g2_β:
 jmp gzp63_ω
gzp63_g3_α:
bb35_α:
# IR_CELL_CALL
 lea rdi, [r12 + 536]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 56]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 88]
 call gzp35_α
.Lx72_0:
 test eax, eax
 jne gzp63_g4_α
 jmp gzp63_g2_β
gzp63_g4_α:
bb36_α:
# IR_CELL_CALL
 lea rdi, [r12 + 552]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 72]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 104]
 call gzp35_α
.Lx74_0:
 test eax, eax
 jne gzp63_γ
 jmp gzp63_g2_β
 gzp63_g4_β:
 mov rdi, qword ptr [r12 + 552]
 call gzp35_β
 jmp .Lx74_0
gzp63_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp63_g5_α
gzp63_g5_α:
bb38_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 lea rax, [r12 + 120]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 136]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S6]
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
 je gzp63_c1_adv
 jmp gzp63_g6_α
gzp63_g6_α:
bb39_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 lea rax, [r12 + 152]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 168]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S6]
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
 je gzp63_c1_adv
 jmp gzp63_g7_α
gzp63_g7_α:
bb40_α:
# IR_CELL_CUT
 jmp gzp63_g8_α
 gzp63_g7_β:
 jmp gzp63_ω
gzp63_g8_α:
bb41_α:
# IR_CELL_CALL
 lea rdi, [r12 + 568]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 120]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 152]
 call gzp35_α
.Lx83_0:
 test eax, eax
 jne gzp63_g9_α
 jmp gzp63_g7_β
gzp63_g9_α:
bb42_α:
# IR_CELL_CALL
 lea rdi, [r12 + 584]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 136]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 168]
 call gzp35_α
.Lx85_0:
 test eax, eax
 jne gzp63_γ
 jmp gzp63_g7_β
 gzp63_g9_β:
 mov rdi, qword ptr [r12 + 584]
 call gzp35_β
 jmp .Lx85_0
gzp63_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp63_g10_α
gzp63_g10_α:
bb44_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 lea rax, [r12 + 184]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 200]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
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
 je gzp63_c2_adv
 jmp gzp63_g11_α
gzp63_g11_α:
bb45_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 sub rsp, 32
 lea rax, [r12 + 216]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 200]
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
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 lea rax, [r12 + 184]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 232]
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
 je gzp63_c2_adv
 jmp gzp63_g12_α
gzp63_g12_α:
bb46_α:
# IR_CELL_CUT
 jmp gzp63_g13_α
 gzp63_g12_β:
 jmp gzp63_ω
gzp63_g13_α:
bb47_α:
# IR_CELL_CALL
 lea rdi, [r12 + 600]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 184]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 216]
 call gzp35_α
.Lx94_0:
 test eax, eax
 jne gzp63_g14_α
 jmp gzp63_g12_β
gzp63_g14_α:
bb48_α:
# IR_CELL_CALL
 lea rdi, [r12 + 616]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 200]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 232]
 call gzp35_α
.Lx96_0:
 test eax, eax
 jne gzp63_γ
 jmp gzp63_g12_β
 gzp63_g14_β:
 mov rdi, qword ptr [r12 + 616]
 call gzp35_β
 jmp .Lx96_0
gzp63_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp63_g15_α
gzp63_g15_α:
bb50_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 lea rax, [r12 + 248]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 264]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S5]
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
 je gzp63_c3_adv
 jmp gzp63_g16_α
gzp63_g16_α:
bb51_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 sub rsp, 32
 sub rsp, 32
 lea rax, [r12 + 280]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 264]
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
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 lea rax, [r12 + 248]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 296]
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
 lea rdi, [rip + .S6]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 lea rax, [r12 + 264]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 0
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S5]
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
 je gzp63_c3_adv
 jmp gzp63_g17_α
gzp63_g17_α:
bb52_α:
# IR_CELL_CUT
 jmp gzp63_g18_α
 gzp63_g17_β:
 jmp gzp63_ω
gzp63_g18_α:
bb53_α:
# IR_CELL_CALL
 lea rdi, [r12 + 632]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 248]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 280]
 call gzp35_α
.Lx105_0:
 test eax, eax
 jne gzp63_g19_α
 jmp gzp63_g17_β
gzp63_g19_α:
bb54_α:
# IR_CELL_CALL
 lea rdi, [r12 + 648]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 264]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 296]
 call gzp35_α
.Lx107_0:
 test eax, eax
 jne gzp63_γ
 jmp gzp63_g17_β
 gzp63_g19_β:
 mov rdi, qword ptr [r12 + 648]
 call gzp35_β
 jmp .Lx107_0
gzp63_c3_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 5
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp63_g20_α
gzp63_g20_α:
bb56_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 lea rax, [r12 + 312]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 328]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S3]
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
 je gzp63_c4_adv
 jmp gzp63_g21_α
gzp63_g21_α:
bb57_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 sub rsp, 32
 lea rax, [r12 + 344]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 328]
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
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 lea rax, [r12 + 312]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 360]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S3]
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
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp63_c4_adv
 jmp gzp63_g22_α
gzp63_g22_α:
bb58_α:
# IR_CELL_CUT
 jmp gzp63_g23_α
 gzp63_g22_β:
 jmp gzp63_ω
gzp63_g23_α:
bb59_α:
# IR_DET_TYPE_TEST
 lea rdi, [r12 + 328]
 mov rsi, qword ptr [rip + .Lx116_0]
 call rt_pl_type_test_cell@PLT
 test eax, eax
 je gzp63_g22_β
 jmp gzp63_g24_α
.Lx116_0:
 .quad .Lx116_0_s
.Lx116_0_s:
 .string "integer"
gzp63_g24_α:
bb60_α:
# IR_DET_IS
 lea rdi, [r12 + 360]
 lea rsi, [r12 + 328]
 mov rdx, qword ptr [rip + .Lx118_0]
 mov rcx, 1
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp63_g22_β
 jmp gzp63_g25_α
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "-"
gzp63_g25_α:
bb61_α:
# IR_CELL_CALL
 lea rdi, [r12 + 664]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 312]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 344]
 call gzp35_α
.Lx120_0:
 test eax, eax
 jne gzp63_γ
 jmp gzp63_g22_β
 gzp63_g25_β:
 mov rdi, qword ptr [r12 + 664]
 call gzp35_β
 jmp .Lx120_0
gzp63_c4_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 6
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp63_g26_α
gzp63_g26_α:
bb63_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 lea rax, [r12 + 408]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rdi, [rip + .S6]
 mov esi, 1
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp63_c5_adv
 jmp gzp63_g27_α
gzp63_g27_α:
bb64_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 lea rax, [r12 + 424]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rdi, [rip + .S6]
 mov esi, 1
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp63_c5_adv
 jmp gzp63_g28_α
gzp63_g28_α:
bb65_α:
# IR_CELL_CUT
 jmp gzp63_g29_α
 gzp63_g28_β:
 jmp gzp63_ω
gzp63_g29_α:
bb66_α:
# IR_CELL_CALL
 lea rdi, [r12 + 680]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 408]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 424]
 call gzp35_α
.Lx129_0:
 test eax, eax
 jne gzp63_γ
 jmp gzp63_g28_β
 gzp63_g29_β:
 mov rdi, qword ptr [r12 + 680]
 call gzp35_β
 jmp .Lx129_0
gzp63_c5_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 7
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp63_g30_α
gzp63_g30_α:
bb68_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 lea rax, [r12 + 440]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rdi, [rip + .S7]
 mov esi, 1
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp63_c6_adv
 jmp gzp63_g31_α
gzp63_g31_α:
bb69_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 sub rsp, 16
 lea rax, [r12 + 440]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rdi, [rip + .S7]
 mov esi, 1
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 16
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 456]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S0]
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
 je gzp63_c6_adv
 jmp gzp63_g32_α
gzp63_g32_α:
bb70_α:
# IR_CELL_CUT
 jmp gzp63_g33_α
 gzp63_g32_β:
 jmp gzp63_ω
gzp63_g33_α:
bb71_α:
# IR_CELL_CALL
 lea rdi, [r12 + 696]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 440]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 456]
 call gzp35_α
.Lx138_0:
 test eax, eax
 jne gzp63_γ
 jmp gzp63_g32_β
 gzp63_g33_β:
 mov rdi, qword ptr [r12 + 696]
 call gzp35_β
 jmp .Lx138_0
gzp63_c6_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 8
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp63_g34_α
gzp63_g34_α:
bb73_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 lea rax, [r12 + 472]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rdi, [rip + .S4]
 mov esi, 1
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp63_c7_adv
 jmp gzp63_g35_α
gzp63_g35_α:
bb74_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 lea rax, [r12 + 488]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 472]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S5]
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
 je gzp63_c7_adv
 jmp gzp63_g36_α
gzp63_g36_α:
bb75_α:
# IR_CELL_CUT
 jmp gzp63_g37_α
 gzp63_g36_β:
 jmp gzp63_ω
gzp63_g37_α:
bb76_α:
# IR_CELL_CALL
 lea rdi, [r12 + 712]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 472]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 488]
 call gzp35_α
.Lx147_0:
 test eax, eax
 jne gzp63_γ
 jmp gzp63_g36_β
 gzp63_g37_β:
 mov rdi, qword ptr [r12 + 712]
 call gzp35_β
 jmp .Lx147_0
gzp63_c7_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 9
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp63_g38_α
gzp63_g38_α:
bb78_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 lea rsi, [r12 + 8]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp63_c8_adv
 jmp gzp63_g39_α
gzp63_g39_α:
bb79_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp63_c8_adv
 jmp gzp63_g40_α
gzp63_g40_α:
bb80_α:
# IR_CELL_CUT
 jmp gzp63_γ
 gzp63_g40_β:
 jmp gzp63_ω
gzp63_c8_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 10
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp63_g41_α
gzp63_g41_α:
bb82_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 lea rsi, [r12 + 504]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp63_ω
 jmp gzp63_g42_α
gzp63_g42_α:
bb83_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 lea rsi, [r12 + 520]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp63_ω
 jmp gzp63_g43_α
gzp63_g43_α:
bb84_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp63_ω
 jmp gzp63_γ
 gzp63_g43_β:
 jmp gzp63_ω
# IR_CALLEE_FRAME
 gzp63_γ:
 mov eax, 1
 pop r12
 ret
 gzp63_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp35_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp63_g4_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp63_g9_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp63_g14_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 4
 je gzp63_g19_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 5
 je gzp63_g25_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 6
 je gzp63_g29_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 7
 je gzp63_g33_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 8
 je gzp63_g37_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 9
 je gzp63_g40_β
 jmp gzp63_g43_β
.section .rodata
.S0: .string "*"
.S1: .string "+"
.S2: .string "x"
.S3: .string "^"
.S4: .string "log"
.S5: .string "/"
.S6: .string "-"
.S7: .string "exp"
.text
