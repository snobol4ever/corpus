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
 mov esi, 6
 call rt_pl_gz_init@PLT
 jmp gzq0_g0_α
gzq0_g0_α:
bb2_α:
# IR_CELL_ITE
gzi6_g0_α:
bb3_α:
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
 sub rsp, 32
 lea rax, [r12 + 40]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 lea rax, [r12 + 56]
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
 lea rdi, [r12 + 72]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzi3_c2
 jmp gzi6_g1_α
gzi6_g1_α:
bb4_α:
# IR_CELL_CALL
 lea rdi, [r12 + 104]
 mov esi, 13
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 72]
 call gzp1_α
.Lx10_0:
 test eax, eax
 jne gzi3_c1
 jmp gzi3_c2
 gzi6_g1_β:
 mov rdi, qword ptr [r12 + 104]
 call gzp1_β
 jmp .Lx10_0
gzi3_c1:
# IR_CELL_ITE
 mov dword ptr [r12 + 120], 1
 jmp gzi3_t
gzi3_c2:
# IR_CELL_ITE
 mov dword ptr [r12 + 120], 2
 jmp gzi3_e
gzi3_t:
gzi15_g0_α:
bb7_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 8]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 lea rax, [r12 + 40]
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
 lea rdi, [r12 + 88]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzq0_ω
 jmp gzi15_g1_α
gzi15_g1_α:
bb8_α:
# IR_DET_WRITE
 lea rdi, [r12 + 88]
 call rt_pl_write_cell@PLT
 jmp gzq0_g1_α
 gzi15_g1_β:
 jmp gzq0_ω
gzi3_e:
gzi20_g0_α:
bb9_α:
# IR_DET_WRITE
 mov rdi, qword ptr [rip + .Lx22_0]
 call rt_write_atom@PLT
 jmp gzq0_g1_α
 gzi20_g0_β:
 jmp gzq0_ω
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "none"
# IR_CELL_ITE
 gzq0_g0_β:
 mov eax, dword ptr [r12 + 120]
 cmp eax, 1
 je gzi15_g1_β
 jmp gzi20_g0_β
gzq0_g1_α:
bb11_α:
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
 mov esi, 10
 call rt_pl_cells_init@PLT
 jmp gzp28_g0_α
gzp28_g0_α:
bb14_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 24]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 lea rax, [r12 + 40]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 lea rax, [r12 + 56]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 lea rax, [r12 + 72]
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
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S0]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp28_ω
 jmp gzp28_g1_α
gzp28_g1_α:
bb15_α:
# IR_CELL_CALL
 lea rdi, [r12 + 184]
 mov esi, 10
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 24]
 lea rdx, [r12 + 40]
 call gzp27_α
.Lx33_0:
 test eax, eax
 jne gzp28_g2_α
 jmp gzp28_ω
 gzp28_g1_β:
 mov rdi, qword ptr [r12 + 184]
 call gzp27_β
 jmp .Lx33_0
gzp28_g2_α:
bb16_α:
# IR_CELL_CALL
 lea rdi, [r12 + 200]
 mov esi, 10
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 56]
 lea rdx, [r12 + 72]
 call gzp27_α
.Lx35_0:
 test eax, eax
 jne gzp28_g3_α
 jmp gzp28_g1_β
 gzp28_g2_β:
 mov rdi, qword ptr [r12 + 200]
 call gzp27_β
 jmp .Lx35_0
gzp28_g3_α:
bb17_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx37_0]
 lea rsi, [r12 + 40]
 mov rdx, 0
 lea rcx, [r12 + 72]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g2_β
 jmp gzp28_g4_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string ">"
gzp28_g4_α:
bb18_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 120]
 mov esi, 0
 mov rdx, 20
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp28_g2_β
 jmp gzp28_g5_α
