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
 mov esi, 2
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
 mov dword ptr [r12 + 24], 1
 jmp gzi3_t
gzi3_c2:
# IR_CELL_ITE
 mov dword ptr [r12 + 24], 2
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
 mov eax, dword ptr [r12 + 24]
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
 mov esi, 1
 call rt_pl_cells_init@PLT
 jmp gzp24_g0_α
gzp24_g0_α:
bb12_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx27_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp24_ω
 jmp gzp24_g1_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "qsort"
gzp24_g1_α:
bb13_α:
# IR_CELL_CALL
 lea rdi, [r12 + 24]
 mov esi, 5
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 call gzp23_α
.Lx29_0:
 test eax, eax
 jne gzp24_γ
 jmp gzp24_ω
 gzp24_g1_β:
 mov rdi, qword ptr [r12 + 24]
 call gzp23_β
 jmp .Lx29_0
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
 jmp gzp24_g1_β
gzp23_α:
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
 mov esi, 2
 call rt_pl_cells_init@PLT
 jmp gzp32_g0_α
gzp32_g0_α:
bb16_α:
# IR_CELL_CALL
 lea rdi, [r12 + 56]
 mov esi, 29
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 24]
 call gzp31_α
.Lx35_0:
 test eax, eax
 jne gzp32_g1_α
 jmp gzp32_ω
 gzp32_g0_β:
 mov rdi, qword ptr [r12 + 56]
 call gzp31_β
 jmp .Lx35_0
gzp32_g1_α:
bb17_α:
# IR_CELL_ITE
gzi39_g0_α:
bb18_α:
# IR_DET_TYPE_TEST
 lea rdi, [r12 + 24]
 mov rsi, qword ptr [rip + .Lx41_0]
 call rt_pl_type_test_cell@PLT
 test eax, eax
 je gzi36_c2
 jmp gzi36_c1
 gzi39_g0_β:
 jmp gzi36_c2
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "nonvar"
gzi36_c1:
# IR_CELL_ITE
 mov dword ptr [r12 + 40], 1
 jmp gzi36_t
gzi36_c2:
# IR_CELL_ITE
 mov dword ptr [r12 + 40], 2
 jmp gzp32_γ
gzi36_t:
gzi46_g0_α:
bb21_α:
# IR_CELL_CALL
 lea rdi, [r12 + 72]
 mov esi, 5
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 24]
 call gzp23_α
.Lx48_0:
 test eax, eax
 jne gzp32_γ
 jmp gzp32_g0_β
 gzi46_g0_β:
 mov rdi, qword ptr [r12 + 72]
 call gzp23_β
 jmp .Lx48_0
# IR_CELL_ITE
 gzp32_g1_β:
 mov eax, dword ptr [r12 + 40]
 cmp eax, 1
 je gzi46_g0_β
 jmp gzp32_g0_β
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
 gzp23_β:
 push r12
 mov r12, rdi
 jmp gzp32_g1_β
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
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 lea rdi, [r12 + 40]
 mov esi, 18
 call rt_pl_cells_init@PLT
 jmp gzp56_g0_α
gzp56_g0_α:
bb25_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 lea rsi, [r12 + 40]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp56_c0_adv
 jmp gzp56_g1_α
gzp56_g1_α:
bb26_α:
# IR_DET_TYPE_TEST
 lea rdi, [r12 + 8]
 mov rsi, qword ptr [rip + .Lx61_0]
 call rt_pl_type_test_cell@PLT
 test eax, eax
 je gzp56_c0_adv
 jmp gzp56_g2_α
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "var"
gzp56_g2_α:
bb27_α:
# IR_CELL_CUT
 jmp gzp56_g3_α
 gzp56_g2_β:
 jmp gzp56_ω
gzp56_g3_α:
bb28_α:
# IR_FAIL
 jmp gzp56_g2_β
 gzp56_g3_β:
 jmp gzp56_g2_β
gzp56_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp56_g4_α
gzp56_g4_α:
bb30_α:
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
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S1]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp56_c1_adv
 jmp gzp56_g5_α
