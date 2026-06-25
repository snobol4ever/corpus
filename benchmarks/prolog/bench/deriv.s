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
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 0
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 0
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 mov edi, 0
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 0
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 mov edi, 0
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
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
 .string "x"
gzq0_g2_α:
bb4_α:
# IR_CELL_CALL
 lea rdi, [r12 + 56]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 8]
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
 mov esi, 30
 call rt_pl_cells_init@PLT
 jmp gzp13_g0_α
gzp13_g0_α:
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
 lea rdi, [rip + .S1]
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
 je gzp13_c0_adv
 jmp gzp13_g1_α
gzp13_g1_α:
bb10_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
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
 je gzp13_c0_adv
 jmp gzp13_g2_α
gzp13_g2_α:
bb11_α:
# IR_CELL_CUT
 jmp gzp13_g3_α
 gzp13_g2_β:
 jmp gzp13_ω
gzp13_g3_α:
bb12_α:
# IR_CELL_CALL
 lea rdi, [r12 + 536]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 88]
 call gzp1_α
.Lx22_0:
 test eax, eax
 jne gzp13_g4_α
 jmp gzp13_g2_β
 gzp13_g3_β:
 mov rdi, qword ptr [r12 + 536]
 call gzp1_β
 jmp .Lx22_0
gzp13_g4_α:
bb13_α:
# IR_CELL_CALL
 lea rdi, [r12 + 552]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 104]
 call gzp1_α
.Lx24_0:
 test eax, eax
 jne gzp13_γ
 jmp gzp13_g3_β
 gzp13_g4_β:
 mov rdi, qword ptr [r12 + 552]
 call gzp1_β
 jmp .Lx24_0
gzp13_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp13_g5_α
gzp13_g5_α:
bb15_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
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
 je gzp13_c1_adv
 jmp gzp13_g6_α
gzp13_g6_α:
bb16_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
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
 je gzp13_c1_adv
 jmp gzp13_g7_α
gzp13_g7_α:
bb17_α:
# IR_CELL_CUT
 jmp gzp13_g8_α
 gzp13_g7_β:
 jmp gzp13_ω
gzp13_g8_α:
bb18_α:
# IR_CELL_CALL
 lea rdi, [r12 + 568]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 152]
 call gzp1_α
.Lx33_0:
 test eax, eax
 jne gzp13_g9_α
 jmp gzp13_g7_β
 gzp13_g8_β:
 mov rdi, qword ptr [r12 + 568]
 call gzp1_β
 jmp .Lx33_0
gzp13_g9_α:
bb19_α:
# IR_CELL_CALL
 lea rdi, [r12 + 584]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 168]
 call gzp1_α
.Lx35_0:
 test eax, eax
 jne gzp13_γ
 jmp gzp13_g8_β
 gzp13_g9_β:
 mov rdi, qword ptr [r12 + 584]
 call gzp1_β
 jmp .Lx35_0
gzp13_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp13_g10_α
gzp13_g10_α:
bb21_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 200]
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
 je gzp13_c2_adv
 jmp gzp13_g11_α
gzp13_g11_α:
bb22_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 sub rsp, 16
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S1]
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
 je gzp13_c2_adv
 jmp gzp13_g12_α
gzp13_g12_α:
bb23_α:
# IR_CELL_CUT
 jmp gzp13_g13_α
 gzp13_g12_β:
 jmp gzp13_ω
gzp13_g13_α:
bb24_α:
# IR_CELL_CALL
 lea rdi, [r12 + 600]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 216]
 call gzp1_α
.Lx44_0:
 test eax, eax
 jne gzp13_g14_α
 jmp gzp13_g12_β
 gzp13_g13_β:
 mov rdi, qword ptr [r12 + 600]
 call gzp1_β
 jmp .Lx44_0
gzp13_g14_α:
bb25_α:
# IR_CELL_CALL
 lea rdi, [r12 + 616]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 232]
 call gzp1_α
.Lx46_0:
 test eax, eax
 jne gzp13_γ
 jmp gzp13_g13_β
 gzp13_g14_β:
 mov rdi, qword ptr [r12 + 616]
 call gzp1_β
 jmp .Lx46_0
gzp13_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp13_g15_α
gzp13_g15_α:
bb27_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S5]
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
 je gzp13_c3_adv
 jmp gzp13_g16_α
gzp13_g16_α:
bb28_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [rsp + 0], rax
 mov edi, 0
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S5]
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
 je gzp13_c3_adv
 jmp gzp13_g17_α
gzp13_g17_α:
bb29_α:
# IR_CELL_CUT
 jmp gzp13_g18_α
 gzp13_g17_β:
 jmp gzp13_ω
gzp13_g18_α:
bb30_α:
# IR_CELL_CALL
 lea rdi, [r12 + 632]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 280]
 call gzp1_α
.Lx55_0:
 test eax, eax
 jne gzp13_g19_α
 jmp gzp13_g17_β
 gzp13_g18_β:
 mov rdi, qword ptr [r12 + 632]
 call gzp1_β
 jmp .Lx55_0
gzp13_g19_α:
bb31_α:
# IR_CELL_CALL
 lea rdi, [r12 + 648]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 296]
 call gzp1_α
.Lx57_0:
 test eax, eax
 jne gzp13_γ
 jmp gzp13_g18_β
 gzp13_g19_β:
 mov rdi, qword ptr [r12 + 648]
 call gzp1_β
 jmp .Lx57_0