gzp28_g5_α:
bb19_α:
# IR_DET_IS
 lea rdi, [r12 + 88]
 lea rsi, [r12 + 120]
 lea rdx, [r12 + 40]
 mov rcx, qword ptr [rip + .Lx41_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp28_g2_β
 jmp gzp28_g6_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "*"
gzp28_g6_α:
bb20_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 136]
 mov esi, 0
 mov rdx, 21
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp28_g2_β
 jmp gzp28_g7_α
gzp28_g7_α:
bb21_α:
# IR_DET_IS
 lea rdi, [r12 + 104]
 lea rsi, [r12 + 136]
 lea rdx, [r12 + 72]
 mov rcx, qword ptr [rip + .Lx45_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp28_g2_β
 jmp gzp28_g8_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "*"
gzp28_g8_α:
bb22_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx47_0]
 lea rsi, [r12 + 88]
 mov rdx, 0
 lea rcx, [r12 + 104]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp28_g2_β
 jmp gzp28_γ
 gzp28_g8_β:
 jmp gzp28_g2_β
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "<"
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
 jmp gzp28_g8_β
gzp27_α:
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
 mov esi, 6
 call rt_pl_cells_init@PLT
 jmp gzp51_g0_α
gzp51_g0_α:
bb25_α:
# IR_CELL_CALL
 lea rdi, [r12 + 136]
 mov esi, 2
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 40]
 call gzp49_α
.Lx54_0:
 test eax, eax
 jne gzp51_g1_α
 jmp gzp51_ω
 gzp51_g0_β:
 mov rdi, qword ptr [r12 + 136]
 call gzp49_β
 jmp .Lx54_0
gzp51_g1_α:
bb26_α:
# IR_CELL_CALL
 lea rdi, [r12 + 152]
 mov esi, 2
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 56]
 call gzp50_α
.Lx56_0:
 test eax, eax
 jne gzp51_g2_α
 jmp gzp51_g0_β
 gzp51_g1_β:
 mov rdi, qword ptr [r12 + 152]
 call gzp50_β
 jmp .Lx56_0
gzp51_g2_α:
bb27_α:
# IR_DET_IS
 lea rdi, [r12 + 72]
 lea rsi, [r12 + 40]
 mov rdx, qword ptr [rip + .Lx58_0]
 mov rcx, 100
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp51_g1_β
 jmp gzp51_g3_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "*"
gzp51_g3_α:
bb28_α:
# IR_DET_IS
 lea rdi, [r12 + 24]
 lea rsi, [r12 + 72]
 lea rdx, [r12 + 56]
 mov rcx, qword ptr [rip + .Lx60_0]
 call rt_pl_is_cell_bivar@PLT
 test eax, eax
 je gzp51_g1_β
 jmp gzp51_γ
 gzp51_g3_β:
 jmp gzp51_g1_β
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "//"
# IR_CALLEE_FRAME
 gzp51_γ:
 mov eax, 1
 pop r12
 ret
 gzp51_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp27_β:
 push r12
 mov r12, rdi
 jmp gzp51_g3_β
gzp49_α:
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
 jmp gzp62_g0_α
gzp62_g0_α:
bb31_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx65_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c0_adv
 jmp gzp62_g1_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string "china"
gzp62_g1_α:
bb32_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 8250
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c0_adv
 jmp gzp62_γ
 gzp62_g1_β:
 jmp gzp62_c0_adv
gzp62_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g2_α
gzp62_g2_α:
bb34_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx70_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c1_adv
 jmp gzp62_g3_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "india"
gzp62_g3_α:
bb35_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 5863
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c1_adv
 jmp gzp62_γ
 gzp62_g3_β:
 jmp gzp62_c1_adv
gzp62_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g4_α
gzp62_g4_α:
bb37_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx75_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c2_adv
 jmp gzp62_g5_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "ussr"
gzp62_g5_α:
bb38_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 2521
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c2_adv
 jmp gzp62_γ
 gzp62_g5_β:
 jmp gzp62_c2_adv
gzp62_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g6_α
gzp62_g6_α:
bb40_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx80_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c3_adv
 jmp gzp62_g7_α
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "usa"
gzp62_g7_α:
bb41_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 2119
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c3_adv
 jmp gzp62_γ
 gzp62_g7_β:
 jmp gzp62_c3_adv
