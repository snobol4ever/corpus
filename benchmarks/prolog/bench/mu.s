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
 mov esi, 4
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
 mov dword ptr [r12 + 16], 1
 jmp gzi3_t
gzi3_c2:
# IR_CELL_ITE
 mov dword ptr [r12 + 16], 2
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
 mov eax, dword ptr [r12 + 16]
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
 lea rdi, [r12 + 8]
 mov esi, 3
 call rt_pl_cells_init@PLT
 jmp gzp24_g0_α
gzp24_g0_α:
bb12_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S3]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S3]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S4]
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
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp24_ω
 jmp gzp24_g1_α
gzp24_g1_α:
bb13_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 24]
 mov esi, 0
 mov rdx, 5
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_ω
 jmp gzp24_g2_α
gzp24_g2_α:
bb14_α:
# IR_CELL_CALL
 lea rdi, [r12 + 32]
 mov esi, 10
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 8]
 call gzp23_α
.Lx31_0:
 test eax, eax
 jne gzp24_g3_α
 jmp gzp24_ω
 gzp24_g2_β:
 mov rdi, qword ptr [r12 + 32]
 call gzp23_β
 jmp .Lx31_0
gzp24_g3_α:
bb15_α:
# IR_CELL_CUT
 jmp gzp24_γ
 gzp24_g3_β:
 jmp gzp24_ω
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
 gzp1_β:
 push r12
 mov r12, rdi
 jmp gzp24_g3_β
gzp23_α:
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
 mov esi, 5
 call rt_pl_cells_init@PLT
 jmp gzp36_g0_α
gzp36_g0_α:
bb18_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S3]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S4]
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
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp36_c0_adv
 jmp gzp36_g1_α
gzp36_g1_α:
bb19_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 32]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp36_c0_adv
 jmp gzp36_g2_α
gzp36_g2_α:
bb20_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S5]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S3]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S4]
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
 mov qword ptr [rsp + 0], rax
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S4]
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
 je gzp36_c0_adv
 jmp gzp36_γ
 gzp36_g2_β:
 jmp gzp36_c0_adv
gzp36_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp36_g3_α
gzp36_g3_α:
bb22_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 sub rsp, 16
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
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
 je gzp36_ω
 jmp gzp36_g4_α
gzp36_g4_α:
bb23_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx48_0]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, 0
 xor ecx, ecx
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp36_ω
 jmp gzp36_g5_α
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string ">"
gzp36_g5_α:
bb24_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 56]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [rip + .Lx50_0]
 mov rcx, 1
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp36_ω
 jmp gzp36_g6_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "-"
gzp36_g6_α:
bb25_α:
# IR_CELL_CALL
 lea rdi, [r12 + 72]
 mov esi, 10
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 48]
 call gzp23_α
.Lx52_0:
 test eax, eax
 jne gzp36_g7_α
 jmp gzp36_ω
 gzp36_g6_β:
 mov rdi, qword ptr [r12 + 72]
 call gzp23_β
 jmp .Lx52_0
gzp36_g7_α:
bb26_α:
# IR_CELL_CALL
 lea rdi, [r12 + 80]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 8]
 call gzp35_α
.Lx54_0:
 test eax, eax
 jne gzp36_γ
 jmp gzp36_g6_β
 gzp36_g7_β:
 mov rdi, qword ptr [r12 + 80]
 call gzp35_β
 jmp .Lx54_0
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
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp36_g2_β
 jmp gzp36_g7_β
gzp35_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov qword ptr [r12 + 8], rsi
 mov qword ptr [r12 + 16], rdx
 mov qword ptr [r12 + 24], rcx
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 jmp gzp62_g0_α
gzp62_g0_α:
bb31_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c0_adv
 jmp gzp62_g1_α
gzp62_g1_α:
bb32_α:
# IR_CELL_CALL
 lea rdi, [r12 + 32]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call gzp58_α
.Lx67_0:
 test eax, eax
 jne gzp62_γ
 jmp gzp62_c0_adv
 gzp62_g1_β:
 mov rdi, qword ptr [r12 + 32]
 call gzp58_β
 jmp .Lx67_0
