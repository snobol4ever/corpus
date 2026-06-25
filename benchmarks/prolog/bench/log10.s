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
 mov esi, 1
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
 jmp gzp24_g0_α
gzp24_g0_α:
bb12_α:
# IR_CELL_CALL
 lea rdi, [r12 + 8]
 mov esi, 4
 call rt_enter@PLT
 mov rdi, rax
 call gzp23_α
.Lx27_0:
 test eax, eax
 jne gzp24_γ
 jmp gzp24_ω
 gzp24_g0_β:
 mov rdi, qword ptr [r12 + 8]
 call gzp23_β
 jmp .Lx27_0
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
 jmp gzp24_g0_β
gzp23_α:
# IR_CALLEE_FRAME
 push r12
 mov r12, rdi
 call rt_trail_mark@PLT
 mov dword ptr [r12 + 0], eax
 lea rdi, [r12 + 8]
 mov esi, 3
 call rt_pl_cells_init@PLT
 jmp gzp30_g0_α
gzp30_g0_α:
bb15_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 mov edi, 67
 xor rsi, rsi
 lea rdx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S0]
 mov esi, 1
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S0]
 mov esi, 1
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S0]
 mov esi, 1
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S0]
 mov esi, 1
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S0]
 mov esi, 1
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S0]
 mov esi, 1
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S0]
 mov esi, 1
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S0]
 mov esi, 1
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S0]
 mov esi, 1
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S0]
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
 je gzp30_ω
 jmp gzp30_g1_α
gzp30_g1_α:
bb16_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 24]
 mov esi, 67
 mov rdx, 0
 mov rcx, qword ptr [rip + .Lx35_0]
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp30_ω
 jmp gzp30_g2_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "x"
gzp30_g2_α:
bb17_α:
# IR_CELL_CALL
 lea rdi, [r12 + 32]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 8]
 call gzp29_α
.Lx37_0:
 test eax, eax
 jne gzp30_γ
 jmp gzp30_ω
 gzp30_g2_β:
 mov rdi, qword ptr [r12 + 32]
 call gzp29_β
 jmp .Lx37_0
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
 gzp23_β:
 push r12
 mov r12, rdi
 jmp gzp30_g2_β
gzp29_α:
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
 mov esi, 30
 call rt_pl_cells_init@PLT
 jmp gzp39_g0_α
gzp39_g0_α:
bb20_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S2]
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
 je gzp39_c0_adv
 jmp gzp39_g1_α
gzp39_g1_α:
bb21_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S2]
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
 je gzp39_c0_adv
 jmp gzp39_g2_α
gzp39_g2_α:
bb22_α:
# IR_CELL_CUT
 jmp gzp39_g3_α
 gzp39_g2_β:
 jmp gzp39_ω
gzp39_g3_α:
bb23_α:
# IR_CELL_CALL
 lea rdi, [r12 + 272]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 48]
 call gzp29_α
.Lx48_0:
 test eax, eax
 jne gzp39_g4_α
 jmp gzp39_g2_β
 gzp39_g3_β:
 mov rdi, qword ptr [r12 + 272]
 call gzp29_β
 jmp .Lx48_0
gzp39_g4_α:
bb24_α:
# IR_CELL_CALL
 lea rdi, [r12 + 280]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 56]
 call gzp29_α
.Lx50_0:
 test eax, eax
 jne gzp39_γ
 jmp gzp39_g3_β
 gzp39_g4_β:
 mov rdi, qword ptr [r12 + 280]
 call gzp29_β
 jmp .Lx50_0
gzp39_c0_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 2
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp39_g5_α
gzp39_g5_α:
bb26_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 72]
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
 je gzp39_c1_adv
 jmp gzp39_g6_α
gzp39_g6_α:
bb27_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 88]
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
 je gzp39_c1_adv
 jmp gzp39_g7_α
gzp39_g7_α:
bb28_α:
# IR_CELL_CUT
 jmp gzp39_g8_α
 gzp39_g7_β:
 jmp gzp39_ω
gzp39_g8_α:
bb29_α:
# IR_CELL_CALL
 lea rdi, [r12 + 288]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 80]
 call gzp29_α
.Lx59_0:
 test eax, eax
 jne gzp39_g9_α
 jmp gzp39_g7_β
 gzp39_g8_β:
 mov rdi, qword ptr [r12 + 288]
 call gzp29_β
 jmp .Lx59_0
gzp39_g9_α:
bb30_α:
# IR_CELL_CALL
 lea rdi, [r12 + 296]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 88]
 call gzp29_α
.Lx61_0:
 test eax, eax
 jne gzp39_γ
 jmp gzp39_g8_β
 gzp39_g9_β:
 mov rdi, qword ptr [r12 + 296]
 call gzp29_β
 jmp .Lx61_0
