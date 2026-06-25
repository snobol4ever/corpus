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
 mov esi, 17
 call rt_pl_gz_init@PLT
 jmp gzq0_g0_α
gzq0_g0_α:
bb2_α:
# IR_CELL_CALL
 lea rdi, [r12 + 280]
 mov esi, 48
 call rt_enter@PLT
 mov rdi, rax
 mov r11, qword ptr [r12 + 72]
 mov qword ptr [rdi + 72], r11
 mov r11, qword ptr [r12 + 88]
 mov qword ptr [rdi + 88], r11
 mov r11, qword ptr [r12 + 104]
 mov qword ptr [rdi + 104], r11
 mov r11, qword ptr [r12 + 120]
 mov qword ptr [rdi + 120], r11
 mov r11, qword ptr [r12 + 136]
 mov qword ptr [rdi + 136], r11
 mov r11, qword ptr [r12 + 152]
 mov qword ptr [rdi + 152], r11
 mov r11, qword ptr [r12 + 168]
 mov qword ptr [rdi + 168], r11
 mov r11, qword ptr [r12 + 184]
 mov qword ptr [rdi + 184], r11
 mov r11, qword ptr [r12 + 200]
 mov qword ptr [rdi + 200], r11
 mov r11, qword ptr [r12 + 216]
 mov qword ptr [rdi + 216], r11
 mov r11, qword ptr [r12 + 232]
 mov qword ptr [rdi + 232], r11
 mov r11, qword ptr [r12 + 248]
 mov qword ptr [rdi + 248], r11
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 mov r8, qword ptr [r12 + 56]
 call gzp1_α
.Lx4_0:
 test eax, eax
 jne gzq0_g1_α
 jmp gzq0_ω
 gzq0_g0_β:
 mov rdi, qword ptr [r12 + 280]
 call gzp1_β
 jmp .Lx4_0
gzq0_g1_α:
bb3_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 248]
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
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzq0_g0_β
 jmp gzq0_g2_α
gzq0_g2_α:
bb4_α:
# IR_DET_WRITE
 mov rdi, qword ptr [r12 + 264]
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
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 40], rcx
 mov qword ptr [r12 + 56], r8
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 lea rdi, [r12 + 264]
 mov esi, 10
 call rt_pl_cells_init@PLT
 jmp gzp17_g0_α
gzp17_g0_α:
bb8_α:
# IR_CELL_CALL
 lea rdi, [r12 + 424]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 8]
 call gzp11_α
.Lx20_0:
 test eax, eax
 jne gzp17_g1_α
 jmp gzp17_ω
 gzp17_g0_β:
 mov rdi, qword ptr [r12 + 424]
 call gzp11_β
 jmp .Lx20_0
gzp17_g1_α:
bb9_α:
# IR_CELL_CALL
 lea rdi, [r12 + 440]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 24]
 call gzp12_α
.Lx22_0:
 test eax, eax
 jne gzp17_g2_α
 jmp gzp17_g0_β
 gzp17_g1_β:
 mov rdi, qword ptr [r12 + 440]
 call gzp12_β
 jmp .Lx22_0
gzp17_g2_α:
bb10_α:
# IR_CELL_CALL
 lea rdi, [r12 + 456]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 40]
 call gzp12_α
.Lx24_0:
 test eax, eax
 jne gzp17_g3_α
 jmp gzp17_g1_β
 gzp17_g2_β:
 mov rdi, qword ptr [r12 + 456]
 call gzp12_β
 jmp .Lx24_0
gzp17_g3_α:
bb11_α:
# IR_CELL_CALL
 lea rdi, [r12 + 472]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 72]
 call gzp12_α
.Lx26_0:
 test eax, eax
 jne gzp17_g4_α
 jmp gzp17_g2_β
 gzp17_g3_β:
 mov rdi, qword ptr [r12 + 472]
 call gzp12_β
 jmp .Lx26_0
gzp17_g4_α:
bb12_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
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
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp17_g3_β
 jmp gzp17_g5_α
gzp17_g5_α:
bb13_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 264]
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
 je gzp17_g3_β
 jmp gzp17_g6_α
