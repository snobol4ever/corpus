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
 sub rsp, 16
 lea rax, [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 mov edi, 0
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 6
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 7
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 10
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S1]
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
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp10_ω
 jmp gzp10_g1_α
gzp10_g1_α:
bb8_α:
# IR_CELL_CALL
 lea rdi, [r12 + 40]
 mov esi, 7
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
 mov esi, 2
 call rt_pl_cells_init@PLT
 jmp gzp20_g0_α
gzp20_g0_α:
bb11_α:
# IR_CELL_CALL
 lea rdi, [r12 + 72]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 40]
 call gzp17_α
.Lx23_0:
 test eax, eax
 jne gzp20_g1_α
 jmp gzp20_ω
 gzp20_g0_β:
 mov rdi, qword ptr [r12 + 72]
 call gzp17_β
 jmp .Lx23_0
gzp20_g1_α:
bb12_α:
# IR_CELL_CALL
 lea rdi, [r12 + 88]
 mov esi, 9
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 40]
 lea rcx, [r12 + 24]
 call gzp18_α
.Lx25_0:
 test eax, eax
 jne gzp20_g2_α
 jmp gzp20_g0_β
 gzp20_g1_β:
 mov rdi, qword ptr [r12 + 88]
 call gzp18_β
 jmp .Lx25_0
gzp20_g2_α:
bb13_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 56]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx27_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp20_g1_β
 jmp gzp20_g3_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "[]"
gzp20_g3_α:
bb14_α:
# IR_CELL_CALL
 lea rdi, [r12 + 104]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 56]
 lea rdx, [r12 + 24]
 call gzp19_α
.Lx29_0:
 test eax, eax
 jne gzp20_γ
 jmp gzp20_g1_β
 gzp20_g3_β:
 mov rdi, qword ptr [r12 + 104]
 call gzp19_β
 jmp .Lx29_0
# IR_CALLEE_FRAME
 gzp20_γ:
 mov eax, 1
 pop r12
 ret
 gzp20_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp9_β:
 push r12
 mov r12, rdi
 jmp gzp20_g3_β
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
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 lea rdi, [r12 + 40]
 mov esi, 3
 call rt_pl_cells_init@PLT
 jmp gzp32_g0_α
gzp32_g0_α:
bb17_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx35_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp32_c0_adv
 jmp gzp32_g1_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "[]"
gzp32_g1_α:
bb18_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx37_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp32_c0_adv
 jmp gzp32_γ
 gzp32_g1_β:
 jmp gzp32_c0_adv
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "[]"
gzp32_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp32_g2_α
gzp32_g2_α:
bb20_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 24]
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
 je gzp32_ω
 jmp gzp32_g3_α
gzp32_g3_α:
bb21_α:
# IR_CELL_CALL
 lea rdi, [r12 + 88]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 40]
 lea rdx, [r12 + 8]
 lea rcx, [r12 + 72]
 call gzp31_α
.Lx42_0:
 test eax, eax
 jne gzp32_g4_α
 jmp gzp32_ω
 gzp32_g3_β:
 mov rdi, qword ptr [r12 + 88]
 call gzp31_β
 jmp .Lx42_0
gzp32_g4_α:
bb22_α:
# IR_CELL_CALL
 lea rdi, [r12 + 104]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 72]
 lea rdx, [r12 + 56]
 call gzp17_α
.Lx44_0:
 test eax, eax
 jne gzp32_γ
 jmp gzp32_g3_β
 gzp32_g4_β:
 mov rdi, qword ptr [r12 + 104]
 call gzp17_β
 jmp .Lx44_0
# IR_CALLEE_FRAME
 gzp32_γ:
 mov eax, 1
 pop r12
 ret
 gzp32_ω:
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
 je gzp32_g1_β
 jmp gzp32_g4_β
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
 mov r11, qword ptr [rcx + 0]
 mov qword ptr [r12 + 40], r11
 mov r11, qword ptr [rcx + 8]
 mov qword ptr [r12 + 48], r11
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 lea rdi, [r12 + 56]
 mov esi, 5
 call rt_pl_cells_init@PLT
 jmp gzp48_g0_α
gzp48_g0_α:
bb27_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx51_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp48_c0_adv
 jmp gzp48_g1_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "[]"
