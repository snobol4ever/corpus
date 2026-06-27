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
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
main_α_body:
xchain0_n0_α:
# IR_LIT_I
bb1_α:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
.Lx1_0:
 .quad 1
xchain0_n1_α:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 40], rax
 jmp xcase2_key0_done
 xcase2_key0_β:
 jmp xchain0_n3_α
.Lx3_0:
 .quad 1
xcase2_key0_done:
# IR_CASE_ARM
 lea rdi, [r12 + 0]
 lea rsi, [r12 + 32]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase2_next0
 jmp xcase2_take0
 xcase2_cmp0_β:
 jmp xcase2_next0
xcase2_take0:
# IR_LIT_I
bb4_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 56], rax
 jmp xcaseop5_c0_done
 xcaseop5_c0_b:
 jmp xchain0_n3_α
.Lx6_0:
 .quad 1
xcaseop5_c0_done:
# IR_LIT_I
bb5_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 72], rax
 jmp xcaseop5_c1_done
 xcaseop5_c1_b:
 jmp xchain0_n3_α
.Lx7_0:
 .quad 10
xcaseop5_c1_done:
bb6_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 72]
 imul rax, rcx
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xcase2_val0_done
 xcase2_val0_β:
 jmp xchain0_n3_α
xcase2_val0_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain0_n2_α
 xcase2_take0_β:
 jmp xchain0_n3_α
xcase2_next0:
# IR_LIT_I
bb8_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 104], rax
 jmp xcase2_key1_done
 xcase2_key1_β:
 jmp xchain0_n3_α
.Lx10_0:
 .quad 2
xcase2_key1_done:
# IR_CASE_ARM
 lea rdi, [r12 + 0]
 lea rsi, [r12 + 96]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase2_next1
 jmp xcase2_take1
 xcase2_cmp1_β:
 jmp xcase2_next1
xcase2_take1:
# IR_LIT_I
bb10_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 120], rax
 jmp xcaseop12_c0_done
 xcaseop12_c0_b:
 jmp xchain0_n3_α
.Lx13_0:
 .quad 2
xcaseop12_c0_done:
# IR_LIT_I
bb11_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 136], rax
 jmp xcaseop12_c1_done
 xcaseop12_c1_b:
 jmp xchain0_n3_α
.Lx14_0:
 .quad 20
xcaseop12_c1_done:
bb12_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 136]
 imul rax, rcx
 mov qword ptr [r12 + 144], 6
 mov qword ptr [r12 + 152], rax
 jmp xcase2_val1_done
 xcase2_val1_β:
 jmp xchain0_n3_α
xcase2_val1_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain0_n2_α
 xcase2_take1_β:
 jmp xchain0_n3_α
xcase2_next1:
# IR_LIT_I
bb14_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 168], rax
 jmp xcaseop17_c0_done
 xcaseop17_c0_b:
 jmp xchain0_n3_α
.Lx18_0:
 .quad 99
xcaseop17_c0_done:
# IR_LIT_I
bb15_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 184], rax
 jmp xcaseop17_c1_done
 xcaseop17_c1_b:
 jmp xchain0_n3_α
.Lx19_0:
 .quad 100
xcaseop17_c1_done:
bb16_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 168]
 mov rcx, qword ptr [r12 + 184]
 imul rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xcase2_def_done
 xcase2_def_β:
 jmp xchain0_n3_α
xcase2_def_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain0_n2_α
 xcase2_deftake_β:
 jmp xchain0_n3_α
xchain0_n2_α:
bb18_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain0_n3_α
xchain0_n2_β:
xchain0_n2_β:
 jmp xchain0_n3_α
xchain0_n3_α:
# IR_LIT_I
bb19_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n6_α
.Lx23_0:
 .quad 2
xchain0_n4_α:
# IR_LIT_I
bb20_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 248], rax
 jmp xcase24_key0_done
 xcase24_key0_β:
 jmp xchain0_n6_α
.Lx25_0:
 .quad 1
xcase24_key0_done:
# IR_CASE_ARM
 lea rdi, [r12 + 208]
 lea rsi, [r12 + 240]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase24_next0
 jmp xcase24_take0
 xcase24_cmp0_β:
 jmp xcase24_next0
xcase24_take0:
# IR_LIT_I
bb22_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 264], rax
 jmp xcaseop27_c0_done
 xcaseop27_c0_b:
 jmp xchain0_n6_α
.Lx28_0:
 .quad 1
xcaseop27_c0_done:
# IR_LIT_I
bb23_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 280], rax
 jmp xcaseop27_c1_done
 xcaseop27_c1_b:
 jmp xchain0_n6_α
.Lx29_0:
 .quad 10
xcaseop27_c1_done:
bb24_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 264]
 mov rcx, qword ptr [r12 + 280]
 imul rax, rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xcase24_val0_done
 xcase24_val0_β:
 jmp xchain0_n6_α
xcase24_val0_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n5_α
 xcase24_take0_β:
 jmp xchain0_n6_α
xcase24_next0:
# IR_LIT_I
bb26_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 312], rax
 jmp xcase24_key1_done
 xcase24_key1_β:
 jmp xchain0_n6_α
.Lx32_0:
 .quad 2
xcase24_key1_done:
# IR_CASE_ARM
 lea rdi, [r12 + 208]
 lea rsi, [r12 + 304]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase24_next1
 jmp xcase24_take1
 xcase24_cmp1_β:
 jmp xcase24_next1
xcase24_take1:
# IR_LIT_I
bb28_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 328], rax
 jmp xcaseop34_c0_done
 xcaseop34_c0_b:
 jmp xchain0_n6_α