gzp17_g6_α:
bb14_α:
# IR_CELL_CALL
 lea rdi, [r12 + 488]
 mov esi, 5
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 72]
 mov rcx, qword ptr [r12 + 328]
 call gzp13_α
.Lx32_0:
 test eax, eax
 jne gzp17_g7_α
 jmp gzp17_g3_β
 gzp17_g6_β:
 mov rdi, qword ptr [r12 + 488]
 call gzp13_β
 jmp .Lx32_0
gzp17_g7_α:
bb15_α:
# IR_CELL_CALL
 lea rdi, [r12 + 504]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 88]
 call gzp14_α
.Lx34_0:
 test eax, eax
 jne gzp17_g8_α
 jmp gzp17_g6_β
 gzp17_g7_β:
 mov rdi, qword ptr [r12 + 504]
 call gzp14_β
 jmp .Lx34_0
gzp17_g8_α:
bb16_α:
# IR_CELL_CALL
 lea rdi, [r12 + 520]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 104]
 call gzp11_α
.Lx36_0:
 test eax, eax
 jne gzp17_g9_α
 jmp gzp17_g7_β
 gzp17_g8_β:
 mov rdi, qword ptr [r12 + 520]
 call gzp11_β
 jmp .Lx36_0
gzp17_g9_α:
bb17_α:
# IR_CELL_CALL
 lea rdi, [r12 + 536]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 120]
 call gzp12_α
.Lx38_0:
 test eax, eax
 jne gzp17_g10_α
 jmp gzp17_g8_β
 gzp17_g9_β:
 mov rdi, qword ptr [r12 + 536]
 call gzp12_β
 jmp .Lx38_0
gzp17_g10_α:
bb18_α:
# IR_CELL_CALL
 lea rdi, [r12 + 552]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 136]
 call gzp12_α
.Lx40_0:
 test eax, eax
 jne gzp17_g11_α
 jmp gzp17_g9_β
 gzp17_g10_β:
 mov rdi, qword ptr [r12 + 552]
 call gzp12_β
 jmp .Lx40_0
gzp17_g11_α:
bb19_α:
# IR_CELL_CALL
 lea rdi, [r12 + 568]
 mov esi, 3
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 264]
 call gzp15_α
.Lx42_0:
 test eax, eax
 jne gzp17_g12_α
 jmp gzp17_g10_β
 gzp17_g11_β:
 mov rdi, qword ptr [r12 + 568]
 call gzp15_β
 jmp .Lx42_0
gzp17_g12_α:
bb20_α:
# IR_CELL_CALL
 lea rdi, [r12 + 584]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 56]
 call gzp14_α
.Lx44_0:
 test eax, eax
 jne gzp17_g13_α
 jmp gzp17_g11_β
 gzp17_g12_β:
 mov rdi, qword ptr [r12 + 584]
 call gzp14_β
 jmp .Lx44_0
gzp17_g13_α:
bb21_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
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
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp17_g12_β
 jmp gzp17_g14_α
gzp17_g14_α:
bb22_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 280]
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
 je gzp17_g12_β
 jmp gzp17_g15_α
gzp17_g15_α:
bb23_α:
# IR_CELL_CALL
 lea rdi, [r12 + 600]
 mov esi, 5
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 360]
 call gzp13_α
.Lx50_0:
 test eax, eax
 jne gzp17_g16_α
 jmp gzp17_g12_β
 gzp17_g15_β:
 mov rdi, qword ptr [r12 + 600]
 call gzp13_β
 jmp .Lx50_0
gzp17_g16_α:
bb24_α:
# IR_CELL_CALL
 lea rdi, [r12 + 616]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 152]
 call gzp14_α
.Lx52_0:
 test eax, eax
 jne gzp17_g17_α
 jmp gzp17_g15_β
 gzp17_g16_β:
 mov rdi, qword ptr [r12 + 616]
 call gzp14_β
 jmp .Lx52_0
gzp17_g17_α:
bb25_α:
# IR_CELL_CALL
 lea rdi, [r12 + 632]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 168]
 call gzp11_α
.Lx54_0:
 test eax, eax
 jne gzp17_g18_α
 jmp gzp17_g16_β
 gzp17_g17_β:
 mov rdi, qword ptr [r12 + 632]
 call gzp11_β
 jmp .Lx54_0
