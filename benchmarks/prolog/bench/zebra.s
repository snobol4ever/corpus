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
 mov esi, 111
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
 mov esi, 95
 call rt_pl_cells_init@PLT
 jmp gzp13_g0_α
gzp13_g0_α:
bb7_α:
# IR_CELL_CALL
 lea rdi, [r12 + 1544]
 mov esi, 26
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 call gzp9_α
.Lx16_0:
 test eax, eax
 jne gzp13_g1_α
 jmp gzp13_ω
 gzp13_g0_β:
 mov rdi, qword ptr [r12 + 1544]
 call gzp9_β
 jmp .Lx16_0
gzp13_g1_α:
bb8_α:
# IR_CELL_UNIFY
 sub rsp, 80
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
 lea rdx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 24]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 40]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 56]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1256]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g0_β
 jmp gzp13_g2_α
gzp13_g2_α:
bb9_α:
# IR_CELL_CALL
 lea rdi, [r12 + 1560]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 1256]
 lea rdx, [r12 + 8]
 call gzp10_α
.Lx20_0:
 test eax, eax
 jne gzp13_g3_α
 jmp gzp13_g0_β
 gzp13_g2_β:
 mov rdi, qword ptr [r12 + 1560]
 call gzp10_β
 jmp .Lx20_0
gzp13_g3_α:
bb10_α:
# IR_CELL_UNIFY
 sub rsp, 80
 lea rax, [r12 + 72]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S3]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S4]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 88]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 104]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1272]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g2_β
 jmp gzp13_g4_α
gzp13_g4_α:
bb11_α:
# IR_CELL_CALL
 lea rdi, [r12 + 1576]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 1272]
 lea rdx, [r12 + 8]
 call gzp10_α
.Lx24_0:
 test eax, eax
 jne gzp13_g5_α
 jmp gzp13_g2_β
 gzp13_g4_β:
 mov rdi, qword ptr [r12 + 1576]
 call gzp10_β
 jmp .Lx24_0
gzp13_g5_α:
bb12_α:
# IR_CELL_UNIFY
 sub rsp, 80
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S5]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 120]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 136]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S6]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 152]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1288]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g4_β
 jmp gzp13_g6_α
gzp13_g6_α:
bb13_α:
# IR_CELL_CALL
 lea rdi, [r12 + 1592]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 1288]
 lea rdx, [r12 + 8]
 call gzp10_α
.Lx28_0:
 test eax, eax
 jne gzp13_g7_α
 jmp gzp13_g4_β
 gzp13_g6_β:
 mov rdi, qword ptr [r12 + 1592]
 call gzp10_β
 jmp .Lx28_0
gzp13_g7_α:
bb14_α:
# IR_CELL_UNIFY
 sub rsp, 80
 lea rax, [r12 + 168]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S7]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 184]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S8]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 200]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1304]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g6_β
 jmp gzp13_g8_α
gzp13_g8_α:
bb15_α:
# IR_CELL_CALL
 lea rdi, [r12 + 1608]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 1304]
 lea rdx, [r12 + 8]
 call gzp10_α
.Lx32_0:
 test eax, eax
 jne gzp13_g9_α
 jmp gzp13_g6_β
 gzp13_g8_β:
 mov rdi, qword ptr [r12 + 1608]
 call gzp10_β
 jmp .Lx32_0
gzp13_g9_α:
bb16_α:
# IR_CELL_UNIFY
 sub rsp, 80
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S5]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 216]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 232]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 248]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 264]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1320]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g8_β
 jmp gzp13_g10_α
gzp13_g10_α:
bb17_α:
# IR_CELL_UNIFY
 sub rsp, 80
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S9]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 280]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 296]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 312]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 328]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1336]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g8_β
 jmp gzp13_g11_α
gzp13_g11_α:
bb18_α:
# IR_CELL_CALL
 lea rdi, [r12 + 1624]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 1320]
 lea rdx, [r12 + 1336]
 lea rcx, [r12 + 8]
 call gzp11_α
.Lx38_0:
 test eax, eax
 jne gzp13_g12_α
 jmp gzp13_g8_β
 gzp13_g11_β:
 mov rdi, qword ptr [r12 + 1624]
 call gzp11_β
 jmp .Lx38_0
gzp13_g12_α:
bb19_α:
# IR_CELL_UNIFY
 sub rsp, 80
 lea rax, [r12 + 344]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 360]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S10]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 376]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S11]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1352]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g11_β
 jmp gzp13_g13_α
gzp13_g13_α:
bb20_α:
# IR_CELL_CALL
 lea rdi, [r12 + 1640]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 1352]
 lea rdx, [r12 + 8]
 call gzp10_α