gzp56_g5_α:
bb31_α:
# IR_CELL_CUT
 jmp gzp56_g6_α
 gzp56_g5_β:
 jmp gzp56_ω
gzp56_g6_α:
bb32_α:
# IR_CELL_CALL
 lea rdi, [r12 + 328]
 mov esi, 29
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 56]
 lea rdx, [r12 + 88]
 call gzp31_α
.Lx71_0:
 test eax, eax
 jne gzp56_g7_α
 jmp gzp56_g5_β
 gzp56_g6_β:
 mov rdi, qword ptr [r12 + 328]
 call gzp31_β
 jmp .Lx71_0
gzp56_g7_α:
bb33_α:
# IR_CELL_ITE
gzi75_g0_α:
bb34_α:
# IR_DET_TYPE_TEST
 lea rdi, [r12 + 88]
 mov rsi, qword ptr [rip + .Lx77_0]
 call rt_pl_type_test_cell@PLT
 test eax, eax
 je gzi72_c2
 jmp gzi72_c1
 gzi75_g0_β:
 jmp gzi72_c2
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string "nonvar"
gzi72_c1:
# IR_CELL_ITE
 mov dword ptr [r12 + 104], 1
 jmp gzi72_t
gzi72_c2:
# IR_CELL_ITE
 mov dword ptr [r12 + 104], 2
 jmp gzi72_e
gzi72_t:
gzi82_g0_α:
bb37_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 88]
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
 lea rsi, [rip + .S1]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp56_g6_β
 jmp gzp56_γ
 gzi82_g0_β:
 jmp gzp56_g6_β
gzi72_e:
gzi85_g0_α:
bb38_α:
# IR_CELL_CALL
 lea rdi, [r12 + 344]
 mov esi, 29
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 72]
 lea rdx, [r12 + 24]
 call gzp31_α
.Lx87_0:
 test eax, eax
 jne gzp56_γ
 jmp gzp56_g6_β
 gzi85_g0_β:
 mov rdi, qword ptr [r12 + 344]
 call gzp31_β
 jmp .Lx87_0
# IR_CELL_ITE
 gzp56_g7_β:
 mov eax, dword ptr [r12 + 104]
 cmp eax, 1
 je gzi82_g0_β
 jmp gzi85_g0_β
gzp56_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp56_g8_α
gzp56_g8_α:
bb41_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 120]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 136]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S2]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp56_c2_adv
 jmp gzp56_g9_α
gzp56_g9_α:
bb42_α:
# IR_CELL_CUT
 jmp gzp56_g10_α
 gzp56_g9_β:
 jmp gzp56_ω
gzp56_g10_α:
bb43_α:
# IR_CELL_CALL
 lea rdi, [r12 + 360]
 mov esi, 17
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 120]
 lea rdx, [r12 + 136]
 lea rcx, [r12 + 24]
 call gzp52_α
.Lx96_0:
 test eax, eax
 jne gzp56_γ
 jmp gzp56_g9_β
 gzp56_g10_β:
 mov rdi, qword ptr [r12 + 360]
 call gzp52_β
 jmp .Lx96_0
gzp56_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp56_g11_α
gzp56_g11_α:
bb45_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 152]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 168]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S3]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp56_c3_adv
 jmp gzp56_g12_α
gzp56_g12_α:
bb46_α:
# IR_CELL_CUT
 jmp gzp56_g13_α
 gzp56_g12_β:
 jmp gzp56_ω
gzp56_g13_α:
bb47_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 152]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 168]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 184]
 lea rsi, [rip + .S3]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp56_g12_β
 jmp gzp56_g14_α
gzp56_g14_α:
bb48_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 200]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx105_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp56_g12_β
 jmp gzp56_g15_α
.Lx105_0:
 .quad .Lx105_0_s
.Lx105_0_s:
 .string "fail"
gzp56_g15_α:
bb49_α:
# IR_CELL_CALL
 lea rdi, [r12 + 376]
 mov esi, 17
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 184]
 lea rdx, [r12 + 200]
 lea rcx, [r12 + 24]
 call gzp52_α