gzp17_g18_α:
bb26_α:
# IR_CELL_CALL
 lea rdi, [r12 + 648]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 184]
 call gzp12_α
.Lx56_0:
 test eax, eax
 jne gzp17_g19_α
 jmp gzp17_g17_β
 gzp17_g18_β:
 mov rdi, qword ptr [r12 + 648]
 call gzp12_β
 jmp .Lx56_0
gzp17_g19_α:
bb27_α:
# IR_CELL_CALL
 lea rdi, [r12 + 664]
 mov esi, 3
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 280]
 call gzp15_α
.Lx58_0:
 test eax, eax
 jne gzp17_g20_α
 jmp gzp17_g18_β
 gzp17_g19_β:
 mov rdi, qword ptr [r12 + 664]
 call gzp15_β
 jmp .Lx58_0
gzp17_g20_α:
bb28_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 88]
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
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp17_g19_β
 jmp gzp17_g21_α
gzp17_g21_α:
bb29_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 152]
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
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp17_g19_β
 jmp gzp17_g22_α
gzp17_g22_α:
bb30_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 296]
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
 je gzp17_g19_β
 jmp gzp17_g23_α
gzp17_g23_α:
bb31_α:
# IR_CELL_CALL
 lea rdi, [r12 + 680]
 mov esi, 5
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 392]
 mov rcx, qword ptr [r12 + 408]
 call gzp16_α
.Lx66_0:
 test eax, eax
 jne gzp17_g24_α
 jmp gzp17_g19_β
 gzp17_g23_β:
 mov rdi, qword ptr [r12 + 680]
 call gzp16_β
 jmp .Lx66_0
gzp17_g24_α:
bb32_α:
# IR_CELL_CALL
 lea rdi, [r12 + 696]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 200]
 call gzp11_α
.Lx68_0:
 test eax, eax
 jne gzp17_g25_α
 jmp gzp17_g23_β
 gzp17_g24_β:
 mov rdi, qword ptr [r12 + 696]
 call gzp11_β
 jmp .Lx68_0
gzp17_g25_α:
bb33_α:
# IR_CELL_CALL
 lea rdi, [r12 + 712]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 216]
 call gzp11_α
.Lx70_0:
 test eax, eax
 jne gzp17_g26_α
 jmp gzp17_g24_β
 gzp17_g25_β:
 mov rdi, qword ptr [r12 + 712]
 call gzp11_β
 jmp .Lx70_0
gzp17_g26_α:
bb34_α:
# IR_CELL_CALL
 lea rdi, [r12 + 728]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 232]
 call gzp12_α
.Lx72_0:
 test eax, eax
 jne gzp17_g27_α
 jmp gzp17_g25_β
 gzp17_g26_β:
 mov rdi, qword ptr [r12 + 728]
 call gzp12_β
 jmp .Lx72_0
gzp17_g27_α:
bb35_α:
# IR_CELL_CALL
 lea rdi, [r12 + 744]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 248]
 call gzp12_α
.Lx74_0:
 test eax, eax
 jne gzp17_g28_α
 jmp gzp17_g26_β
 gzp17_g27_β:
 mov rdi, qword ptr [r12 + 744]
 call gzp12_β
 jmp .Lx74_0
gzp17_g28_α:
bb36_α:
# IR_CELL_CALL
 lea rdi, [r12 + 760]
 mov esi, 3
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 296]
 call gzp15_α
.Lx76_0:
 test eax, eax
 jne gzp17_γ
 jmp gzp17_g27_β
 gzp17_g28_β:
 mov rdi, qword ptr [r12 + 760]
 call gzp15_β
 jmp .Lx76_0
# IR_CALLEE_FRAME
 gzp17_γ:
 mov eax, 1
 pop r12
 ret
 gzp17_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp1_β:
 push r12
 mov r12, rdi
 jmp gzp17_g28_β
gzp11_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov qword ptr [r12 + 8], rsi
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 jmp gzp78_g0_α
gzp78_g0_α:
bb39_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp78_c0_adv
 jmp gzp78_γ
 gzp78_g0_β:
 jmp gzp78_c0_adv