.Lx35_0:
 .quad 2
xcaseop34_c0_done:
# IR_LIT_I
bb29_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [r12 + 344], rax
 jmp xcaseop34_c1_done
 xcaseop34_c1_b:
 jmp xchain0_n6_α
.Lx36_0:
 .quad 20
xcaseop34_c1_done:
bb30_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 328]
 mov rcx, qword ptr [r12 + 344]
 imul rax, rcx
 mov qword ptr [r12 + 352], 6
 mov qword ptr [r12 + 360], rax
 jmp xcase24_val1_done
 xcase24_val1_β:
 jmp xchain0_n6_α
xcase24_val1_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n5_α
 xcase24_take1_β:
 jmp xchain0_n6_α
xcase24_next1:
# IR_LIT_I
bb32_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 376], rax
 jmp xcaseop39_c0_done
 xcaseop39_c0_b:
 jmp xchain0_n6_α
.Lx40_0:
 .quad 99
xcaseop39_c0_done:
# IR_LIT_I
bb33_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [r12 + 392], rax
 jmp xcaseop39_c1_done
 xcaseop39_c1_b:
 jmp xchain0_n6_α
.Lx41_0:
 .quad 100
xcaseop39_c1_done:
bb34_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 376]
 mov rcx, qword ptr [r12 + 392]
 imul rax, rcx
 mov qword ptr [r12 + 400], 6
 mov qword ptr [r12 + 408], rax
 jmp xcase24_def_done
 xcase24_def_β:
 jmp xchain0_n6_α
xcase24_def_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n5_α
 xcase24_deftake_β:
 jmp xchain0_n6_α
xchain0_n5_α:
bb36_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 call rt_write_any_nl@PLT
 jmp xchain0_n6_α
xchain0_n5_β:
xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
# IR_LIT_I
bb37_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp main_ω
.Lx45_0:
 .quad 7
xchain0_n7_α:
# IR_LIT_I
bb38_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 456], rax
 jmp xcase46_key0_done
 xcase46_key0_β:
 jmp main_ω
.Lx47_0:
 .quad 1
xcase46_key0_done:
# IR_CASE_ARM
 lea rdi, [r12 + 416]
 lea rsi, [r12 + 448]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase46_next0
 jmp xcase46_take0
 xcase46_cmp0_β:
 jmp xcase46_next0
xcase46_take0:
# IR_LIT_I
bb40_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 472], rax
 jmp xcaseop49_c0_done
 xcaseop49_c0_b:
 jmp main_ω
.Lx50_0:
 .quad 1
xcaseop49_c0_done:
# IR_LIT_I
bb41_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 488], rax
 jmp xcaseop49_c1_done
 xcaseop49_c1_b:
 jmp main_ω
.Lx51_0:
 .quad 10
xcaseop49_c1_done:
bb42_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 472]
 mov rcx, qword ptr [r12 + 488]
 imul rax, rcx
 mov qword ptr [r12 + 496], 6
 mov qword ptr [r12 + 504], rax
 jmp xcase46_val0_done
 xcase46_val0_β:
 jmp main_ω
xcase46_val0_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n8_α
 xcase46_take0_β:
 jmp main_ω
xcase46_next0:
# IR_LIT_I
bb44_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [r12 + 520], rax
 jmp xcase46_key1_done
 xcase46_key1_β:
 jmp main_ω
.Lx54_0:
 .quad 2
xcase46_key1_done:
# IR_CASE_ARM
 lea rdi, [r12 + 416]
 lea rsi, [r12 + 512]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase46_next1
 jmp xcase46_take1
 xcase46_cmp1_β:
 jmp xcase46_next1
xcase46_take1:
# IR_LIT_I
bb46_α:
 mov qword ptr [r12 + 528], 6
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [r12 + 536], rax
 jmp xcaseop56_c0_done
 xcaseop56_c0_b:
 jmp main_ω
.Lx57_0:
 .quad 2
xcaseop56_c0_done:
# IR_LIT_I
bb47_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 552], rax
 jmp xcaseop56_c1_done
 xcaseop56_c1_b:
 jmp main_ω
.Lx58_0:
 .quad 20
xcaseop56_c1_done:
bb48_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 536]
 mov rcx, qword ptr [r12 + 552]
 imul rax, rcx
 mov qword ptr [r12 + 560], 6
 mov qword ptr [r12 + 568], rax
 jmp xcase46_val1_done
 xcase46_val1_β:
 jmp main_ω
xcase46_val1_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n8_α
 xcase46_take1_β:
 jmp main_ω
xcase46_next1:
# IR_LIT_I
bb50_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [r12 + 584], rax
 jmp xcaseop61_c0_done
 xcaseop61_c0_b:
 jmp main_ω
.Lx62_0:
 .quad 7
xcaseop61_c0_done:
# IR_LIT_I
bb51_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 600], rax
 jmp xcaseop61_c1_done
 xcaseop61_c1_b:
 jmp main_ω
.Lx63_0:
 .quad 100
xcaseop61_c1_done:
bb52_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 584]
 mov rcx, qword ptr [r12 + 600]
 imul rax, rcx
 mov qword ptr [r12 + 608], 6
 mov qword ptr [r12 + 616], rax
 jmp xcase46_def_done
 xcase46_def_β:
 jmp main_ω
xcase46_def_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n8_α
 xcase46_deftake_β:
 jmp main_ω
xchain0_n8_α:
bb54_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n8_β:
xchain0_n8_β:
 jmp main_ω
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