.Lx107_0:
 test eax, eax
 jne gzp56_γ
 jmp gzp56_g12_β
 gzp56_g15_β:
 mov rdi, qword ptr [r12 + 376]
 call gzp52_β
 jmp .Lx107_0
gzp56_c3_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 5
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp56_g16_α
gzp56_g16_α:
bb51_α:
# IR_CELL_UNIFY
 sub rsp, 16
 lea rax, [r12 + 216]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S5]
 mov edx, 1
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 16
 test eax, eax
 je gzp56_c4_adv
 jmp gzp56_g17_α
gzp56_g17_α:
bb52_α:
# IR_CELL_CUT
 jmp gzp56_g18_α
 gzp56_g17_β:
 jmp gzp56_ω
gzp56_g18_α:
bb53_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 216]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S4]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 232]
 lea rsi, [rip + .S3]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp56_g17_β
 jmp gzp56_g19_α
gzp56_g19_α:
bb54_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 248]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx116_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp56_g17_β
 jmp gzp56_g20_α
.Lx116_0:
 .quad .Lx116_0_s
.Lx116_0_s:
 .string "true"
gzp56_g20_α:
bb55_α:
# IR_CELL_CALL
 lea rdi, [r12 + 392]
 mov esi, 17
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 232]
 lea rdx, [r12 + 248]
 lea rcx, [r12 + 24]
 call gzp52_α
.Lx118_0:
 test eax, eax
 jne gzp56_γ
 jmp gzp56_g17_β
 gzp56_g20_β:
 mov rdi, qword ptr [r12 + 392]
 call gzp52_β
 jmp .Lx118_0
gzp56_c4_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 6
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp56_g21_α
gzp56_g21_α:
bb57_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx121_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp56_c5_adv
 jmp gzp56_g22_α
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string "?"
gzp56_g22_α:
bb58_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx123_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp56_c5_adv
 jmp gzp56_g23_α
.Lx123_0:
 .quad .Lx123_0_s
.Lx123_0_s:
 .string "true"
gzp56_g23_α:
bb59_α:
# IR_CELL_CUT
 jmp gzp56_γ
 gzp56_g23_β:
 jmp gzp56_ω
gzp56_c5_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 7
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp56_g24_α
gzp56_g24_α:
bb61_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 lea rsi, [r12 + 264]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp56_c6_adv
 jmp gzp56_g25_α
gzp56_g25_α:
bb62_α:
# IR_DET_TYPE_TEST
 lea rdi, [r12 + 8]
 mov rsi, qword ptr [rip + .Lx130_0]
 call rt_pl_type_test_cell@PLT
 test eax, eax
 je gzp56_c6_adv
 jmp gzp56_g26_α
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "number"
gzp56_g26_α:
bb63_α:
# IR_CELL_CUT
 jmp gzp56_g27_α
 gzp56_g26_β:
 jmp gzp56_ω
gzp56_g27_α:
bb64_α:
# IR_FAIL
 jmp gzp56_g26_β
 gzp56_g27_β:
 jmp gzp56_g26_β
gzp56_c6_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 8
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp56_g28_α
gzp56_g28_α:
bb66_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 lea rsi, [r12 + 280]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp56_c7_adv
 jmp gzp56_g29_α
gzp56_g29_α:
bb67_α:
# IR_CELL_CALL
 lea rdi, [r12 + 408]
 mov esi, 3
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 call gzp53_α
.Lx138_0:
 test eax, eax
 jne gzp56_g30_α
 jmp gzp56_c7_adv
 gzp56_g29_β:
 mov rdi, qword ptr [r12 + 408]
 call gzp53_β
 jmp .Lx138_0
gzp56_g30_α:
bb68_α:
# IR_CELL_CUT
 jmp gzp56_g31_α
 gzp56_g30_β:
 jmp gzp56_ω