gzp78_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp78_g1_α
gzp78_g1_α:
bb41_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 3
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp78_c1_adv
 jmp gzp78_γ
 gzp78_g1_β:
 jmp gzp78_c1_adv
gzp78_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp78_g2_α
gzp78_g2_α:
bb43_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 5
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp78_c2_adv
 jmp gzp78_γ
 gzp78_g2_β:
 jmp gzp78_c2_adv
gzp78_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp78_g3_α
gzp78_g3_α:
bb45_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 7
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp78_c3_adv
 jmp gzp78_γ
 gzp78_g3_β:
 jmp gzp78_c3_adv
gzp78_c3_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 5
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp78_g4_α
gzp78_g4_α:
bb47_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 9
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp78_ω
 jmp gzp78_γ
 gzp78_g4_β:
 jmp gzp78_ω
# IR_CALLEE_FRAME
 gzp78_γ:
 mov eax, 1
 pop r12
 ret
 gzp78_ω:
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
 je gzp78_g0_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp78_g1_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp78_g2_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 4
 je gzp78_g3_β
 jmp gzp78_g4_β
gzp12_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov qword ptr [r12 + 8], rsi
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 jmp gzp100_g0_α
gzp100_g0_α:
bb55_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp100_c0_adv
 jmp gzp100_γ
 gzp100_g0_β:
 jmp gzp100_c0_adv
gzp100_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp100_g1_α
gzp100_g1_α:
bb57_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp100_c1_adv
 jmp gzp100_γ
 gzp100_g1_β:
 jmp gzp100_c1_adv
gzp100_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp100_g2_α
gzp100_g2_α:
bb59_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 4
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp100_c2_adv
 jmp gzp100_γ
 gzp100_g2_β:
 jmp gzp100_c2_adv
gzp100_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp100_g3_α
gzp100_g3_α:
bb61_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 6
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp100_c3_adv
 jmp gzp100_γ
 gzp100_g3_β:
 jmp gzp100_c3_adv
gzp100_c3_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 5
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp100_g4_α
gzp100_g4_α:
bb63_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 8
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp100_ω
 jmp gzp100_γ
 gzp100_g4_β:
 jmp gzp100_ω
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
 gzp12_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp100_g0_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp100_g1_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp100_g2_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 4
 je gzp100_g3_β
 jmp gzp100_g4_β
gzp13_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov qword ptr [r12 + 8], rsi
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 40], rcx
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 lea rdi, [r12 + 56]
 mov esi, 1
 call rt_pl_cells_init@PLT
 jmp gzp123_g0_α
gzp123_g0_α:
bb71_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 56]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp123_ω
 jmp gzp123_g1_α
gzp123_g1_α:
bb72_α:
# IR_CELL_CALL
 lea rdi, [r12 + 72]
 mov esi, 26
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 56]
 mov r8, qword ptr [r12 + 40]
 call gzp122_α
.Lx128_0:
 test eax, eax
 jne gzp123_γ
 jmp gzp123_ω
 gzp123_g1_β:
 mov rdi, qword ptr [r12 + 72]
 call gzp122_β
 jmp .Lx128_0
# IR_CALLEE_FRAME
 gzp123_γ:
 mov eax, 1
 pop r12
 ret
 gzp123_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp13_β:
 push r12
 mov r12, rdi
 jmp gzp123_g1_β
gzp14_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov qword ptr [r12 + 8], rsi
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 jmp gzp130_g0_α
gzp130_g0_α:
bb75_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
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
bb77_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 4
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp130_c1_adv
 jmp gzp130_γ
 gzp130_g1_β:
 jmp gzp130_c1_adv
gzp130_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp130_g2_α
gzp130_g2_α:
bb79_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 6
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp130_c2_adv
 jmp gzp130_γ
 gzp130_g2_β:
 jmp gzp130_c2_adv
gzp130_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp130_g3_α
gzp130_g3_α:
bb81_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 8
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp130_ω
 jmp gzp130_γ
 gzp130_g3_β:
 jmp gzp130_ω
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
 gzp14_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp130_g0_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp130_g1_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp130_g2_β
 jmp gzp130_g3_β