gzp62_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g2_α
gzp62_g2_α:
bb34_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c1_adv
 jmp gzp62_g3_α
gzp62_g3_α:
bb35_α:
# IR_CELL_CALL
 lea rdi, [r12 + 40]
 mov esi, 5
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call gzp59_α
.Lx72_0:
 test eax, eax
 jne gzp62_γ
 jmp gzp62_c1_adv
 gzp62_g3_β:
 mov rdi, qword ptr [r12 + 40]
 call gzp59_β
 jmp .Lx72_0
gzp62_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g4_α
gzp62_g4_α:
bb37_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 3
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c2_adv
 jmp gzp62_g5_α
gzp62_g5_α:
bb38_α:
# IR_CELL_CALL
 lea rdi, [r12 + 48]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call gzp60_α
.Lx77_0:
 test eax, eax
 jne gzp62_γ
 jmp gzp62_c2_adv
 gzp62_g5_β:
 mov rdi, qword ptr [r12 + 48]
 call gzp60_β
 jmp .Lx77_0
gzp62_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g6_α
gzp62_g6_α:
bb40_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 4
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_ω
 jmp gzp62_g7_α
gzp62_g7_α:
bb41_α:
# IR_CELL_CALL
 lea rdi, [r12 + 56]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call gzp61_α
.Lx82_0:
 test eax, eax
 jne gzp62_γ
 jmp gzp62_ω
 gzp62_g7_β:
 mov rdi, qword ptr [r12 + 56]
 call gzp61_β
 jmp .Lx82_0
# IR_CALLEE_FRAME
 gzp62_γ:
 mov eax, 1
 pop r12
 ret
 gzp62_ω:
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
 je gzp62_g1_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp62_g3_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp62_g5_β
 jmp gzp62_g7_β
gzp58_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov qword ptr [r12 + 8], rsi
 mov qword ptr [r12 + 16], rdx
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 lea rdi, [r12 + 24]
 mov esi, 3
 call rt_pl_cells_init@PLT
 jmp gzp88_g0_α
gzp88_g0_α:
bb48_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S3]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S4]
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
 je gzp88_c0_adv
 jmp gzp88_g1_α
gzp88_g1_α:
bb49_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S3]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S4]
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
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp88_c0_adv
 jmp gzp88_γ
 gzp88_g1_β:
 jmp gzp88_c0_adv
gzp88_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp88_g2_α
gzp88_g2_α:
bb51_α:
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
 je gzp88_ω
 jmp gzp88_g3_α
gzp88_g3_α:
bb52_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
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
 je gzp88_ω
 jmp gzp88_g4_α
gzp88_g4_α:
bb53_α:
# IR_CELL_CALL
 lea rdi, [r12 + 48]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call gzp58_α
.Lx100_0:
 test eax, eax
 jne gzp88_γ
 jmp gzp88_ω
 gzp88_g4_β:
 mov rdi, qword ptr [r12 + 48]
 call gzp58_β
 jmp .Lx100_0
# IR_CALLEE_FRAME
 gzp88_γ:
 mov eax, 1
 pop r12
 ret
 gzp88_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp58_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp88_g1_β
 jmp gzp88_g4_β
gzp59_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov qword ptr [r12 + 8], rsi
 mov qword ptr [r12 + 16], rdx
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 lea rdi, [r12 + 24]
 mov esi, 2
 call rt_pl_cells_init@PLT
 jmp gzp105_g0_α
gzp105_g0_α:
bb58_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
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
 je gzp105_ω
 jmp gzp105_g1_α
gzp105_g1_α:
bb59_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
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
 je gzp105_ω
 jmp gzp105_g2_α
gzp105_g2_α:
bb60_α:
# IR_CELL_CALL
 lea rdi, [r12 + 40]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 32]
 call gzp104_α
.Lx112_0:
 test eax, eax
 jne gzp105_γ
 jmp gzp105_ω
 gzp105_g2_β:
 mov rdi, qword ptr [r12 + 40]
 call gzp104_β
 jmp .Lx112_0
