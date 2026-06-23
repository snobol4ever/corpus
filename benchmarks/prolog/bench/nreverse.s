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
 sub rsp, 16
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 6
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 7
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 10
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 11
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 12
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 13
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 14
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 15
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 16
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 17
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 18
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 19
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 20
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 21
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 22
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 23
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 24
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 25
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 26
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 27
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 28
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 29
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 30
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzq0_ω
 jmp gzq0_g1_α
gzq0_g1_α:
bb3_α:
# IR_CELL_CALL
 lea rdi, [r12 + 24]
 mov esi, 8
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
 mov esi, 4
 call rt_pl_cells_init@PLT
 jmp gzp12_g0_α
gzp12_g0_α:
bb8_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp12_c0_adv
 jmp gzp12_g1_α
gzp12_g1_α:
bb9_α:
# IR_CELL_CALL
 lea rdi, [r12 + 56]
 mov esi, 8
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call gzp1_α
.Lx17_0:
 test eax, eax
 jne gzp12_g2_α
 jmp gzp12_c0_adv
 gzp12_g1_β:
 mov rdi, qword ptr [r12 + 56]
 call gzp1_β
 jmp .Lx17_0
gzp12_g2_α:
bb10_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp12_g1_β
 jmp gzp12_g3_α
gzp12_g3_α:
bb11_α:
# IR_CELL_CALL
 lea rdi, [r12 + 64]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 16]
 call gzp11_α
.Lx21_0:
 test eax, eax
 jne gzp12_γ
 jmp gzp12_g1_β
 gzp12_g3_β:
 mov rdi, qword ptr [r12 + 64]
 call gzp11_β
 jmp .Lx21_0
gzp12_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp12_g4_α
gzp12_g4_α:
bb13_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx24_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp12_ω
 jmp gzp12_g5_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "[]"
gzp12_g5_α:
bb14_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 16]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx26_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp12_ω
 jmp gzp12_γ
 gzp12_g5_β:
 jmp gzp12_ω
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string "[]"
# IR_CALLEE_FRAME
 gzp12_γ:
 mov eax, 1
 pop r12
 ret
 gzp12_ω:
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
 je gzp12_g3_β
 jmp gzp12_g5_β
gzp11_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov qword ptr [r12 + 8], rsi
 mov qword ptr [r12 + 16], rdx
 mov qword ptr [r12 + 24], rcx
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 lea rdi, [r12 + 32]
 mov esi, 3
 call rt_pl_cells_init@PLT
 jmp gzp30_g0_α
gzp30_g0_α:
bb19_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp30_c0_adv
 jmp gzp30_g1_α
gzp30_g1_α:
bb20_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp30_c0_adv
 jmp gzp30_g2_α
gzp30_g2_α:
bb21_α:
# IR_CELL_CALL
 lea rdi, [r12 + 56]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 48]
 call gzp11_α
.Lx37_0:
 test eax, eax
 jne gzp30_γ
 jmp gzp30_c0_adv
 gzp30_g2_β:
 mov rdi, qword ptr [r12 + 56]
 call gzp11_β
 jmp .Lx37_0
gzp30_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp30_g3_α
gzp30_g3_α:
bb23_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx40_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp30_ω
 jmp gzp30_g4_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "[]"
gzp30_g4_α:
bb24_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 24]
 mov rsi, qword ptr [r12 + 16]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp30_ω
 jmp gzp30_γ
 gzp30_g4_β:
 jmp gzp30_ω
# IR_CALLEE_FRAME
 gzp30_γ:
 mov eax, 1
 pop r12
 ret
 gzp30_ω:
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
 je gzp30_g2_β
 jmp gzp30_g4_β
.section .rodata
.S0: .string "."
.S1: .string "[]"
.text