gzp15_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov qword ptr [r12 + 8], rsi
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 lea rdi, [r12 + 24]
 mov esi, 1
 call rt_pl_cells_init@PLT
 jmp gzp148_g0_α
gzp148_g0_α:
bb88_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx151_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp148_c0_adv
 jmp gzp148_γ
 gzp148_g0_β:
 jmp gzp148_c0_adv
.Lx151_0:
 .quad .Lx151_0_s
.Lx151_0_s:
 .string "[]"
gzp148_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp148_g1_α
gzp148_g1_α:
bb90_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 0
 xor edx, edx
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
 je gzp148_ω
 jmp gzp148_g2_α
gzp148_g2_α:
bb91_α:
# IR_CELL_CALL
 lea rdi, [r12 + 40]
 mov esi, 3
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 24]
 call gzp15_α
.Lx156_0:
 test eax, eax
 jne gzp148_γ
 jmp gzp148_ω
 gzp148_g2_β:
 mov rdi, qword ptr [r12 + 40]
 call gzp15_β
 jmp .Lx156_0
# IR_CALLEE_FRAME
 gzp148_γ:
 mov eax, 1
 pop r12
 ret
 gzp148_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp15_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp148_g0_β
 jmp gzp148_g2_β
gzp16_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov qword ptr [r12 + 8], rsi
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 40], rcx
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 lea rdi, [r12 + 56]
 mov esi, 1
 call rt_pl_cells_init@PLT
 jmp gzp161_g0_α
gzp161_g0_α:
bb96_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 56]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp161_ω
 jmp gzp161_g1_α
gzp161_g1_α:
bb97_α:
# IR_CELL_CALL
 lea rdi, [r12 + 72]
 mov esi, 21
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 56]
 mov r8, qword ptr [r12 + 40]
 call gzp160_α
.Lx166_0:
 test eax, eax
 jne gzp161_γ
 jmp gzp161_ω
 gzp161_g1_β:
 mov rdi, qword ptr [r12 + 72]
 call gzp160_β
 jmp .Lx166_0
# IR_CALLEE_FRAME
 gzp161_γ:
 mov eax, 1
 pop r12
 ret
 gzp161_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp16_β:
 push r12
 mov r12, rdi
 jmp gzp161_g1_β
gzp122_α:
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
 mov esi, 21
 call rt_pl_cells_init@PLT
 jmp gzp168_g0_α
gzp168_g0_α:
bb100_α:
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
 je gzp168_c0_adv
 jmp gzp168_g1_α
gzp168_g1_α:
bb101_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 104]
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
 je gzp168_c0_adv
 jmp gzp168_g2_α
gzp168_g2_α:
bb102_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 168]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [rip + .Lx175_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp168_c0_adv
 jmp gzp168_g3_α
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "*"
gzp168_g3_α:
bb103_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 136]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 40]
 mov rcx, qword ptr [rip + .Lx177_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp168_c0_adv
 jmp gzp168_g4_α
.Lx177_0:
 .quad .Lx177_0_s
.Lx177_0_s:
 .string "+"
gzp168_g4_α:
bb104_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 104]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [rip + .Lx179_0]
 mov rcx, 10
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp168_c0_adv
 jmp gzp168_g5_α
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "mod"
gzp168_g5_α:
bb105_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 152]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [rip + .Lx181_0]
 mov rcx, 10
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp168_c0_adv
 jmp gzp168_g6_α
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "//"
gzp168_g6_α:
bb106_α:
# IR_CELL_CALL
 lea rdi, [r12 + 408]
 mov esi, 26
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 152]
 mov r8, qword ptr [r12 + 120]
 call gzp122_α
.Lx183_0:
 test eax, eax
 jne gzp168_γ
 jmp gzp168_c0_adv
 gzp168_g6_β:
 mov rdi, qword ptr [r12 + 408]
 call gzp122_β
 jmp .Lx183_0
gzp168_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp168_g7_α
gzp168_g7_α:
bb108_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx186_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp168_ω
 jmp gzp168_g8_α
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "[]"
gzp168_g8_α:
bb109_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 24]
 mov rsi, qword ptr [r12 + 296]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp168_ω
 jmp gzp168_g9_α