# IR_CALLEE_FRAME
 gzp105_γ:
 mov eax, 1
 pop r12
 ret
 gzp105_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp59_β:
 push r12
 mov r12, rdi
 jmp gzp105_g2_β
gzp60_α:
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
 jmp gzp114_g0_α
gzp114_g0_α:
bb63_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S3]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S3]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S3]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 24]
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
 je gzp114_c0_adv
 jmp gzp114_g1_α
gzp114_g1_α:
bb64_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
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
 je gzp114_c0_adv
 jmp gzp114_γ
 gzp114_g1_β:
 jmp gzp114_c0_adv
gzp114_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp114_g2_α
gzp114_g2_α:
bb66_α:
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
 je gzp114_ω
 jmp gzp114_g3_α
gzp114_g3_α:
bb67_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 16]
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
 je gzp114_ω
 jmp gzp114_g4_α
gzp114_g4_α:
bb68_α:
# IR_CELL_CALL
 lea rdi, [r12 + 56]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 48]
 call gzp60_α
.Lx126_0:
 test eax, eax
 jne gzp114_γ
 jmp gzp114_ω
 gzp114_g4_β:
 mov rdi, qword ptr [r12 + 56]
 call gzp60_β
 jmp .Lx126_0
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
 gzp60_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp114_g1_β
 jmp gzp114_g4_β
gzp61_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov qword ptr [r12 + 8], rsi
 mov qword ptr [r12 + 16], rdx
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 lea rdi, [r12 + 24]
 mov esi, 3
 call rt_pl_cells_init@PLT
 jmp gzp130_g0_α
gzp130_g0_α:
bb73_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 16]
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
 je gzp130_c0_adv
 jmp gzp130_γ
 gzp130_g0_β:
 jmp gzp130_c0_adv
gzp130_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp130_g1_α
gzp130_g1_α:
bb75_α:
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
 je gzp130_ω
 jmp gzp130_g2_α
gzp130_g2_α:
bb76_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
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
 je gzp130_ω
 jmp gzp130_g3_α
gzp130_g3_α:
bb77_α:
# IR_CELL_CALL
 lea rdi, [r12 + 48]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call gzp61_α
.Lx140_0:
 test eax, eax
 jne gzp130_γ
 jmp gzp130_ω
 gzp130_g3_β:
 mov rdi, qword ptr [r12 + 48]
 call gzp61_β
 jmp .Lx140_0
# IR_CALLEE_FRAME
 gzp130_γ:
 mov eax, 1
 pop r12
 ret
 gzp130_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp61_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp130_g0_β
 jmp gzp130_g3_β
gzp104_α:
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
 jmp gzp144_g0_α
gzp144_g0_α:
bb82_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx147_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp144_c0_adv
 jmp gzp144_g1_α
.Lx147_0:
 .quad .Lx147_0_s
.Lx147_0_s:
 .string "[]"
gzp144_g1_α:
bb83_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 24]
 mov rsi, qword ptr [r12 + 16]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp144_c0_adv
 jmp gzp144_γ
 gzp144_g1_β:
 jmp gzp144_c0_adv
gzp144_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp144_g2_α
gzp144_g2_α:
bb85_α:
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
 je gzp144_ω
 jmp gzp144_g3_α
gzp144_g3_α:
bb86_α:
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
 je gzp144_ω
 jmp gzp144_g4_α
gzp144_g4_α:
bb87_α:
# IR_CELL_CALL
 lea rdi, [r12 + 56]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 48]
 call gzp104_α
.Lx156_0:
 test eax, eax
 jne gzp144_γ
 jmp gzp144_ω
 gzp144_g4_β:
 mov rdi, qword ptr [r12 + 56]
 call gzp104_β
 jmp .Lx156_0
# IR_CALLEE_FRAME
 gzp144_γ:
 mov eax, 1
 pop r12
 ret
 gzp144_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp104_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp144_g1_β
 jmp gzp144_g4_β
.section .rodata
.S0: .string "."
.S1: .string "m"
.S2: .string "u"
.S3: .string "i"
.S4: .string "[]"
.S5: .string "a"
.text
