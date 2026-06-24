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
 mov esi, 9
 call rt_pl_gz_init@PLT
 jmp gzq0_g0_α
gzq0_g0_α:
bb2_α:
# IR_CELL_ITE
gzi6_g0_α:
bb3_α:
# IR_CELL_CALL
 lea rdi, [r12 + 80]
 mov esi, 23
 call rt_enter@PLT
 mov rdi, rax
 mov r11, qword ptr [r12 + 40]
 mov qword ptr [rdi + 40], r11
 mov r11, qword ptr [r12 + 48]
 mov qword ptr [rdi + 48], r11
 mov r11, qword ptr [r12 + 56]
 mov qword ptr [rdi + 56], r11
 mov r11, qword ptr [r12 + 64]
 mov qword ptr [rdi + 64], r11
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8, qword ptr [r12 + 32]
 call gzp1_α
.Lx8_0:
 test eax, eax
 jne gzi3_c1
 jmp gzi3_c2
 gzi6_g0_β:
 mov rdi, qword ptr [r12 + 80]
 call gzp1_β
 jmp .Lx8_0
gzi3_c1:
# IR_CELL_ITE
 mov dword ptr [r12 + 88], 1
 jmp gzi3_t
gzi3_c2:
# IR_CELL_ITE
 mov dword ptr [r12 + 88], 2
 jmp gzi3_e
gzi3_t:
gzi13_g0_α:
bb6_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 64]
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
 jmp gzi13_g1_α
gzi13_g1_α:
bb7_α:
# IR_DET_WRITE
 mov rdi, qword ptr [r12 + 72]
 call rt_pl_write_cell@PLT
 jmp gzq0_g1_α
 gzi13_g1_β:
 jmp gzq0_ω
gzi3_e:
gzi18_g0_α:
bb8_α:
# IR_DET_WRITE
 mov rdi, qword ptr [rip + .Lx20_0]
 call rt_write_atom@PLT
 jmp gzq0_g1_α
 gzi18_g0_β:
 jmp gzq0_ω
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "none"
# IR_CELL_ITE
 gzq0_g0_β:
 mov eax, dword ptr [r12 + 88]
 cmp eax, 1
 je gzi13_g1_β
 jmp gzi18_g0_β
gzq0_g1_α:
bb10_α:
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
 mov qword ptr [r12 + 24], rcx
 mov qword ptr [r12 + 32], r8
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 lea rdi, [r12 + 72]
 mov esi, 4
 call rt_pl_cells_init@PLT
 jmp gzp28_g0_α
gzp28_g0_α:
bb13_α:
# IR_CELL_CALL
 lea rdi, [r12 + 104]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 32]
 call gzp25_α
.Lx31_0:
 test eax, eax
 jne gzp28_g1_α
 jmp gzp28_ω
 gzp28_g0_β:
 mov rdi, qword ptr [r12 + 104]
 call gzp25_β
 jmp .Lx31_0
gzp28_g1_α:
bb14_α:
# IR_CELL_CALL
 lea rdi, [r12 + 112]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 16]
 call gzp25_α
.Lx33_0:
 test eax, eax
 jne gzp28_g2_α
 jmp gzp28_g0_β
 gzp28_g1_β:
 mov rdi, qword ptr [r12 + 112]
 call gzp25_β
 jmp .Lx33_0
gzp28_g2_α:
bb15_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx35_0]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 16]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g1_β
 jmp gzp28_g3_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "=\\="
gzp28_g3_α:
bb16_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 96]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp28_g1_β
 jmp gzp28_g4_α
gzp28_g4_α:
bb17_α:
# IR_CELL_CALL
 lea rdi, [r12 + 120]
 mov esi, 13
 call rt_enter@PLT
 mov rdi, rax
 mov r11, qword ptr [r12 + 72]
 mov qword ptr [rdi + 40], r11
 mov rsi, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 16]
 mov r8, qword ptr [r12 + 64]
 call gzp26_α