gzp39_c1_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 3
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp39_g10_α
gzp39_g10_α:
bb32_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 104]
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
 je gzp39_c2_adv
 jmp gzp39_g11_α
gzp39_g11_α:
bb33_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 sub rsp, 16
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S2]
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
 je gzp39_c2_adv
 jmp gzp39_g12_α
gzp39_g12_α:
bb34_α:
# IR_CELL_CUT
 jmp gzp39_g13_α
 gzp39_g12_β:
 jmp gzp39_ω
gzp39_g13_α:
bb35_α:
# IR_CELL_CALL
 lea rdi, [r12 + 304]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 112]
 call gzp29_α
.Lx70_0:
 test eax, eax
 jne gzp39_g14_α
 jmp gzp39_g12_β
 gzp39_g13_β:
 mov rdi, qword ptr [r12 + 304]
 call gzp29_β
 jmp .Lx70_0
gzp39_g14_α:
bb36_α:
# IR_CELL_CALL
 lea rdi, [r12 + 312]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 120]
 call gzp29_α
.Lx72_0:
 test eax, eax
 jne gzp39_γ
 jmp gzp39_g13_β
 gzp39_g14_β:
 mov rdi, qword ptr [r12 + 312]
 call gzp29_β
 jmp .Lx72_0
gzp39_c2_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 4
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp39_g15_α
gzp39_g15_α:
bb38_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 136]
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
 je gzp39_c3_adv
 jmp gzp39_g16_α
gzp39_g16_α:
bb39_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 sub rsp, 16
 sub rsp, 16
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S3]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [rsp + 0], rax
 mov edi, 0
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S6]
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
 je gzp39_c3_adv
 jmp gzp39_g17_α
gzp39_g17_α:
bb40_α:
# IR_CELL_CUT
 jmp gzp39_g18_α
 gzp39_g17_β:
 jmp gzp39_ω
gzp39_g18_α:
bb41_α:
# IR_CELL_CALL
 lea rdi, [r12 + 320]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 144]
 call gzp29_α
.Lx81_0:
 test eax, eax
 jne gzp39_g19_α
 jmp gzp39_g17_β
 gzp39_g18_β:
 mov rdi, qword ptr [r12 + 320]
 call gzp29_β
 jmp .Lx81_0
gzp39_g19_α:
bb42_α:
# IR_CELL_CALL
 lea rdi, [r12 + 328]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 152]
 call gzp29_α
.Lx83_0:
 test eax, eax
 jne gzp39_γ
 jmp gzp39_g18_β
 gzp39_g19_β:
 mov rdi, qword ptr [r12 + 328]
 call gzp29_β
 jmp .Lx83_0
gzp39_c3_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 5
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp39_g20_α
gzp39_g20_α:
bb44_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S6]
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
 je gzp39_c4_adv
 jmp gzp39_g21_α
gzp39_g21_α:
bb45_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 sub rsp, 16
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S4]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S6]
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
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rsp + 0]
 mov rsi, qword ptr [rsp + 8]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je gzp39_c4_adv
 jmp gzp39_g22_α
gzp39_g22_α:
bb46_α:
# IR_CELL_CUT
 jmp gzp39_g23_α
 gzp39_g22_β:
 jmp gzp39_ω
gzp39_g23_α:
bb47_α:
# IR_DET_TYPE_TEST
 mov rdi, qword ptr [r12 + 168]
 mov rsi, qword ptr [rip + .Lx92_0]
 call rt_pl_type_test_cell@PLT
 test eax, eax
 je gzp39_g22_β
 jmp gzp39_g24_α
.Lx92_0:
 .quad .Lx92_0_s
.Lx92_0_s:
 .string "integer"
gzp39_g24_α:
bb48_α:
# IR_DET_IS
 mov rdi, qword ptr [r12 + 184]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [rip + .Lx94_0]
 mov rcx, 1
 call rt_pl_is_cell_arith@PLT
 test eax, eax
 je gzp39_g22_β
 jmp gzp39_g25_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "-"
gzp39_g25_α:
bb49_α:
# IR_CELL_CALL
 lea rdi, [r12 + 336]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 176]
 call gzp29_α
.Lx96_0:
 test eax, eax
 jne gzp39_γ
 jmp gzp39_g22_β
 gzp39_g25_β:
 mov rdi, qword ptr [r12 + 336]
 call gzp29_β
 jmp .Lx96_0
gzp39_c4_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 6
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp39_g26_α
gzp39_g26_α:
bb51_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S3]
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
 je gzp39_c5_adv
 jmp gzp39_g27_α
gzp39_g27_α:
bb52_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S3]
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
 je gzp39_c5_adv
 jmp gzp39_g28_α