.Lx42_0:
 test eax, eax
 jne gzp13_g14_α
 jmp gzp13_g11_β
 gzp13_g13_β:
 mov rdi, qword ptr [r12 + 1640]
 call gzp10_β
 jmp .Lx42_0
gzp13_g14_α:
bb21_α:
# IR_CELL_UNIFY
 sub rsp, 80
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S12]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 392]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 408]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 424]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S13]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1368]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g13_β
 jmp gzp13_g15_α
gzp13_g15_α:
bb22_α:
# IR_CELL_CALL
 lea rdi, [r12 + 1656]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 1368]
 lea rdx, [r12 + 8]
 call gzp10_α
.Lx46_0:
 test eax, eax
 jne gzp13_g16_α
 jmp gzp13_g13_β
 gzp13_g15_β:
 mov rdi, qword ptr [r12 + 1656]
 call gzp10_β
 jmp .Lx46_0
gzp13_g16_α:
bb23_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 440]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 lea rax, [r12 + 456]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 sub rsp, 80
 lea rax, [r12 + 472]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 488]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 504]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S15]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 520]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [rip + .S0]
 mov esi, 5
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 80
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 lea rax, [r12 + 536]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 lea rax, [r12 + 552]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S16]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S14]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S14]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S14]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S14]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S14]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp13_g15_β
 jmp gzp13_g17_α
gzp13_g17_α:
bb24_α:
# IR_CELL_UNIFY
 sub rsp, 32
 sub rsp, 80
 lea rax, [r12 + 568]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S17]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 584]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 600]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 616]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [rip + .S0]
 mov esi, 5
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 80
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 632]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S14]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp13_g15_β
 jmp gzp13_g18_α
gzp13_g18_α:
bb25_α:
# IR_CELL_UNIFY
 sub rsp, 80
 lea rax, [r12 + 648]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 664]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 680]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 696]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S18]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1384]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g15_β
 jmp gzp13_g19_α
gzp13_g19_α:
bb26_α:
# IR_CELL_UNIFY
 sub rsp, 80
 lea rax, [r12 + 712]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 728]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S19]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 744]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 760]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1400]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g15_β
 jmp gzp13_g20_α
gzp13_g20_α:
bb27_α:
# IR_CELL_CALL
 lea rdi, [r12 + 1672]
 mov esi, 8
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 1384]
 lea rdx, [r12 + 1400]
 lea rcx, [r12 + 8]
 call gzp12_α
.Lx56_0:
 test eax, eax
 jne gzp13_g21_α
 jmp gzp13_g15_β
 gzp13_g20_β:
 mov rdi, qword ptr [r12 + 1672]
 call gzp12_β
 jmp .Lx56_0
gzp13_g21_α:
bb28_α:
# IR_CELL_UNIFY
 sub rsp, 80
 lea rax, [r12 + 776]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 792]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 808]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 824]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S13]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1416]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g20_β
 jmp gzp13_g22_α
gzp13_g22_α:
bb29_α:
# IR_CELL_UNIFY
 sub rsp, 80
 lea rax, [r12 + 840]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 856]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S20]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 872]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 888]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1432]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g20_β
 jmp gzp13_g23_α
gzp13_g23_α:
bb30_α:
# IR_CELL_CALL
 lea rdi, [r12 + 1688]
 mov esi, 8
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 1416]
 lea rdx, [r12 + 1432]
 lea rcx, [r12 + 8]
 call gzp12_α
.Lx62_0:
 test eax, eax
 jne gzp13_g24_α
 jmp gzp13_g20_β
 gzp13_g23_β:
 mov rdi, qword ptr [r12 + 1688]
 call gzp12_β
 jmp .Lx62_0
gzp13_g24_α:
bb31_α:
# IR_CELL_UNIFY
 sub rsp, 80
 lea rax, [r12 + 904]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 920]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 936]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S22]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1448]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g23_β
 jmp gzp13_g25_α
gzp13_g25_α:
bb32_α:
# IR_CELL_CALL
 lea rdi, [r12 + 1704]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 1448]
 lea rdx, [r12 + 8]
 call gzp10_α
.Lx66_0:
 test eax, eax
 jne gzp13_g26_α
 jmp gzp13_g23_β
 gzp13_g25_β:
 mov rdi, qword ptr [r12 + 1704]
 call gzp10_β
 jmp .Lx66_0
gzp13_g26_α:
bb33_α:
# IR_CELL_UNIFY
 sub rsp, 80
 lea rax, [r12 + 952]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S23]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 968]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 984]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S24]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1464]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g25_β
 jmp gzp13_g27_α