.Lx39_0:
 test eax, eax
 jne gzp28_g5_α
 jmp gzp28_g1_β
 gzp28_g4_β:
 mov rdi, qword ptr [r12 + 120]
 call gzp26_β
 jmp .Lx39_0
gzp28_g5_α:
bb18_α:
# IR_CELL_CALL
 lea rdi, [r12 + 128]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 24]
 call gzp25_α
.Lx41_0:
 test eax, eax
 jne gzp28_g6_α
 jmp gzp28_g4_β
 gzp28_g5_β:
 mov rdi, qword ptr [r12 + 128]
 call gzp25_β
 jmp .Lx41_0
gzp28_g6_α:
bb19_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx43_0]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 64]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g5_β
 jmp gzp28_g7_α
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "=\\="
gzp28_g7_α:
bb20_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx45_0]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 16]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g5_β
 jmp gzp28_g8_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "=\\="
gzp28_g8_α:
bb21_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx47_0]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 32]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g5_β
 jmp gzp28_g9_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "=\\="
gzp28_g9_α:
bb22_α:
# IR_CELL_CALL
 lea rdi, [r12 + 136]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 56]
 call gzp25_α
.Lx49_0:
 test eax, eax
 jne gzp28_g10_α
 jmp gzp28_g5_β
 gzp28_g9_β:
 mov rdi, qword ptr [r12 + 136]
 call gzp25_β
 jmp .Lx49_0
gzp28_g10_α:
bb23_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx51_0]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 24]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g9_β
 jmp gzp28_g11_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "=\\="
gzp28_g11_α:
bb24_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx53_0]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 64]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g9_β
 jmp gzp28_g12_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "=\\="
gzp28_g12_α:
bb25_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx55_0]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 16]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g9_β
 jmp gzp28_g13_α
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "=\\="
gzp28_g13_α:
bb26_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx57_0]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 32]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g9_β
 jmp gzp28_g14_α
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "=\\="
gzp28_g14_α:
bb27_α:
# IR_CELL_CALL
 lea rdi, [r12 + 144]
 mov esi, 13
 call rt_enter@PLT
 mov rdi, rax
 mov r11, qword ptr [r12 + 80]
 mov qword ptr [rdi + 40], r11
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 56]
 mov r8, qword ptr [r12 + 16]
 call gzp26_α
.Lx59_0:
 test eax, eax
 jne gzp28_g15_α
 jmp gzp28_g9_β
 gzp28_g14_β:
 mov rdi, qword ptr [r12 + 144]
 call gzp26_β
 jmp .Lx59_0
gzp28_g15_α:
bb28_α:
# IR_CELL_CALL
 lea rdi, [r12 + 152]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 48]
 call gzp25_α
.Lx61_0:
 test eax, eax
 jne gzp28_g16_α
 jmp gzp28_g14_β
 gzp28_g15_β:
 mov rdi, qword ptr [r12 + 152]
 call gzp25_β
 jmp .Lx61_0
gzp28_g16_α:
bb29_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx63_0]
 mov rsi, qword ptr [r12 + 48]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 56]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g15_β
 jmp gzp28_g17_α
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "=\\="
gzp28_g17_α:
bb30_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx65_0]
 mov rsi, qword ptr [r12 + 48]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 24]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g15_β
 jmp gzp28_g18_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string "=\\="
gzp28_g18_α:
bb31_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx67_0]
 mov rsi, qword ptr [r12 + 48]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 64]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g15_β
 jmp gzp28_g19_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "=\\="
gzp28_g19_α:
bb32_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx69_0]
 mov rsi, qword ptr [r12 + 48]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 16]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g15_β
 jmp gzp28_g20_α
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "=\\="
gzp28_g20_α:
bb33_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx71_0]
 mov rsi, qword ptr [r12 + 48]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 32]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g15_β
 jmp gzp28_g21_α
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string "=\\="
gzp28_g21_α:
bb34_α:
# IR_CELL_CALL
 lea rdi, [r12 + 160]
 mov esi, 13
 call rt_enter@PLT
 mov rdi, rax
 mov r11, qword ptr [r12 + 88]
 mov qword ptr [rdi + 40], r11
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 48]
 mov r8, qword ptr [r12 + 24]
 call gzp26_α