gzp56_g31_α:
bb69_α:
# IR_CELL_CALL
 lea rdi, [r12 + 424]
 mov esi, 3
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 call gzp54_α
.Lx142_0:
 test eax, eax
 jne gzp56_γ
 jmp gzp56_g30_β
 gzp56_g31_β:
 mov rdi, qword ptr [r12 + 424]
 call gzp54_β
 jmp .Lx142_0
gzp56_c7_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 9
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp56_g32_α
gzp56_g32_α:
bb71_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 lea rsi, [r12 + 296]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp56_ω
 jmp gzp56_g33_α
gzp56_g33_α:
bb72_α:
# IR_CELL_CALL
 lea rdi, [r12 + 440]
 mov esi, 22
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 312]
 call gzp55_α
.Lx147_0:
 test eax, eax
 jne gzp56_g34_α
 jmp gzp56_ω
 gzp56_g33_β:
 mov rdi, qword ptr [r12 + 440]
 call gzp55_β
 jmp .Lx147_0
gzp56_g34_α:
bb73_α:
# IR_CELL_CALL
 lea rdi, [r12 + 456]
 mov esi, 5
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 312]
 call gzp23_α
.Lx149_0:
 test eax, eax
 jne gzp56_γ
 jmp gzp56_g33_β
 gzp56_g34_β:
 mov rdi, qword ptr [r12 + 456]
 call gzp23_β
 jmp .Lx149_0
# IR_CALLEE_FRAME
 gzp56_γ:
 mov eax, 1
 pop r12
 ret
 gzp56_ω:
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
 je gzp56_g3_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp56_g7_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp56_g10_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 4
 je gzp56_g15_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 5
 je gzp56_g20_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 6
 je gzp56_g23_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 7
 je gzp56_g27_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 8
 je gzp56_g31_β
 jmp gzp56_g34_β
gzp52_α:
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
 mov esi, 9
 call rt_pl_cells_init@PLT
 jmp gzp160_g0_α
gzp160_g0_α:
bb85_α:
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
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S3]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp160_c0_adv
 jmp gzp160_g1_α
gzp160_g1_α:
bb86_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 lea rsi, [r12 + 88]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp160_c0_adv
 jmp gzp160_g2_α
gzp160_g2_α:
bb87_α:
# IR_CELL_CALL
 lea rdi, [r12 + 200]
 mov esi, 29
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 56]
 lea rdx, [r12 + 104]
 call gzp31_α
.Lx167_0:
 test eax, eax
 jne gzp160_g3_α
 jmp gzp160_c0_adv
 gzp160_g2_β:
 mov rdi, qword ptr [r12 + 200]
 call gzp31_β
 jmp .Lx167_0
gzp160_g3_α:
bb88_α:
# IR_CELL_CUT
 jmp gzp160_g4_α
 gzp160_g3_β:
 jmp gzp160_ω
gzp160_g4_α:
bb89_α:
# IR_CELL_ITE
gzi173_g0_α:
bb90_α:
# IR_DET_TYPE_TEST
 lea rdi, [r12 + 104]
 mov rsi, qword ptr [rip + .Lx175_0]
 call rt_pl_type_test_cell@PLT
 test eax, eax
 je gzi170_c2
 jmp gzi170_c1
 gzi173_g0_β:
 jmp gzi170_c2
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "nonvar"
gzi170_c1:
# IR_CELL_ITE
 mov dword ptr [r12 + 120], 1
 jmp gzi170_t
gzi170_c2:
# IR_CELL_ITE
 mov dword ptr [r12 + 120], 2
 jmp gzi170_e
gzi170_t:
gzi180_g0_α:
bb93_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 104]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 72]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 40]
 lea rsi, [rip + .S3]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp160_g3_β
 jmp gzp160_γ
 gzi180_g0_β:
 jmp gzp160_g3_β
gzi170_e:
gzi183_g0_α:
bb94_α:
# IR_CELL_CALL
 lea rdi, [r12 + 216]
 mov esi, 29
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 72]
 lea rdx, [r12 + 40]
 call gzp31_α