gzp62_c3_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 5
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g8_α
gzp62_g8_α:
bb43_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx85_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c4_adv
 jmp gzp62_g9_α
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
 .string "indonesia"
gzp62_g9_α:
bb44_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 1276
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c4_adv
 jmp gzp62_γ
 gzp62_g9_β:
 jmp gzp62_c4_adv
gzp62_c4_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 6
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g10_α
gzp62_g10_α:
bb46_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx90_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c5_adv
 jmp gzp62_g11_α
.Lx90_0:
 .quad .Lx90_0_s
.Lx90_0_s:
 .string "japan"
gzp62_g11_α:
bb47_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 1097
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c5_adv
 jmp gzp62_γ
 gzp62_g11_β:
 jmp gzp62_c5_adv
gzp62_c5_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 7
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g12_α
gzp62_g12_α:
bb49_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx95_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c6_adv
 jmp gzp62_g13_α
.Lx95_0:
 .quad .Lx95_0_s
.Lx95_0_s:
 .string "brazil"
gzp62_g13_α:
bb50_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 1042
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c6_adv
 jmp gzp62_γ
 gzp62_g13_β:
 jmp gzp62_c6_adv
gzp62_c6_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 8
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g14_α
gzp62_g14_α:
bb52_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx100_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c7_adv
 jmp gzp62_g15_α
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "bangladesh"
gzp62_g15_α:
bb53_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 750
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c7_adv
 jmp gzp62_γ
 gzp62_g15_β:
 jmp gzp62_c7_adv
gzp62_c7_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 9
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g16_α
gzp62_g16_α:
bb55_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx105_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c8_adv
 jmp gzp62_g17_α
.Lx105_0:
 .quad .Lx105_0_s
.Lx105_0_s:
 .string "pakistan"
gzp62_g17_α:
bb56_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 682
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c8_adv
 jmp gzp62_γ
 gzp62_g17_β:
 jmp gzp62_c8_adv
gzp62_c8_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 10
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g18_α
gzp62_g18_α:
bb58_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx110_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c9_adv
 jmp gzp62_g19_α
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "w_germany"
gzp62_g19_α:
bb59_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 620
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c9_adv
 jmp gzp62_γ
 gzp62_g19_β:
 jmp gzp62_c9_adv
gzp62_c9_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 11
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g20_α
gzp62_g20_α:
bb61_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx115_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c10_adv
 jmp gzp62_g21_α
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "nigeria"
gzp62_g21_α:
bb62_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 613
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c10_adv
 jmp gzp62_γ
 gzp62_g21_β:
 jmp gzp62_c10_adv
gzp62_c10_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 12
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g22_α
gzp62_g22_α:
bb64_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx120_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c11_adv
 jmp gzp62_g23_α
.Lx120_0:
 .quad .Lx120_0_s
.Lx120_0_s:
 .string "mexico"
gzp62_g23_α:
bb65_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 581
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c11_adv
 jmp gzp62_γ
 gzp62_g23_β:
 jmp gzp62_c11_adv
gzp62_c11_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 13
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g24_α
gzp62_g24_α:
bb67_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx125_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c12_adv
 jmp gzp62_g25_α
.Lx125_0:
 .quad .Lx125_0_s
.Lx125_0_s:
 .string "uk"
gzp62_g25_α:
bb68_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 559
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c12_adv
 jmp gzp62_γ
 gzp62_g25_β:
 jmp gzp62_c12_adv
gzp62_c12_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 14
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g26_α
gzp62_g26_α:
bb70_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx130_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c13_adv
 jmp gzp62_g27_α
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "italy"
gzp62_g27_α:
bb71_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 554
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c13_adv
 jmp gzp62_γ
 gzp62_g27_β:
 jmp gzp62_c13_adv
gzp62_c13_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 15
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g28_α
gzp62_g28_α:
bb73_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx135_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c14_adv
 jmp gzp62_g29_α
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "france"
gzp62_g29_α:
bb74_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 525
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c14_adv
 jmp gzp62_γ
 gzp62_g29_β:
 jmp gzp62_c14_adv