.Lx73_0:
 test eax, eax
 jne gzp28_g22_α
 jmp gzp28_g15_β
 gzp28_g21_β:
 mov rdi, qword ptr [r12 + 160]
 call gzp26_β
 jmp .Lx73_0
gzp28_g22_α:
bb35_α:
# IR_CELL_CALL
 lea rdi, [r12 + 168]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 8]
 call gzp27_α
.Lx75_0:
 test eax, eax
 jne gzp28_g23_α
 jmp gzp28_g21_β
 gzp28_g22_β:
 mov rdi, qword ptr [r12 + 168]
 call gzp27_β
 jmp .Lx75_0
gzp28_g23_α:
bb36_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx77_0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 48]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g22_β
 jmp gzp28_g24_α
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string "=\\="
gzp28_g24_α:
bb37_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx79_0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 56]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g22_β
 jmp gzp28_g25_α
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "=\\="
gzp28_g25_α:
bb38_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx81_0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 24]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g22_β
 jmp gzp28_g26_α
.Lx81_0:
 .quad .Lx81_0_s
.Lx81_0_s:
 .string "=\\="
gzp28_g26_α:
bb39_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx83_0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 64]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g22_β
 jmp gzp28_g27_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "=\\="
gzp28_g27_α:
bb40_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx85_0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 16]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g22_β
 jmp gzp28_g28_α
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
 .string "=\\="
gzp28_g28_α:
bb41_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx87_0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 32]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g22_β
 jmp gzp28_g29_α
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "=\\="
gzp28_g29_α:
bb42_α:
# IR_CELL_CALL
 lea rdi, [r12 + 176]
 mov esi, 1
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 40]
 call gzp27_α
.Lx89_0:
 test eax, eax
 jne gzp28_g30_α
 jmp gzp28_g22_β
 gzp28_g29_β:
 mov rdi, qword ptr [r12 + 176]
 call gzp27_β
 jmp .Lx89_0
gzp28_g30_α:
bb43_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx91_0]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 8]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g29_β
 jmp gzp28_g31_α
.Lx91_0:
 .quad .Lx91_0_s
.Lx91_0_s:
 .string "=\\="
gzp28_g31_α:
bb44_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx93_0]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 48]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g29_β
 jmp gzp28_g32_α
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
 .string "=\\="
gzp28_g32_α:
bb45_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx95_0]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 56]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g29_β
 jmp gzp28_g33_α
.Lx95_0:
 .quad .Lx95_0_s
.Lx95_0_s:
 .string "=\\="
gzp28_g33_α:
bb46_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx97_0]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 24]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g29_β
 jmp gzp28_g34_α
.Lx97_0:
 .quad .Lx97_0_s
.Lx97_0_s:
 .string "=\\="
gzp28_g34_α:
bb47_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx99_0]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 64]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g29_β
 jmp gzp28_g35_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "=\\="
gzp28_g35_α:
bb48_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx101_0]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 16]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g29_β
 jmp gzp28_g36_α
.Lx101_0:
 .quad .Lx101_0_s
.Lx101_0_s:
 .string "=\\="
gzp28_g36_α:
bb49_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx103_0]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, 0
 mov rcx, qword ptr [r12 + 32]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g29_β
 jmp gzp28_g37_α
.Lx103_0:
 .quad .Lx103_0_s
.Lx103_0_s:
 .string "=\\="
gzp28_g37_α:
bb50_α:
# IR_CELL_CALL
 lea rdi, [r12 + 184]
 mov esi, 13
 call rt_enter@PLT
 mov rdi, rax
 mov r11, qword ptr [r12 + 40]
 mov qword ptr [rdi + 40], r11
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 40]
 mov r8, qword ptr [r12 + 48]
 call gzp26_α