.Lx185_0:
 test eax, eax
 jne gzp160_γ
 jmp gzp160_g3_β
 gzi183_g0_β:
 mov rdi, qword ptr [r12 + 216]
 call gzp31_β
 jmp .Lx185_0
# IR_CELL_ITE
 gzp160_g4_β:
 mov eax, dword ptr [r12 + 120]
 cmp eax, 1
 je gzi180_g0_β
 jmp gzi183_g0_β
gzp160_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp160_g5_α
gzp160_g5_α:
bb97_α:
# IR_CELL_UNIFY
 sub rsp, 32
 lea rax, [r12 + 136]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 152]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S3]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp160_c1_adv
 jmp gzp160_g6_α
gzp160_g6_α:
bb98_α:
# IR_CELL_CUT
 jmp gzp160_g7_α
 gzp160_g6_β:
 jmp gzp160_ω
gzp160_g7_α:
bb99_α:
# IR_CELL_CALL
 lea rdi, [r12 + 232]
 mov esi, 29
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 24]
 lea rdx, [r12 + 40]
 call gzp31_α
.Lx194_0:
 test eax, eax
 jne gzp160_γ
 jmp gzp160_g6_β
 gzp160_g7_β:
 mov rdi, qword ptr [r12 + 232]
 call gzp31_β
 jmp .Lx194_0
gzp160_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp160_g8_α
gzp160_g8_α:
bb101_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 lea rsi, [r12 + 168]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp160_c2_adv
 jmp gzp160_g9_α
gzp160_g9_α:
bb102_α:
# IR_CELL_CALL
 lea rdi, [r12 + 248]
 mov esi, 29
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 8]
 lea rdx, [r12 + 40]
 call gzp31_α
.Lx199_0:
 test eax, eax
 jne gzp160_γ
 jmp gzp160_c2_adv
 gzp160_g9_β:
 mov rdi, qword ptr [r12 + 248]
 call gzp31_β
 jmp .Lx199_0
gzp160_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp160_g10_α
gzp160_g10_α:
bb104_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 lea rsi, [r12 + 184]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp160_ω
 jmp gzp160_g11_α
gzp160_g11_α:
bb105_α:
# IR_CELL_CALL
 lea rdi, [r12 + 264]
 mov esi, 29
 call rt_enter@PLT
 mov rdi, rax
 lea rsi, [r12 + 24]
 lea rdx, [r12 + 40]
 call gzp31_α
.Lx204_0:
 test eax, eax
 jne gzp160_γ
 jmp gzp160_ω
 gzp160_g11_β:
 mov rdi, qword ptr [r12 + 264]
 call gzp31_β
 jmp .Lx204_0
# IR_CALLEE_FRAME
 gzp160_γ:
 mov eax, 1
 pop r12
 ret
 gzp160_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp52_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp160_g4_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp160_g7_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp160_g9_β
 jmp gzp160_g11_β
gzp53_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov r11, qword ptr [rsi + 0]
 mov qword ptr [r12 + 8], r11
 mov r11, qword ptr [rsi + 8]
 mov qword ptr [r12 + 16], r11
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 lea rdi, [r12 + 24]
 mov esi, 2
 call rt_pl_cells_init@PLT
 jmp gzp210_g0_α
gzp210_g0_α:
bb112_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx213_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp210_c0_adv
 jmp gzp210_γ
 gzp210_g0_β:
 jmp gzp210_c0_adv
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "true"
gzp210_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp210_g1_α
gzp210_g1_α:
bb114_α:
# IR_CELL_UNIFY
 sub rsp, 32
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
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S8]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp210_ω
 jmp gzp210_γ
 gzp210_g1_β:
 jmp gzp210_ω
# IR_CALLEE_FRAME
 gzp210_γ:
 mov eax, 1
 pop r12
 ret
 gzp210_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp53_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp210_g0_β
 jmp gzp210_g1_β
gzp54_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 mov r11, qword ptr [rsi + 0]
 mov qword ptr [r12 + 8], r11
 mov r11, qword ptr [rsi + 8]
 mov qword ptr [r12 + 16], r11
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 mov dword ptr [r12 + 4], 1
 lea rdi, [r12 + 24]
 mov esi, 2
 call rt_pl_cells_init@PLT
 jmp gzp220_g0_α