gzp62_c14_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 16
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g30_α
gzp62_g30_α:
bb76_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx140_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c15_adv
 jmp gzp62_g31_α
.Lx140_0:
 .quad .Lx140_0_s
.Lx140_0_s:
 .string "philippines"
gzp62_g31_α:
bb77_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 415
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c15_adv
 jmp gzp62_γ
 gzp62_g31_β:
 jmp gzp62_c15_adv
gzp62_c15_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 17
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g32_α
gzp62_g32_α:
bb79_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx145_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c16_adv
 jmp gzp62_g33_α
.Lx145_0:
 .quad .Lx145_0_s
.Lx145_0_s:
 .string "thailand"
gzp62_g33_α:
bb80_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 410
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c16_adv
 jmp gzp62_γ
 gzp62_g33_β:
 jmp gzp62_c16_adv
gzp62_c16_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 18
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g34_α
gzp62_g34_α:
bb82_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx150_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c17_adv
 jmp gzp62_g35_α
.Lx150_0:
 .quad .Lx150_0_s
.Lx150_0_s:
 .string "turkey"
gzp62_g35_α:
bb83_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 383
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c17_adv
 jmp gzp62_γ
 gzp62_g35_β:
 jmp gzp62_c17_adv
gzp62_c17_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 19
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g36_α
gzp62_g36_α:
bb85_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx155_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c18_adv
 jmp gzp62_g37_α
.Lx155_0:
 .quad .Lx155_0_s
.Lx155_0_s:
 .string "egypt"
gzp62_g37_α:
bb86_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 364
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c18_adv
 jmp gzp62_γ
 gzp62_g37_β:
 jmp gzp62_c18_adv
gzp62_c18_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 20
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g38_α
gzp62_g38_α:
bb88_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx160_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c19_adv
 jmp gzp62_g39_α
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "spain"
gzp62_g39_α:
bb89_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 352
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c19_adv
 jmp gzp62_γ
 gzp62_g39_β:
 jmp gzp62_c19_adv
gzp62_c19_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 21
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g40_α
gzp62_g40_α:
bb91_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx165_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c20_adv
 jmp gzp62_g41_α
.Lx165_0:
 .quad .Lx165_0_s
.Lx165_0_s:
 .string "poland"
gzp62_g41_α:
bb92_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 337
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c20_adv
 jmp gzp62_γ
 gzp62_g41_β:
 jmp gzp62_c20_adv
gzp62_c20_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 22
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g42_α
gzp62_g42_α:
bb94_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx170_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c21_adv
 jmp gzp62_g43_α
.Lx170_0:
 .quad .Lx170_0_s
.Lx170_0_s:
 .string "s_korea"
gzp62_g43_α:
bb95_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 335
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c21_adv
 jmp gzp62_γ
 gzp62_g43_β:
 jmp gzp62_c21_adv
gzp62_c21_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 23
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g44_α
gzp62_g44_α:
bb97_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx175_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c22_adv
 jmp gzp62_g45_α
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "iran"
gzp62_g45_α:
bb98_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 320
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c22_adv
 jmp gzp62_γ
 gzp62_g45_β:
 jmp gzp62_c22_adv
gzp62_c22_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 24
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g46_α
gzp62_g46_α:
bb100_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx180_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c23_adv
 jmp gzp62_g47_α
.Lx180_0:
 .quad .Lx180_0_s
.Lx180_0_s:
 .string "ethiopia"
gzp62_g47_α:
bb101_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 272
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_c23_adv
 jmp gzp62_γ
 gzp62_g47_β:
 jmp gzp62_c23_adv
gzp62_c23_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 25
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp62_g48_α
gzp62_g48_α:
bb103_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx185_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_ω
 jmp gzp62_g49_α
.Lx185_0:
 .quad .Lx185_0_s
.Lx185_0_s:
 .string "argentina"