gzp13_c3_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 5
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp13_g20_α
gzp13_g20_α:
bb33_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
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
 je gzp13_c4_adv
 jmp gzp13_g21_α
gzp13_g21_α:
bb34_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 sub rsp, 16
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
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
 je gzp13_c4_adv
 jmp gzp13_g22_α
gzp13_g22_α:
bb35_α:
# IR_CELL_CUT
 jmp gzp13_g23_α
 gzp13_g22_β:
 jmp gzp13_ω
gzp13_g23_α:
bb36_α:
# IR_DET_TYPE_TEST
 mov rdi, qword ptr [r12 + 328]
 mov rsi, qword ptr [rip + .Lx66_0]
 call rt_pl_type_test_cell@PLT
 test eax, eax
 je gzp13_g22_β
 jmp gzp13_g24_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "integer"
gzp13_g24_α:
bb37_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 360]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [rip + .Lx68_0]
 mov rcx, 1
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp13_g22_β
 jmp gzp13_g25_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "-"
gzp13_g25_α:
bb38_α:
# IR_CELL_CALL
 lea rdi, [r12 + 664]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 344]
 call gzp1_α
.Lx70_0:
 test eax, eax
 jne gzp13_γ
 jmp gzp13_g22_β
 gzp13_g25_β:
 mov rdi, qword ptr [r12 + 664]
 call gzp1_β
 jmp .Lx70_0
gzp13_c4_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 6
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp13_g26_α
gzp13_g26_α:
bb40_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S4]
 mov esi, 1
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp13_c5_adv
 jmp gzp13_g27_α
gzp13_g27_α:
bb41_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S4]
 mov esi, 1
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp13_c5_adv
 jmp gzp13_g28_α
gzp13_g28_α:
bb42_α:
# IR_CELL_CUT
 jmp gzp13_g29_α
 gzp13_g28_β:
 jmp gzp13_ω
gzp13_g29_α:
bb43_α:
# IR_CELL_CALL
 lea rdi, [r12 + 680]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 424]
 call gzp1_α
.Lx79_0:
 test eax, eax
 jne gzp13_γ
 jmp gzp13_g28_β
 gzp13_g29_β:
 mov rdi, qword ptr [r12 + 680]
 call gzp1_β
 jmp .Lx79_0
gzp13_c5_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 7
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp13_g30_α
gzp13_g30_α:
bb45_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S6]
 mov esi, 1
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp13_c6_adv
 jmp gzp13_g31_α
gzp13_g31_α:
bb46_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 sub rsp, 16
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S6]
 mov esi, 1
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 456]
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
 je gzp13_c6_adv
 jmp gzp13_g32_α
gzp13_g32_α:
bb47_α:
# IR_CELL_CUT
 jmp gzp13_g33_α
 gzp13_g32_β:
 jmp gzp13_ω
gzp13_g33_α:
bb48_α:
# IR_CELL_CALL
 lea rdi, [r12 + 696]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 456]
 call gzp1_α
.Lx88_0:
 test eax, eax
 jne gzp13_γ
 jmp gzp13_g32_β
 gzp13_g33_β:
 mov rdi, qword ptr [r12 + 696]
 call gzp1_β
 jmp .Lx88_0
gzp13_c6_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 8
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp13_g34_α
gzp13_g34_α:
bb50_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S7]
 mov esi, 1
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp13_c7_adv
 jmp gzp13_g35_α
gzp13_g35_α:
bb51_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S5]
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
 je gzp13_c7_adv
 jmp gzp13_g36_α
gzp13_g36_α:
bb52_α:
# IR_CELL_CUT
 jmp gzp13_g37_α
 gzp13_g36_β:
 jmp gzp13_ω
gzp13_g37_α:
bb53_α:
# IR_CELL_CALL
 lea rdi, [r12 + 712]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 488]
 call gzp1_α
.Lx97_0:
 test eax, eax
 jne gzp13_γ
 jmp gzp13_g36_β
 gzp13_g37_β:
 mov rdi, qword ptr [r12 + 712]
 call gzp1_β
 jmp .Lx97_0
gzp13_c7_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 9
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp13_g38_α
gzp13_g38_α:
bb55_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 24]
 mov rsi, qword ptr [r12 + 8]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp13_c8_adv
 jmp gzp13_g39_α
gzp13_g39_α:
bb56_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 40]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp13_c8_adv
 jmp gzp13_g40_α
gzp13_g40_α:
bb57_α:
# IR_CELL_CUT
 jmp gzp13_γ
 gzp13_g40_β:
 jmp gzp13_ω
gzp13_c8_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 10
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp13_g41_α
gzp13_g41_α:
bb59_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov rsi, qword ptr [r12 + 504]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp13_ω
 jmp gzp13_g42_α
gzp13_g42_α:
bb60_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 24]
 mov rsi, qword ptr [r12 + 520]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp13_ω
 jmp gzp13_g43_α
gzp13_g43_α:
bb61_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp13_ω
 jmp gzp13_γ
 gzp13_g43_β:
 jmp gzp13_ω
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
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp13_g4_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp13_g9_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp13_g14_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 4
 je gzp13_g19_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 5
 je gzp13_g25_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 6
 je gzp13_g29_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 7
 je gzp13_g33_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 8
 je gzp13_g37_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 9
 je gzp13_g40_β
 jmp gzp13_g43_β
.section .rodata
.S0: .string "*"
.S1: .string "+"
.S2: .string "x"
.S3: .string "^"
.S4: .string "-"
.S5: .string "/"
.S6: .string "exp"
.S7: .string "log"
.text