gzp220_g0_α:
bb119_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx223_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp220_c0_adv
 jmp gzp220_γ
 gzp220_g0_β:
 jmp gzp220_c0_adv
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "true"
gzp220_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp220_g1_α
gzp220_g1_α:
bb121_α:
# IR_CELL_UNIFY
 sub rsp, 32
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
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S8]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp220_ω
 jmp gzp220_g2_α
gzp220_g2_α:
bb122_α:
# IR_DET_CMP
 mov rdi, qword ptr [rip + .Lx228_0]
 lea rsi, [r12 + 24]
 mov rdx, 0
 lea rcx, [r12 + 40]
 mov r8, 0
 call rt_pl_arith_cmp_cell_val@PLT
 test eax, eax
 je gzp220_ω
 jmp gzp220_γ
 gzp220_g2_β:
 jmp gzp220_ω
.Lx228_0:
 .quad .Lx228_0_s
.Lx228_0_s:
 .string "=<"
# IR_CALLEE_FRAME
 gzp220_γ:
 mov eax, 1
 pop r12
 ret
 gzp220_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp54_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp220_g0_β
 jmp gzp220_g2_β
gzp55_α:
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
 mov esi, 20
 call rt_pl_cells_init@PLT
 jmp gzp232_g0_α
gzp232_g0_α:
bb127_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 8]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx235_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp232_c0_adv
 jmp gzp232_g1_α
.Lx235_0:
 .quad .Lx235_0_s
.Lx235_0_s:
 .string "qsort"
gzp232_g1_α:
bb128_α:
# IR_CELL_UNIFY
 sub rsp, 48
 sub rsp, 32
 mov edi, 0
 mov rsi, 27
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 74
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 17
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 33
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 94
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 18
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 46
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 83
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 65
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
 mov rsi, 32
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 53
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 28
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 85
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 99
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 47
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 28
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 82
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
 mov rsi, 11
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 55
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 29
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 39
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 81
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 90
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 37
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
 sub rsp, 32
 mov edi, 0
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 66
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 51
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
 mov rsi, 21
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 85
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 27
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 31
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 63
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 75
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
 mov rsi, 95
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 99
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 11
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 28
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 61
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 74
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 18
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 92
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 40
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 53
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 0
 mov rsi, 59
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
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S10]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 40]
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
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S0]
 mov edx, 3
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 48
 test eax, eax
 je gzp232_c0_adv
 jmp gzp232_γ
 gzp232_g1_β:
 jmp gzp232_c0_adv
gzp232_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp232_g2_α
gzp232_g2_α:
bb130_α:
# IR_CELL_UNIFY
 sub rsp, 48
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
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 88]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 104]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S0]
 mov edx, 3
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 48
 test eax, eax
 je gzp232_c1_adv
 jmp gzp232_g3_α
gzp232_g3_α:
bb131_α:
# IR_CELL_UNIFY
 sub rsp, 32
 sub rsp, 64
 lea rax, [r12 + 72]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 56]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 120]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 136]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rdi, [rip + .S11]
 mov esi, 4
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 64
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 sub rsp, 48
 lea rax, [r12 + 136]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 152]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 104]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rdi, [rip + .S0]
 mov esi, 3
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 48
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 48
 lea rax, [r12 + 120]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 88]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 sub rsp, 32
 lea rax, [r12 + 56]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 152]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rdi, [rip + .S0]
 mov esi, 3
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 48
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S1]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp232_c1_adv
 jmp gzp232_γ
 gzp232_g3_β:
 jmp gzp232_c1_adv
gzp232_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp232_g4_α
gzp232_g4_α:
bb133_α:
# IR_CELL_UNIFY
 sub rsp, 48
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S10]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 168]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 168]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S0]
 mov edx, 3
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 48
 test eax, eax
 je gzp232_c2_adv
 jmp gzp232_g5_α