gzp62_g49_α:
bb104_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 251
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp62_ω
 jmp gzp62_γ
 gzp62_g49_β:
 jmp gzp62_ω
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
 gzp49_β:
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
 mov eax, dword ptr [r12 + 4]
 cmp eax, 4
 je gzp62_g7_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 5
 je gzp62_g9_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 6
 je gzp62_g11_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 7
 je gzp62_g13_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 8
 je gzp62_g15_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 9
 je gzp62_g17_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 10
 je gzp62_g19_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 11
 je gzp62_g21_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 12
 je gzp62_g23_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 13
 je gzp62_g25_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 14
 je gzp62_g27_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 15
 je gzp62_g29_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 16
 je gzp62_g31_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 17
 je gzp62_g33_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 18
 je gzp62_g35_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 19
 je gzp62_g37_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 20
 je gzp62_g39_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 21
 je gzp62_g41_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 22
 je gzp62_g43_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 23
 je gzp62_g45_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 24
 je gzp62_g47_β
 jmp gzp62_g49_β
gzp50_α:
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
 jmp gzp214_g0_α
gzp214_g0_α:
bb132_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx217_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c0_adv
 jmp gzp214_g1_α
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
 .string "china"
gzp214_g1_α:
bb133_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 3380
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c0_adv
 jmp gzp214_γ
 gzp214_g1_β:
 jmp gzp214_c0_adv
gzp214_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g2_α
gzp214_g2_α:
bb135_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx222_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c1_adv
 jmp gzp214_g3_α
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "india"
gzp214_g3_α:
bb136_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 1139
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c1_adv
 jmp gzp214_γ
 gzp214_g3_β:
 jmp gzp214_c1_adv
gzp214_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g4_α
gzp214_g4_α:
bb138_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx227_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c2_adv
 jmp gzp214_g5_α
.Lx227_0:
 .quad .Lx227_0_s
.Lx227_0_s:
 .string "ussr"
gzp214_g5_α:
bb139_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 8708
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c2_adv
 jmp gzp214_γ
 gzp214_g5_β:
 jmp gzp214_c2_adv
gzp214_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g6_α
gzp214_g6_α:
bb141_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx232_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c3_adv
 jmp gzp214_g7_α
.Lx232_0:
 .quad .Lx232_0_s
.Lx232_0_s:
 .string "usa"
gzp214_g7_α:
bb142_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 3609
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c3_adv
 jmp gzp214_γ
 gzp214_g7_β:
 jmp gzp214_c3_adv
gzp214_c3_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 5
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g8_α
gzp214_g8_α:
bb144_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx237_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c4_adv
 jmp gzp214_g9_α
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "indonesia"
gzp214_g9_α:
bb145_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 570
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c4_adv
 jmp gzp214_γ
 gzp214_g9_β:
 jmp gzp214_c4_adv
gzp214_c4_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 6
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g10_α
gzp214_g10_α:
bb147_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx242_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c5_adv
 jmp gzp214_g11_α
.Lx242_0:
 .quad .Lx242_0_s
.Lx242_0_s:
 .string "japan"
gzp214_g11_α:
bb148_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 148
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c5_adv
 jmp gzp214_γ
 gzp214_g11_β:
 jmp gzp214_c5_adv
gzp214_c5_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 7
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g12_α
gzp214_g12_α:
bb150_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx247_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c6_adv
 jmp gzp214_g13_α
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "brazil"
gzp214_g13_α:
bb151_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 3288
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c6_adv
 jmp gzp214_γ
 gzp214_g13_β:
 jmp gzp214_c6_adv
gzp214_c6_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 8
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g14_α
gzp214_g14_α:
bb153_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx252_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c7_adv
 jmp gzp214_g15_α
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "bangladesh"
gzp214_g15_α:
bb154_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 55
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c7_adv
 jmp gzp214_γ
 gzp214_g15_β:
 jmp gzp214_c7_adv