.Lx105_0:
 test eax, eax
 jne gzp28_γ
 jmp gzp28_g29_β
 gzp28_g37_β:
 mov rdi, qword ptr [r12 + 184]
 call gzp26_β
 jmp .Lx105_0
# IR_CALLEE_FRAME
 gzp28_γ:
 mov eax, 1
 pop r12
 ret
 gzp28_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp1_β:
 push r12
 mov r12, rdi
 jmp gzp28_g37_β
gzp25_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov qword ptr [r12 + 8], rsi
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 jmp gzp107_g0_α
gzp107_g0_α:
bb53_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp107_c0_adv
 jmp gzp107_γ
 gzp107_g0_β:
 jmp gzp107_c0_adv
gzp107_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp107_g1_α
gzp107_g1_α:
bb55_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp107_c1_adv
 jmp gzp107_γ
 gzp107_g1_β:
 jmp gzp107_c1_adv
gzp107_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp107_g2_α
gzp107_g2_α:
bb57_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp107_c2_adv
 jmp gzp107_γ
 gzp107_g2_β:
 jmp gzp107_c2_adv
gzp107_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp107_g3_α
gzp107_g3_α:
bb59_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 3
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp107_c3_adv
 jmp gzp107_γ
 gzp107_g3_β:
 jmp gzp107_c3_adv
gzp107_c3_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 5
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp107_g4_α
gzp107_g4_α:
bb61_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 4
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp107_c4_adv
 jmp gzp107_γ
 gzp107_g4_β:
 jmp gzp107_c4_adv
gzp107_c4_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 6
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp107_g5_α
gzp107_g5_α:
bb63_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 5
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp107_c5_adv
 jmp gzp107_γ
 gzp107_g5_β:
 jmp gzp107_c5_adv
gzp107_c5_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 7
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp107_g6_α
gzp107_g6_α:
bb65_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 6
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp107_c6_adv
 jmp gzp107_γ
 gzp107_g6_β:
 jmp gzp107_c6_adv
gzp107_c6_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 8
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp107_g7_α
gzp107_g7_α:
bb67_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 7
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp107_c7_adv
 jmp gzp107_γ
 gzp107_g7_β:
 jmp gzp107_c7_adv
gzp107_c7_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 9
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp107_g8_α
gzp107_g8_α:
bb69_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 8
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp107_c8_adv
 jmp gzp107_γ
 gzp107_g8_β:
 jmp gzp107_c8_adv
gzp107_c8_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 10
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp107_g9_α
gzp107_g9_α:
bb71_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 9
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp107_ω
 jmp gzp107_γ
 gzp107_g9_β:
 jmp gzp107_ω
# IR_CALLEE_FRAME
 gzp107_γ:
 mov eax, 1
 pop r12
 ret
 gzp107_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp25_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp107_g0_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp107_g1_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp107_g2_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 4
 je gzp107_g3_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 5
 je gzp107_g4_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 6
 je gzp107_g5_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 7
 je gzp107_g6_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 8
 je gzp107_g7_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 9
 je gzp107_g8_β
 jmp gzp107_g9_β
gzp26_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov qword ptr [r12 + 8], rsi
 mov qword ptr [r12 + 16], rdx
 mov qword ptr [r12 + 24], rcx
 mov qword ptr [r12 + 32], r8
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 lea rdi, [r12 + 48]
 mov esi, 8
 call rt_pl_cells_init@PLT
 jmp gzp149_g0_α