gzp13_g27_α:
bb34_α:
# IR_CELL_CALL
 lea rdi, [r12 + 1720]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 1464]
 lea rdx, [r12 + 8]
 call gzp10_α
.Lx70_0:
 test eax, eax
 jne gzp13_g28_α
 jmp gzp13_g25_β
 gzp13_g27_β:
 mov rdi, qword ptr [r12 + 1720]
 call gzp10_β
 jmp .Lx70_0
gzp13_g28_α:
bb35_α:
# IR_CELL_UNIFY
 sub rsp, 80
 lea rax, [r12 + 1000]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S17]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 1016]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 1032]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 1048]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1480]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g27_β
 jmp gzp13_g29_α
gzp13_g29_α:
bb36_α:
# IR_CELL_UNIFY
 sub rsp, 80
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S25]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 1064]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 1080]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 1096]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 1112]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1496]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g27_β
 jmp gzp13_g30_α
gzp13_g30_α:
bb37_α:
# IR_CELL_CALL
 lea rdi, [r12 + 1736]
 mov esi, 8
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 1480]
 lea rdx, [r12 + 1496]
 lea rcx, [r12 + 8]
 call gzp12_α
.Lx76_0:
 test eax, eax
 jne gzp13_g31_α
 jmp gzp13_g27_β
 gzp13_g30_β:
 mov rdi, qword ptr [r12 + 1736]
 call gzp12_β
 jmp .Lx76_0
gzp13_g31_α:
bb38_α:
# IR_CELL_UNIFY
 sub rsp, 80
 lea rax, [r12 + 1128]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 1144]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S26]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 1160]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 1176]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1512]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g30_β
 jmp gzp13_g32_α
gzp13_g32_α:
bb39_α:
# IR_CELL_CALL
 lea rdi, [r12 + 1752]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 1512]
 lea rdx, [r12 + 8]
 call gzp10_α
.Lx80_0:
 test eax, eax
 jne gzp13_g33_α
 jmp gzp13_g30_β
 gzp13_g32_β:
 mov rdi, qword ptr [r12 + 1752]
 call gzp10_β
 jmp .Lx80_0
gzp13_g33_α:
bb40_α:
# IR_CELL_UNIFY
 sub rsp, 80
 lea rax, [r12 + 1192]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 1208]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 1224]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S27]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 1240]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [r12 + 1528]
 lea rsi, [rip + .S0]
 mov edx, 5
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 80
 test eax, eax
 je gzp13_g32_β
 jmp gzp13_g34_α
gzp13_g34_α:
bb41_α:
# IR_CELL_CALL
 lea rdi, [r12 + 1768]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 1528]
 lea rdx, [r12 + 8]
 call gzp10_α
.Lx84_0:
 test eax, eax
 jne gzp13_γ
 jmp gzp13_g32_β
 gzp13_g34_β:
 mov rdi, qword ptr [r12 + 1768]
 call gzp10_β
 jmp .Lx84_0
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
 jmp gzp13_g34_β
gzp9_α:
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
 mov esi, 25
 call rt_pl_cells_init@PLT
 jmp gzp86_g0_α
gzp86_g0_α:
bb44_α:
# IR_CELL_UNIFY
 sub rsp, 32
 sub rsp, 80
 lea rax, [r12 + 24]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 40]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 56]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 72]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 88]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [rip + .S0]
 mov esi, 5
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 80
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 sub rsp, 80
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
 lea rax, [r12 + 136]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 152]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 168]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [rip + .S0]
 mov esi, 5
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 80
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 sub rsp, 80
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
 lea rax, [r12 + 216]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 232]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 248]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [rip + .S0]
 mov esi, 5
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 80
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 sub rsp, 80
 lea rax, [r12 + 264]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 280]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 296]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 312]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 328]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [rip + .S0]
 mov esi, 5
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 80
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 sub rsp, 80
 lea rax, [r12 + 344]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 360]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 376]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 392]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rax, [r12 + 408]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 64], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 72], r11
 lea rdi, [rip + .S0]
 mov esi, 5
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 80
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S16]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S14]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S14]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S14]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S14]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S14]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp86_ω
 jmp gzp86_γ
 gzp86_g0_β:
 jmp gzp86_ω
# IR_CALLEE_FRAME
 gzp86_γ:
 mov eax, 1
 pop r12
 ret
 gzp86_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp9_β:
 push r12
 mov r12, rdi
 jmp gzp86_g0_β
gzp10_α:
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
 jmp gzp91_g0_α
gzp91_g0_α:
bb47_α:
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
 lea rsi, [rip + .S14]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp91_c0_adv
 jmp gzp91_γ
 gzp91_g0_β:
 jmp gzp91_c0_adv