gzp214_c7_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 9
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g16_α
gzp214_g16_α:
bb156_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx257_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c8_adv
 jmp gzp214_g17_α
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "pakistan"
gzp214_g17_α:
bb157_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 311
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c8_adv
 jmp gzp214_γ
 gzp214_g17_β:
 jmp gzp214_c8_adv
gzp214_c8_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 10
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g18_α
gzp214_g18_α:
bb159_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx262_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c9_adv
 jmp gzp214_g19_α
.Lx262_0:
 .quad .Lx262_0_s
.Lx262_0_s:
 .string "w_germany"
gzp214_g19_α:
bb160_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 96
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c9_adv
 jmp gzp214_γ
 gzp214_g19_β:
 jmp gzp214_c9_adv
gzp214_c9_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 11
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g20_α
gzp214_g20_α:
bb162_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx267_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c10_adv
 jmp gzp214_g21_α
.Lx267_0:
 .quad .Lx267_0_s
.Lx267_0_s:
 .string "nigeria"
gzp214_g21_α:
bb163_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 373
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c10_adv
 jmp gzp214_γ
 gzp214_g21_β:
 jmp gzp214_c10_adv
gzp214_c10_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 12
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g22_α
gzp214_g22_α:
bb165_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx272_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c11_adv
 jmp gzp214_g23_α
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
 .string "mexico"
gzp214_g23_α:
bb166_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 764
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c11_adv
 jmp gzp214_γ
 gzp214_g23_β:
 jmp gzp214_c11_adv
gzp214_c11_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 13
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g24_α
gzp214_g24_α:
bb168_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx277_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c12_adv
 jmp gzp214_g25_α
.Lx277_0:
 .quad .Lx277_0_s
.Lx277_0_s:
 .string "uk"
gzp214_g25_α:
bb169_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 86
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c12_adv
 jmp gzp214_γ
 gzp214_g25_β:
 jmp gzp214_c12_adv
gzp214_c12_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 14
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g26_α
gzp214_g26_α:
bb171_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx282_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c13_adv
 jmp gzp214_g27_α
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "italy"
gzp214_g27_α:
bb172_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 116
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c13_adv
 jmp gzp214_γ
 gzp214_g27_β:
 jmp gzp214_c13_adv
gzp214_c13_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 15
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g28_α
gzp214_g28_α:
bb174_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx287_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c14_adv
 jmp gzp214_g29_α
.Lx287_0:
 .quad .Lx287_0_s
.Lx287_0_s:
 .string "france"
gzp214_g29_α:
bb175_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 213
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c14_adv
 jmp gzp214_γ
 gzp214_g29_β:
 jmp gzp214_c14_adv
gzp214_c14_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 16
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g30_α
gzp214_g30_α:
bb177_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx292_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c15_adv
 jmp gzp214_g31_α
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
 .string "philippines"
gzp214_g31_α:
bb178_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 90
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c15_adv
 jmp gzp214_γ
 gzp214_g31_β:
 jmp gzp214_c15_adv
gzp214_c15_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 17
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g32_α
gzp214_g32_α:
bb180_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx297_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c16_adv
 jmp gzp214_g33_α
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "thailand"
gzp214_g33_α:
bb181_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 200
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c16_adv
 jmp gzp214_γ
 gzp214_g33_β:
 jmp gzp214_c16_adv
gzp214_c16_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 18
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g34_α
gzp214_g34_α:
bb183_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx302_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c17_adv
 jmp gzp214_g35_α
.Lx302_0:
 .quad .Lx302_0_s
.Lx302_0_s:
 .string "turkey"
gzp214_g35_α:
bb184_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 296
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c17_adv
 jmp gzp214_γ
 gzp214_g35_β:
 jmp gzp214_c17_adv
gzp214_c17_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 19
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g36_α
gzp214_g36_α:
bb186_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx307_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c18_adv
 jmp gzp214_g37_α
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string "egypt"
gzp214_g37_α:
bb187_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 386
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c18_adv
 jmp gzp214_γ
 gzp214_g37_β:
 jmp gzp214_c18_adv
