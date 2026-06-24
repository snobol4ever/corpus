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
 mov esi, 4
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
 lea rdi, [r12 + 24]
 mov esi, 1
 call rt_pl_cells_init@PLT
 jmp gzp12_g0_α
gzp12_g0_α:
bb8_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 24]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx15_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp12_ω
 jmp gzp12_g1_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "[]"
gzp12_g1_α:
bb9_α:
# IR_CELL_CALL
 lea rdi, [r12 + 32]
 mov esi, 12
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 16]
 call gzp11_α
.Lx17_0:
 test eax, eax
 jne gzp12_γ
 jmp gzp12_ω
 gzp12_g1_β:
 mov rdi, qword ptr [r12 + 32]
 call gzp11_β
 jmp .Lx17_0
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
 jmp gzp12_g1_β
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
 mov esi, 6
 call rt_pl_cells_init@PLT
 jmp gzp21_g0_α
gzp21_g0_α:
bb12_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 67
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
 mov rdi, qword ptr [r12 + 24]
 mov rsi, qword ptr [r12 + 16]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp21_c0_adv
 jmp gzp21_γ
 gzp21_g1_β:
 jmp gzp21_c0_adv
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
 je gzp21_ω
 jmp gzp21_g3_α
gzp21_g3_α:
bb16_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 64]
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
 je gzp21_ω
 jmp gzp21_g4_α
gzp21_g4_α:
bb17_α:
# IR_CELL_CALL
 lea rdi, [r12 + 80]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 56]
 call gzp19_α
.Lx33_0:
 test eax, eax
 jne gzp21_g5_α
 jmp gzp21_ω
 gzp21_g4_β:
 mov rdi, qword ptr [r12 + 80]
 call gzp19_β
 jmp .Lx33_0
gzp21_g5_α:
bb18_α:
# IR_CELL_CALL
 lea rdi, [r12 + 88]
 mov esi, 4
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 48]
 call gzp20_α
.Lx35_0:
 test eax, eax
 jne gzp21_g6_α
 jmp gzp21_g4_β
 gzp21_g5_β:
 mov rdi, qword ptr [r12 + 88]
 call gzp20_β
 jmp .Lx35_0
gzp21_g6_α:
bb19_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 16]
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
 je gzp21_g5_β
 jmp gzp21_g7_α
gzp21_g7_α:
bb20_α:
# IR_CELL_CALL
 lea rdi, [r12 + 96]
 mov esi, 12
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 72]
 mov rcx, qword ptr [r12 + 24]
 call gzp11_α
.Lx39_0:
 test eax, eax
 jne gzp21_γ
 jmp gzp21_g5_β
 gzp21_g7_β:
 mov rdi, qword ptr [r12 + 96]
 call gzp11_β
 jmp .Lx39_0
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
 gzp11_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp21_g1_β
 jmp gzp21_g7_β
gzp19_α:
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
 jmp gzp43_g0_α
gzp43_g0_α:
bb25_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 24]
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
 je gzp43_c0_adv
 jmp gzp43_γ
 gzp43_g0_β:
 jmp gzp43_c0_adv
gzp43_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp43_g1_α
gzp43_g1_α:
bb27_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 16]
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
 je gzp43_ω
 jmp gzp43_g2_α
gzp43_g2_α:
bb28_α:
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
 je gzp43_ω
 jmp gzp43_g3_α
gzp43_g3_α:
bb29_α:
# IR_CELL_CALL
 lea rdi, [r12 + 56]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 48]
 call gzp19_α
.Lx53_0:
 test eax, eax
 jne gzp43_γ
 jmp gzp43_ω
 gzp43_g3_β:
 mov rdi, qword ptr [r12 + 56]
 call gzp19_β
 jmp .Lx53_0
# IR_CALLEE_FRAME
 gzp43_γ:
 mov eax, 1
 pop r12
 ret
 gzp43_ω:
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
 je gzp43_g0_β
 jmp gzp43_g3_β
gzp20_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov qword ptr [r12 + 8], rsi
 mov qword ptr [r12 + 16], rdx
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 lea rdi, [r12 + 24]
 mov esi, 1
 call rt_pl_cells_init@PLT
 jmp gzp58_g0_α
gzp58_g0_α:
bb34_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 24]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp58_ω
 jmp gzp58_g1_α
gzp58_g1_α:
bb35_α:
# IR_CELL_CALL
 lea rdi, [r12 + 32]
 mov esi, 15
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 call gzp57_α
.Lx63_0:
 test eax, eax
 jne gzp58_γ
 jmp gzp58_ω
 gzp58_g1_β:
 mov rdi, qword ptr [r12 + 32]
 call gzp57_β
 jmp .Lx63_0
# IR_CALLEE_FRAME
 gzp58_γ:
 mov eax, 1
 pop r12
 ret
 gzp58_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp20_β:
 push r12
 mov r12, rdi
 jmp gzp58_g1_β
gzp57_α:
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
 mov esi, 11
 call rt_pl_cells_init@PLT
 jmp gzp65_g0_α
gzp65_g0_α:
bb38_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx68_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp65_c0_adv
 jmp gzp65_g1_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "[]"
gzp65_g1_α:
bb39_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 32]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp65_c0_adv
 jmp gzp65_g2_α
gzp65_g2_α:
bb40_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 24]
 mov rsi, qword ptr [r12 + 40]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp65_c0_adv
 jmp gzp65_g3_α
gzp65_g3_α:
bb41_α:
# IR_CELL_CUT
 jmp gzp65_γ
 gzp65_g3_β:
 jmp gzp65_ω
gzp65_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp65_g4_α
gzp65_g4_α:
bb43_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 56]
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
 je gzp65_ω
 jmp gzp65_g5_α
gzp65_g5_α:
bb44_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 72]
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [rip + .Lx79_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp65_ω
 jmp gzp65_g6_α
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "+"
gzp65_g6_α:
bb45_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx81_0]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 72]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp65_ω
 jmp gzp65_g7_α
.Lx81_0:
 .quad .Lx81_0_s
.Lx81_0_s:
 .string "=\\="
gzp65_g7_α:
bb46_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [rip + .Lx83_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp65_ω
 jmp gzp65_g8_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "-"
gzp65_g8_α:
bb47_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx85_0]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 80]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp65_ω
 jmp gzp65_g9_α
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
 .string "=\\="
gzp65_g9_α:
bb48_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [rip + .Lx87_0]
 mov rcx, 1
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp65_ω
 jmp gzp65_g10_α
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "+"
gzp65_g10_α:
bb49_α:
# IR_CELL_CALL
 lea rdi, [r12 + 120]
 mov esi, 15
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 64]
 call gzp57_α
.Lx89_0:
 test eax, eax
 jne gzp65_γ
 jmp gzp65_ω
 gzp65_g10_β:
 mov rdi, qword ptr [r12 + 120]
 call gzp57_β
 jmp .Lx89_0
# IR_CALLEE_FRAME
 gzp65_γ:
 mov eax, 1
 pop r12
 ret
 gzp65_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp57_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp65_g3_β
 jmp gzp65_g10_β
.section .rodata
.S0: .string "."
.S1: .string "[]"
.text