gzp48_g1_α:
bb28_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx53_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp48_c0_adv
 jmp gzp48_g2_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "[]"
gzp48_g2_α:
bb29_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 40]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx55_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp48_c0_adv
 jmp gzp48_γ
 gzp48_g2_β:
 jmp gzp48_c0_adv
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "[]"
gzp48_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp48_g3_α
gzp48_g3_α:
bb31_α:
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
 je gzp48_ω
 jmp gzp48_g4_α
gzp48_g4_α:
bb32_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 24]
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
 je gzp48_ω
 jmp gzp48_g5_α
gzp48_g5_α:
bb33_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
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
 lea rdi, [rip + .S2]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 120]
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
 je gzp48_ω
 jmp gzp48_g6_α
gzp48_g6_α:
bb34_α:
# IR_CELL_CALL
 lea rdi, [r12 + 136]
 mov esi, 9
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 72]
 lea rdx, [r12 + 104]
 lea rcx, [r12 + 120]
 call gzp18_α
.Lx64_0:
 test eax, eax
 jne gzp48_γ
 jmp gzp48_ω
 gzp48_g6_β:
 mov rdi, qword ptr [r12 + 136]
 call gzp18_β
 jmp .Lx64_0
# IR_CALLEE_FRAME
 gzp48_γ:
 mov eax, 1
 pop r12
 ret
 gzp48_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp18_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp48_g2_β
 jmp gzp48_g6_β
gzp19_α:
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
 jmp gzp69_g0_α
gzp69_g0_α:
bb39_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx72_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp69_c0_adv
 jmp gzp69_γ
 gzp69_g0_β:
 jmp gzp69_c0_adv
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string "[]"
gzp69_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp69_g1_α
gzp69_g1_α:
bb41_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 24]
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
 je gzp69_ω
 jmp gzp69_g2_α
gzp69_g2_α:
bb42_α:
# IR_CELL_CALL
 lea rdi, [r12 + 88]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 40]
 call gzp68_α
.Lx77_0:
 test eax, eax
 jne gzp69_g3_α
 jmp gzp69_ω
 gzp69_g2_β:
 mov rdi, qword ptr [r12 + 88]
 call gzp68_β
 jmp .Lx77_0
gzp69_g3_α:
bb43_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 72]
 mov qword ptr [rsp + 0], rax
 sub rsp, 32
 lea rax, [r12 + 40]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 8]
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
 je gzp69_g2_β
 jmp gzp69_g4_α
gzp69_g4_α:
bb44_α:
# IR_CELL_CALL
 lea rdi, [r12 + 104]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 72]
 lea rdx, [r12 + 56]
 call gzp19_α
.Lx81_0:
 test eax, eax
 jne gzp69_γ
 jmp gzp69_g2_β
 gzp69_g4_β:
 mov rdi, qword ptr [r12 + 104]
 call gzp19_β
 jmp .Lx81_0
# IR_CALLEE_FRAME
 gzp69_γ:
 mov eax, 1
 pop r12
 ret
 gzp69_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp19_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp69_g0_β
 jmp gzp69_g4_β
gzp31_α:
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
 jmp gzp85_g0_α
gzp85_g0_α:
bb49_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 24]
 mov qword ptr [rsp + 0], rax
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
 je gzp85_c0_adv
 jmp gzp85_γ
 gzp85_g0_β:
 jmp gzp85_c0_adv
gzp85_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp85_g1_α
gzp85_g1_α:
bb51_α:
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
 lea rax, [r12 + 72]
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
 je gzp85_ω
 jmp gzp85_g2_α
gzp85_g2_α:
bb52_α:
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
 je gzp85_ω
 jmp gzp85_g3_α
gzp85_g3_α:
bb53_α:
# IR_CELL_CALL
 lea rdi, [r12 + 104]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 72]
 lea rcx, [r12 + 88]
 call gzp31_α
.Lx95_0:
 test eax, eax
 jne gzp85_γ
 jmp gzp85_ω
 gzp85_g3_β:
 mov rdi, qword ptr [r12 + 104]
 call gzp31_β
 jmp .Lx95_0
# IR_CALLEE_FRAME
 gzp85_γ:
 mov eax, 1
 pop r12
 ret
 gzp85_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp31_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp85_g0_β
 jmp gzp85_g3_β