gzp149_g0_α:
bb84_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 56]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [rip + .Lx152_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp149_ω
 jmp gzp149_g1_α
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "+"
gzp149_g1_α:
bb85_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [rip + .Lx154_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp149_ω
 jmp gzp149_g2_α
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
 .string "+"
gzp149_g2_α:
bb86_α:
# IR_CELL_ITE
gzi158_g0_α:
bb87_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx160_0]
 mov rsi, qword ptr [r12 + 48]
 mov rdx, 0
 xor ecx, ecx
 mov r8, 10
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzi155_c2
 jmp gzi155_c1
 gzi158_g0_β:
 jmp gzi155_c2
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "<"
gzi155_c1:
# IR_CELL_ITE
 mov dword ptr [r12 + 64], 1
 jmp gzi155_t
gzi155_c2:
# IR_CELL_ITE
 mov dword ptr [r12 + 64], 2
 jmp gzi155_e
gzi155_t:
gzi165_g0_α:
bb90_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 48]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp149_ω
 jmp gzi165_g1_α
gzi165_g1_α:
bb91_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 40]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp149_ω
 jmp gzp149_γ
 gzi165_g1_β:
 jmp gzp149_ω
gzi155_e:
gzi170_g0_α:
bb92_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [rip + .Lx172_0]
 mov rcx, 10
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp149_ω
 jmp gzi170_g1_α
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
 .string "-"
gzi170_g1_α:
bb93_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 40]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp149_ω
 jmp gzp149_γ
 gzi170_g1_β:
 jmp gzp149_ω
# IR_CELL_ITE
 gzp149_g2_β:
 mov eax, dword ptr [r12 + 64]
 cmp eax, 1
 je gzi165_g1_β
 jmp gzi170_g1_β
# IR_CALLEE_FRAME
 gzp149_γ:
 mov eax, 1
 pop r12
 ret
 gzp149_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp26_β:
 push r12
 mov r12, rdi
 jmp gzp149_g2_β
gzp27_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov qword ptr [r12 + 8], rsi
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 jmp gzp178_g0_α
gzp178_g0_α:
bb97_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp178_c0_adv
 jmp gzp178_γ
 gzp178_g0_β:
 jmp gzp178_c0_adv
gzp178_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp178_g1_α
gzp178_g1_α:
bb99_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp178_c1_adv
 jmp gzp178_γ
 gzp178_g1_β:
 jmp gzp178_c1_adv
gzp178_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp178_g2_α
gzp178_g2_α:
bb101_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 3
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp178_c2_adv
 jmp gzp178_γ
 gzp178_g2_β:
 jmp gzp178_c2_adv
gzp178_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp178_g3_α
gzp178_g3_α:
bb103_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 4
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp178_c3_adv
 jmp gzp178_γ
 gzp178_g3_β:
 jmp gzp178_c3_adv
gzp178_c3_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 5
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp178_g4_α
gzp178_g4_α:
bb105_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 5
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp178_c4_adv
 jmp gzp178_γ
 gzp178_g4_β:
 jmp gzp178_c4_adv
gzp178_c4_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 6
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp178_g5_α
gzp178_g5_α:
bb107_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 6
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp178_c5_adv
 jmp gzp178_γ
 gzp178_g5_β:
 jmp gzp178_c5_adv
gzp178_c5_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 7
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp178_g6_α
gzp178_g6_α:
bb109_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 7
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp178_c6_adv
 jmp gzp178_γ
 gzp178_g6_β:
 jmp gzp178_c6_adv
gzp178_c6_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 8
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp178_g7_α
gzp178_g7_α:
bb111_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 8
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp178_c7_adv
 jmp gzp178_γ
 gzp178_g7_β:
 jmp gzp178_c7_adv
gzp178_c7_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 9
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp178_g8_α
gzp178_g8_α:
bb113_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov esi, 0
 mov rdx, 9
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp178_ω
 jmp gzp178_γ
 gzp178_g8_β:
 jmp gzp178_ω
# IR_CALLEE_FRAME
 gzp178_γ:
 mov eax, 1
 pop r12
 ret
 gzp178_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp27_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp178_g0_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp178_g1_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp178_g2_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 4
 je gzp178_g3_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 5
 je gzp178_g4_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 6
 je gzp178_g5_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 7
 je gzp178_g6_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 8
 je gzp178_g7_β
 jmp gzp178_g8_β
.section .rodata
.S0: .string "."
.S1: .string "[]"
.text
