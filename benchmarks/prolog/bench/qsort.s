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
 mov esi, 3
 call rt_pl_gz_init@PLT
 jmp gzq0_g0_α
gzq0_g0_α:
bb2_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
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
 mov rsi, 74
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
 mov rsi, 33
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 94
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
 mov rsi, 46
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 83
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 65
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
 mov rsi, 32
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 53
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
 mov rsi, 85
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 99
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 47
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
 mov rsi, 82
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
 mov rsi, 11
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 55
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
 mov rsi, 39
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 81
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 90
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 37
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
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 66
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 51
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
 mov rsi, 21
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 85
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
 mov rsi, 31
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 63
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 75
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
 mov rsi, 95
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 99
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
 mov rsi, 28
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 61
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 74
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
 mov rsi, 92
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 40
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 53
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 59
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
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 40]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx6_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzq0_ω
 jmp gzq0_g2_α
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "[]"
gzq0_g2_α:
bb4_α:
# IR_CELL_CALL
 lea rdi, [r12 + 56]
 mov esi, 12
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 40]
 call gzp1_α
.Lx8_0:
 test eax, eax
 jne gzq0_g3_α
 jmp gzq0_ω
 gzq0_g2_β:
 mov rdi, qword ptr [r12 + 56]
 call gzp1_β
 jmp .Lx8_0
gzq0_g3_α:
bb5_α:
# IR_DET_WRITE
 mov rdi, qword ptr [r12 + 8]
 call rt_pl_write_cell@PLT
 jmp gzq0_g4_α
gzq0_g4_α:
bb6_α:
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
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 40], rcx
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 lea rdi, [r12 + 56]
 mov esi, 6
 call rt_pl_cells_init@PLT
 jmp gzp14_g0_α
gzp14_g0_α:
bb9_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 72]
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
 je gzp14_c0_adv
 jmp gzp14_g1_α
gzp14_g1_α:
bb10_α:
# IR_CELL_CALL
 lea rdi, [r12 + 152]
 mov esi, 13
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 88]
 mov r8, qword ptr [r12 + 104]
 call gzp13_α
.Lx19_0:
 test eax, eax
 jne gzp14_g2_α
 jmp gzp14_c0_adv
 gzp14_g1_β:
 mov rdi, qword ptr [r12 + 152]
 call gzp13_β
 jmp .Lx19_0
gzp14_g2_α:
bb11_α:
# IR_CELL_CALL
 lea rdi, [r12 + 168]
 mov esi, 12
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 40]
 call gzp1_α
.Lx21_0:
 test eax, eax
 jne gzp14_g3_α
 jmp gzp14_g1_β
 gzp14_g2_β:
 mov rdi, qword ptr [r12 + 168]
 call gzp1_β
 jmp .Lx21_0
gzp14_g3_α:
bb12_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 120]
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
 je gzp14_g2_β
 jmp gzp14_g4_α
gzp14_g4_α:
bb13_α:
# IR_CELL_CALL
 lea rdi, [r12 + 184]
 mov esi, 12
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 136]
 call gzp1_α
.Lx25_0:
 test eax, eax
 jne gzp14_γ
 jmp gzp14_g2_β
 gzp14_g4_β:
 mov rdi, qword ptr [r12 + 184]
 call gzp1_β
 jmp .Lx25_0
gzp14_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp14_g5_α
gzp14_g5_α:
bb15_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx28_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp14_ω
 jmp gzp14_g6_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "[]"
gzp14_g6_α:
bb16_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 40]
 mov rsi, qword ptr [r12 + 24]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp14_ω
 jmp gzp14_γ
 gzp14_g6_β:
 jmp gzp14_ω
# IR_CALLEE_FRAME
 gzp14_γ:
 mov eax, 1
 pop r12
 ret
 gzp14_ω:
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
 je gzp14_g4_β
 jmp gzp14_g6_β
gzp13_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov qword ptr [r12 + 8], rsi
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 40], rcx
 mov qword ptr [r12 + 56], r8
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 lea rdi, [r12 + 72]
 mov esi, 7
 call rt_pl_cells_init@PLT
 jmp gzp34_g0_α
gzp34_g0_α:
bb21_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 88]
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
 je gzp34_c0_adv
 jmp gzp34_g1_α
gzp34_g1_α:
bb22_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 104]
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
 je gzp34_c0_adv
 jmp gzp34_g2_α
gzp34_g2_α:
bb23_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx41_0]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 24]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp34_c0_adv
 jmp gzp34_g3_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "=<"
gzp34_g3_α:
bb24_α:
# IR_CELL_CUT
 jmp gzp34_g4_α
 gzp34_g3_β:
 jmp gzp34_ω
gzp34_g4_α:
bb25_α:
# IR_CELL_CALL
 lea rdi, [r12 + 184]
 mov esi, 13
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 104]
 mov r8, qword ptr [r12 + 56]
 call gzp13_α
.Lx45_0:
 test eax, eax
 jne gzp34_γ
 jmp gzp34_g3_β
 gzp34_g4_β:
 mov rdi, qword ptr [r12 + 184]
 call gzp13_β
 jmp .Lx45_0
gzp34_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp34_g5_α
gzp34_g5_α:
bb27_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 136]
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
 je gzp34_c1_adv
 jmp gzp34_g6_α
gzp34_g6_α:
bb28_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 152]
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
 je gzp34_c1_adv
 jmp gzp34_g7_α
gzp34_g7_α:
bb29_α:
# IR_CELL_CALL
 lea rdi, [r12 + 200]
 mov esi, 13
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 mov r8, qword ptr [r12 + 152]
 call gzp13_α
.Lx52_0:
 test eax, eax
 jne gzp34_γ
 jmp gzp34_c1_adv
 gzp34_g7_β:
 mov rdi, qword ptr [r12 + 200]
 call gzp13_β
 jmp .Lx52_0
gzp34_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp34_g8_α
gzp34_g8_α:
bb31_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx55_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp34_ω
 jmp gzp34_g9_α
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "[]"
gzp34_g9_α:
bb32_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 24]
 mov rsi, qword ptr [r12 + 168]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp34_ω
 jmp gzp34_g10_α
gzp34_g10_α:
bb33_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 40]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx59_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp34_ω
 jmp gzp34_g11_α
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "[]"
gzp34_g11_α:
bb34_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 56]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx61_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp34_ω
 jmp gzp34_γ
 gzp34_g11_β:
 jmp gzp34_ω
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "[]"
# IR_CALLEE_FRAME
 gzp34_γ:
 mov eax, 1
 pop r12
 ret
 gzp34_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp13_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp34_g4_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp34_g7_β
 jmp gzp34_g11_β
.section .rodata
.S0: .string "."
.S1: .string "[]"
.text