gzp68_α:
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
 mov esi, 2
 call rt_pl_cells_init@PLT
 jmp gzp100_g0_α
gzp100_g0_α:
bb58_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx103_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp100_c0_adv
 jmp gzp100_γ
 gzp100_g0_β:
 jmp gzp100_c0_adv
.Lx103_0:
 .quad .Lx103_0_s
.Lx103_0_s:
 .string "[]"
gzp100_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp100_g1_α
gzp100_g1_α:
bb60_α:
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
 je gzp100_ω
 jmp gzp100_g2_α
gzp100_g2_α:
bb61_α:
# IR_CELL_CALL
 lea rdi, [r12 + 72]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 56]
 lea rdx, [r12 + 24]
 call gzp68_α
.Lx108_0:
 test eax, eax
 jne gzp100_g3_α
 jmp gzp100_ω
 gzp100_g2_β:
 mov rdi, qword ptr [r12 + 72]
 call gzp68_β
 jmp .Lx108_0
gzp100_g3_α:
bb62_α:
# IR_CELL_CALL
 lea rdi, [r12 + 88]
 mov esi, 15
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 40]
 lea rdx, [r12 + 24]
 call gzp99_α
.Lx110_0:
 test eax, eax
 jne gzp100_γ
 jmp gzp100_g2_β
 gzp100_g3_β:
 mov rdi, qword ptr [r12 + 88]
 call gzp99_β
 jmp .Lx110_0
# IR_CALLEE_FRAME
 gzp100_γ:
 mov eax, 1
 pop r12
 ret
 gzp100_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp68_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp100_g0_β
 jmp gzp100_g3_β
gzp99_α:
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
 mov esi, 13
 call rt_pl_cells_init@PLT
 jmp gzp114_g0_α
gzp114_g0_α:
bb67_α:
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
 lea rdi, [rip + .S2]
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
 je gzp114_ω
 jmp gzp114_g1_α
gzp114_g1_α:
bb68_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 24]
 mov qword ptr [rsp + 0], rax
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
 lea rdi, [rip + .S2]
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
 je gzp114_ω
 jmp gzp114_g2_α
gzp114_g2_α:
bb69_α:
# IR_DET_IS
 lea rdi, [r12 + 104]
 lea rsi, [r12 + 40]
 lea rdx, [r12 + 72]
 mov rcx, qword ptr [rip + .Lx121_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp114_ω
 jmp gzp114_g3_α
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string "-"
gzp114_g3_α:
bb70_α:
# IR_DET_IS
 lea rdi, [r12 + 120]
 lea rsi, [r12 + 56]
 lea rdx, [r12 + 88]
 mov rcx, qword ptr [rip + .Lx123_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp114_ω
 jmp gzp114_g4_α
.Lx123_0:
 .quad .Lx123_0_s
.Lx123_0_s:
 .string "-"
gzp114_g4_α:
bb71_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx125_0]
 lea rsi, [r12 + 104]
 mov rdx, 0
 lea rcx, [r12 + 120]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp114_ω
 jmp gzp114_g5_α
.Lx125_0:
 .quad .Lx125_0_s
.Lx125_0_s:
 .string "=\\="
gzp114_g5_α:
bb72_α:
# IR_DET_IS
 lea rdi, [r12 + 136]
 lea rsi, [r12 + 88]
 lea rdx, [r12 + 56]
 mov rcx, qword ptr [rip + .Lx127_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp114_ω
 jmp gzp114_g6_α
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
 .string "-"
gzp114_g6_α:
bb73_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx129_0]
 lea rsi, [r12 + 104]
 mov rdx, 0
 lea rcx, [r12 + 136]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp114_ω
 jmp gzp114_γ
 gzp114_g6_β:
 jmp gzp114_ω
.Lx129_0:
 .quad .Lx129_0_s
.Lx129_0_s:
 .string "=\\="
# IR_CALLEE_FRAME
 gzp114_γ:
 mov eax, 1
 pop r12
 ret
 gzp114_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp99_β:
 push r12
 mov r12, rdi
 jmp gzp114_g6_β
.section .rodata
.S0: .string "."
.S1: .string "[]"
.S2: .string "p"
.text