gzp168_g9_α:
bb110_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 328]
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
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp168_ω
 jmp gzp168_g10_α
gzp168_g10_α:
bb111_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 312]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [rip + .Lx192_0]
 mov rcx, 10
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp168_ω
 jmp gzp168_g11_α
.Lx192_0:
 .quad .Lx192_0_s
.Lx192_0_s:
 .string "mod"
gzp168_g11_α:
bb112_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 328]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [rip + .Lx194_0]
 mov rcx, 10
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp168_ω
 jmp gzp168_γ
 gzp168_g11_β:
 jmp gzp168_ω
.Lx194_0:
 .quad .Lx194_0_s
.Lx194_0_s:
 .string "//"
# IR_CALLEE_FRAME
 gzp168_γ:
 mov eax, 1
 pop r12
 ret
 gzp168_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp122_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp168_g6_β
 jmp gzp168_g11_β
gzp160_α:
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
 mov esi, 16
 call rt_pl_cells_init@PLT
 jmp gzp198_g0_α
gzp198_g0_α:
bb117_α:
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
 je gzp198_c0_adv
 jmp gzp198_g1_α
gzp198_g1_α:
bb118_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 104]
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
 je gzp198_c0_adv
 jmp gzp198_g2_α
gzp198_g2_α:
bb119_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 136]
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
 je gzp198_c0_adv
 jmp gzp198_g3_α
gzp198_g3_α:
bb120_α:
# IR_CELL_CUT
 jmp gzp198_g4_α
 gzp198_g3_β:
 jmp gzp198_ω
gzp198_g4_α:
bb121_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 200]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 104]
 mov rcx, qword ptr [rip + .Lx209_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp198_g3_β
 jmp gzp198_g5_α
.Lx209_0:
 .quad .Lx209_0_s
.Lx209_0_s:
 .string "+"
gzp198_g5_α:
bb122_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 168]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 40]
 mov rcx, qword ptr [rip + .Lx211_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp198_g3_β
 jmp gzp198_g6_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "+"
gzp198_g6_α:
bb123_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 136]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [rip + .Lx213_0]
 mov rcx, 10
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp198_g3_β
 jmp gzp198_g7_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "mod"
gzp198_g7_α:
bb124_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 184]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [rip + .Lx215_0]
 mov rcx, 10
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp198_g3_β
 jmp gzp198_g8_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "//"
gzp198_g8_α:
bb125_α:
# IR_CELL_CALL
 lea rdi, [r12 + 328]
 mov esi, 21
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 184]
 mov r8, qword ptr [r12 + 152]
 call gzp160_α
.Lx217_0:
 test eax, eax
 jne gzp198_γ
 jmp gzp198_g3_β
 gzp198_g8_β:
 mov rdi, qword ptr [r12 + 328]
 call gzp160_β
 jmp .Lx217_0
gzp198_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp198_g9_α
gzp198_g9_α:
bb127_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx220_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp198_c1_adv
 jmp gzp198_g10_α
.Lx220_0:
 .quad .Lx220_0_s
.Lx220_0_s:
 .string "[]"
gzp198_g10_α:
bb128_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp198_c1_adv
 jmp gzp198_g11_α
gzp198_g11_α:
bb129_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 56]
 mov rsi, qword ptr [r12 + 24]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp198_c1_adv
 jmp gzp198_g12_α
gzp198_g12_α:
bb130_α:
# IR_CELL_CUT
 jmp gzp198_γ
 gzp198_g12_β:
 jmp gzp198_ω
gzp198_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp198_g13_α
gzp198_g13_α:
bb132_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx229_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp198_ω
 jmp gzp198_g14_α
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "[]"
gzp198_g14_α:
bb133_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 24]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx231_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp198_ω
 jmp gzp198_g15_α
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "[]"
gzp198_g15_α:
bb134_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 40]
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
 je gzp198_ω
 jmp gzp198_γ
 gzp198_g15_β:
 jmp gzp198_ω
# IR_CALLEE_FRAME
 gzp198_γ:
 mov eax, 1
 pop r12
 ret
 gzp198_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp160_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp198_g8_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp198_g12_β
 jmp gzp198_g15_β
.section .rodata
.S0: .string "."
.S1: .string "[]"
.text