gzp39_g28_α:
bb53_α:
# IR_CELL_CUT
 jmp gzp39_g29_α
 gzp39_g28_β:
 jmp gzp39_ω
gzp39_g29_α:
bb54_α:
# IR_CELL_CALL
 lea rdi, [r12 + 344]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 216]
 call gzp29_α
.Lx105_0:
 test eax, eax
 jne gzp39_γ
 jmp gzp39_g28_β
 gzp39_g29_β:
 mov rdi, qword ptr [r12 + 344]
 call gzp29_β
 jmp .Lx105_0
gzp39_c5_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 7
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp39_g30_α
gzp39_g30_α:
bb56_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 224]
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
 je gzp39_c6_adv
 jmp gzp39_g31_α
gzp39_g31_α:
bb57_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 sub rsp, 16
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S7]
 mov esi, 1
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 232]
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
 je gzp39_c6_adv
 jmp gzp39_g32_α
gzp39_g32_α:
bb58_α:
# IR_CELL_CUT
 jmp gzp39_g33_α
 gzp39_g32_β:
 jmp gzp39_ω
gzp39_g33_α:
bb59_α:
# IR_CELL_CALL
 lea rdi, [r12 + 352]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 232]
 call gzp29_α
.Lx114_0:
 test eax, eax
 jne gzp39_γ
 jmp gzp39_g32_β
 gzp39_g33_β:
 mov rdi, qword ptr [r12 + 352]
 call gzp29_β
 jmp .Lx114_0
gzp39_c6_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 8
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp39_g34_α
gzp39_g34_α:
bb61_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S0]
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
 je gzp39_c7_adv
 jmp gzp39_g35_α
gzp39_g35_α:
bb62_α:
# IR_CELL_UNIFY
 sub rsp, 16
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [r12 + 240]
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
 je gzp39_c7_adv
 jmp gzp39_g36_α
gzp39_g36_α:
bb63_α:
# IR_CELL_CUT
 jmp gzp39_g37_α
 gzp39_g36_β:
 jmp gzp39_ω
gzp39_g37_α:
bb64_α:
# IR_CELL_CALL
 lea rdi, [r12 + 360]
 mov esi, 45
 call rt_enter@PLT
 mov rdi, rax
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 248]
 call gzp29_α
.Lx123_0:
 test eax, eax
 jne gzp39_γ
 jmp gzp39_g36_β
 gzp39_g37_β:
 mov rdi, qword ptr [r12 + 360]
 call gzp29_β
 jmp .Lx123_0
gzp39_c7_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 9
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp39_g38_α
gzp39_g38_α:
bb66_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 8]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp39_c8_adv
 jmp gzp39_g39_α
gzp39_g39_α:
bb67_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 24]
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp39_c8_adv
 jmp gzp39_g40_α
gzp39_g40_α:
bb68_α:
# IR_CELL_CUT
 jmp gzp39_γ
 gzp39_g40_β:
 jmp gzp39_ω
gzp39_c8_adv:
# IR_CALLEE_FRAME
 mov dword ptr [r12 + 4], 10
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 jmp gzp39_g41_α
gzp39_g41_α:
bb70_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 8]
 mov rsi, qword ptr [r12 + 256]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp39_ω
 jmp gzp39_g42_α
gzp39_g42_α:
bb71_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 264]
 call rt_unify_terms@PLT
 test eax, eax
 je gzp39_ω
 jmp gzp39_g43_α
gzp39_g43_α:
bb72_α:
# IR_CELL_UNIFY
 mov rdi, qword ptr [r12 + 24]
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 call rt_pl_unify_cell_const@PLT
 test eax, eax
 je gzp39_ω
 jmp gzp39_γ
 gzp39_g43_β:
 jmp gzp39_ω
# IR_CALLEE_FRAME
 gzp39_γ:
 mov eax, 1
 pop r12
 ret
 gzp39_ω:
 mov edi, dword ptr [r12 + 0]
 call rt_trail_unwind@PLT
 mov eax, 0
 pop r12
 ret
 gzp29_β:
 push r12
 mov r12, rdi
 mov eax, dword ptr [r12 + 4]
 cmp eax, 1
 je gzp39_g4_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 2
 je gzp39_g9_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 3
 je gzp39_g14_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 4
 je gzp39_g19_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 5
 je gzp39_g25_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 6
 je gzp39_g29_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 7
 je gzp39_g33_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 8
 je gzp39_g37_β
 mov eax, dword ptr [r12 + 4]
 cmp eax, 9
 je gzp39_g40_β
 jmp gzp39_g43_β
.section .rodata
.S0: .string "log"
.S1: .string "x"
.S2: .string "+"
.S3: .string "-"
.S4: .string "*"
.S5: .string "/"
.S6: .string "^"
.S7: .string "exp"
.text