gzp232_g5_α:
bb134_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx247_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp232_c2_adv
 jmp gzp232_γ
 gzp232_g5_β:
 jmp gzp232_c2_adv
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "true"
gzp232_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp232_g6_α
gzp232_g6_α:
bb136_α:
# IR_CELL_UNIFY
 sub rsp, 64
 sub rsp, 32
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
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 216]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 sub rsp, 32
 lea rax, [r12 + 184]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 232]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 248]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S11]
 mov edx, 4
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 64
 test eax, eax
 je gzp232_c3_adv
 jmp gzp232_g7_α
gzp232_g7_α:
bb137_α:
# IR_CELL_UNIFY
 sub rsp, 32
 sub rsp, 32
 lea rax, [r12 + 184]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 216]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S8]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 32
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S7]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 sub rsp, 64
 lea rax, [r12 + 200]
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
 lea rdi, [rip + .S11]
 mov esi, 4
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 64
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S1]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S1]
 mov edx, 2
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 32
 test eax, eax
 je gzp232_c3_adv
 jmp gzp232_γ
 gzp232_g7_β:
 jmp gzp232_c3_adv
gzp232_c3_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 5
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp232_g8_α
gzp232_g8_α:
bb139_α:
# IR_CELL_UNIFY
 sub rsp, 64
 sub rsp, 32
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
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 296]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 312]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 sub rsp, 32
 lea rax, [r12 + 264]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 328]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_cell@PLT
 add rsp, 32
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S11]
 mov edx, 4
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 64
 test eax, eax
 je gzp232_c4_adv
 jmp gzp232_g9_α
gzp232_g9_α:
bb140_α:
# IR_CELL_UNIFY
 sub rsp, 64
 lea rax, [r12 + 280]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 296]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 16], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 24], r11
 lea rax, [r12 + 312]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 32], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 40], r11
 lea rax, [r12 + 328]
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rdi, [r12 + 24]
 lea rsi, [rip + .S11]
 mov edx, 4
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 64
 test eax, eax
 je gzp232_c4_adv
 jmp gzp232_γ
 gzp232_g9_β:
 jmp gzp232_c4_adv
gzp232_c4_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 6
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp232_g10_α
gzp232_g10_α:
bb142_α:
# IR_CELL_UNIFY
 sub rsp, 64
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S10]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 0], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 8], r11
 lea rax, [r12 + 344]
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
 mov edi, 68
 xor rsi, rsi
 lea rdx, [rip + .S10]
 xorps xmm0, xmm0
 call rt_pl_lit_cell@PLT
 mov r11, qword ptr [rax + 0]
 mov qword ptr [rsp + 48], r11
 mov r11, qword ptr [rax + 8]
 mov qword ptr [rsp + 56], r11
 lea rdi, [r12 + 8]
 lea rsi, [rip + .S11]
 mov edx, 4
 mov rcx, rsp
 call rt_pl_unify_struct@PLT
 add rsp, 64
 test eax, eax
 je gzp232_ω
 jmp gzp232_g11_α
gzp232_g11_α:
bb143_α:
# IR_CELL_UNIFY
 lea rdi, [r12 + 24]
 mov esi, 68
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx262_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp232_ω
 jmp gzp232_γ
 gzp232_g11_β:
 jmp gzp232_ω
.Lx262_0:
 .quad .Lx262_0_s
.Lx262_0_s:
 .string "true"
# IR_CALLEE_FRAME
 gzp232_γ:
 mov eax, 1
 pop r12
 ret
 gzp232_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp55_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp232_g1_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp232_g3_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp232_g5_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 4
 je gzp232_g7_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 5
 je gzp232_g9_β
 jmp gzp232_g11_β
.section .rodata
.S0: .string "qsort"
.S1: .string ","
.S2: .string ";"
.S3: .string "->"
.S4: .string "fail"
.S5: .string "\\+"
.S6: .string "true"
.S7: .string "?"
.S8: .string "=<"
.S9: .string "."
.S10: .string "[]"
.S11: .string "partition"
.text