gzp91_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp91_g1_α
gzp91_g1_α:
bb49_α:
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
 lea rsi, [rip + .S14]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp91_ω
 jmp gzp91_g2_α
gzp91_g2_α:
bb50_α:
# IR_CELL_CALL
 lea rdi, [r12 + 88]
 mov esi, 6
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 72]
 call gzp10_α
.Lx99_0:
 test eax, eax
 jne gzp91_γ
 jmp gzp91_ω
 gzp91_g2_β:
 mov rdi, qword ptr [r12 + 88]
 call gzp10_β
 jmp .Lx99_0
# IR_CALLEE_FRAME
 gzp91_γ:
 mov eax, 1
 pop r12
 ret
 gzp91_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp10_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp91_g0_β
 jmp gzp91_g2_β
gzp11_α:
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
 jmp gzp103_g0_α
gzp103_g0_α:
bb55_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 24]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 lea rax, [r12 + 8]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 56]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S14]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 40]
 lea rsi, [rip + .S14]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp103_c0_adv
 jmp gzp103_γ
 gzp103_g0_β:
 jmp gzp103_c0_adv
gzp103_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp103_g1_α
gzp103_g1_α:
bb57_α:
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
 lea rdi, [r12 + 40]
 lea rsi, [rip + .S14]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp103_ω
 jmp gzp103_g2_α
gzp103_g2_α:
bb58_α:
# IR_CELL_CALL
 lea rdi, [r12 + 104]
 mov esi, 7
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 88]
 call gzp11_α
.Lx111_0:
 test eax, eax
 jne gzp103_γ
 jmp gzp103_ω
 gzp103_g2_β:
 mov rdi, qword ptr [r12 + 104]
 call gzp11_β
 jmp .Lx111_0
# IR_CALLEE_FRAME
 gzp103_γ:
 mov eax, 1
 pop r12
 ret
 gzp103_ω:
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
 je gzp103_g0_β
 jmp gzp103_g2_β
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
 mov r11, qword ptr [rcx + 0]
 mov qword ptr [r12 + 40], r11
 mov r11, qword ptr [rcx + 8]
 mov qword ptr [r12 + 48], r11
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 lea rdi, [r12 + 56]
 mov esi, 4
 call rt_pl_cells_init@PLT
 jmp gzp115_g0_α
gzp115_g0_α:
bb63_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 8]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 lea rax, [r12 + 24]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 56]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S14]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 40]
 lea rsi, [rip + .S14]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp115_c0_adv
 jmp gzp115_γ
 gzp115_g0_β:
 jmp gzp115_c0_adv
gzp115_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp115_g1_α
gzp115_g1_α:
bb65_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 24]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 lea rax, [r12 + 8]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 72]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S14]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 40]
 lea rsi, [rip + .S14]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp115_c1_adv
 jmp gzp115_γ
 gzp115_g1_β:
 jmp gzp115_c1_adv
gzp115_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp115_g2_α
gzp115_g2_α:
bb67_α:
# IR_CELL_UNIFY
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
 lea rdi, [r12 + 40]
 lea rsi, [rip + .S14]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp115_ω
 jmp gzp115_g3_α
gzp115_g3_α:
bb68_α:
# IR_CELL_CALL
 lea rdi, [r12 + 120]
 mov esi, 8
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 24]
 lea rcx, [r12 + 104]
 call gzp12_α
.Lx126_0:
 test eax, eax
 jne gzp115_γ
 jmp gzp115_ω
 gzp115_g3_β:
 mov rdi, qword ptr [r12 + 120]
 call gzp12_β
 jmp .Lx126_0
# IR_CALLEE_FRAME
 gzp115_γ:
 mov eax, 1
 pop r12
 ret
 gzp115_ω:
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
 je gzp115_g0_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp115_g1_β
 jmp gzp115_g3_β
.section .rodata
.S0: .string "house"
.S1: .string "red"
.S2: .string "english"
.S3: .string "spanish"
.S4: .string "dog"
.S5: .string "green"
.S6: .string "coffee"
.S7: .string "ukrainian"
.S8: .string "tea"
.S9: .string "ivory"
.S10: .string "snails"
.S11: .string "winstons"
.S12: .string "yellow"
.S13: .string "kools"
.S14: .string "."
.S15: .string "milk"
.S16: .string "[]"
.S17: .string "norwegian"
.S18: .string "chesterfields"
.S19: .string "fox"
.S20: .string "horse"
.S21: .string "orange_juice"
.S22: .string "lucky_strikes"
.S23: .string "japanese"
.S24: .string "parliaments"
.S25: .string "blue"
.S26: .string "zebra"
.S27: .string "water"
.text