gzp214_c18_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 20
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g38_α
gzp214_g38_α:
bb189_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx312_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c19_adv
 jmp gzp214_g39_α
.Lx312_0:
 .quad .Lx312_0_s
.Lx312_0_s:
 .string "spain"
gzp214_g39_α:
bb190_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 190
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c19_adv
 jmp gzp214_γ
 gzp214_g39_β:
 jmp gzp214_c19_adv
gzp214_c19_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 21
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g40_α
gzp214_g40_α:
bb192_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx317_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c20_adv
 jmp gzp214_g41_α
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string "poland"
gzp214_g41_α:
bb193_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 121
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c20_adv
 jmp gzp214_γ
 gzp214_g41_β:
 jmp gzp214_c20_adv
gzp214_c20_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 22
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g42_α
gzp214_g42_α:
bb195_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx322_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c21_adv
 jmp gzp214_g43_α
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "s_korea"
gzp214_g43_α:
bb196_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 37
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c21_adv
 jmp gzp214_γ
 gzp214_g43_β:
 jmp gzp214_c21_adv
gzp214_c21_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 23
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g44_α
gzp214_g44_α:
bb198_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx327_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c22_adv
 jmp gzp214_g45_α
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
 .string "iran"
gzp214_g45_α:
bb199_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 628
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c22_adv
 jmp gzp214_γ
 gzp214_g45_β:
 jmp gzp214_c22_adv
gzp214_c22_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 24
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g46_α
gzp214_g46_α:
bb201_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx332_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c23_adv
 jmp gzp214_g47_α
.Lx332_0:
 .quad .Lx332_0_s
.Lx332_0_s:
 .string "ethiopia"
gzp214_g47_α:
bb202_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 350
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_c23_adv
 jmp gzp214_γ
 gzp214_g47_β:
 jmp gzp214_c23_adv
gzp214_c23_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 25
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp214_g48_α
gzp214_g48_α:
bb204_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx337_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_ω
 jmp gzp214_g49_α
.Lx337_0:
 .quad .Lx337_0_s
.Lx337_0_s:
 .string "argentina"
gzp214_g49_α:
bb205_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 0
 mov rdx, 1080
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp214_ω
 jmp gzp214_γ
 gzp214_g49_β:
 jmp gzp214_ω
# IR_CALLEE_FRAME
 gzp214_γ:
 mov eax, 1
 pop r12
 ret
 gzp214_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp50_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp214_g1_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp214_g3_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp214_g5_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 4
 je gzp214_g7_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 5
 je gzp214_g9_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 6
 je gzp214_g11_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 7
 je gzp214_g13_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 8
 je gzp214_g15_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 9
 je gzp214_g17_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 10
 je gzp214_g19_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 11
 je gzp214_g21_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 12
 je gzp214_g23_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 13
 je gzp214_g25_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 14
 je gzp214_g27_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 15
 je gzp214_g29_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 16
 je gzp214_g31_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 17
 je gzp214_g33_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 18
 je gzp214_g35_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 19
 je gzp214_g37_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 20
 je gzp214_g39_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 21
 je gzp214_g41_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 22
 je gzp214_g43_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 23
 je gzp214_g45_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 24
 je gzp214_g47_β
 jmp gzp214_g49_β
.section .rodata
.S0: .string "."
.S1: .string "[]"
.S2: .string "china"
.S3: .string "india"
.S4: .string "ussr"
.S5: .string "usa"
.S6: .string "indonesia"
.S7: .string "japan"
.S8: .string "brazil"
.S9: .string "bangladesh"
.S10: .string "pakistan"
.S11: .string "w_germany"
.S12: .string "nigeria"
.S13: .string "mexico"
.S14: .string "uk"
.S15: .string "italy"
.S16: .string "france"
.S17: .string "philippines"
.S18: .string "thailand"
.S19: .string "turkey"
.S20: .string "egypt"
.S21: .string "spain"
.S22: .string "poland"
.S23: .string "s_korea"
.S24: .string "iran"
.S25: .string "ethiopia"
.S26: .string "argentina"
.text
