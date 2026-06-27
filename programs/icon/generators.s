  .intel_syntax noprefix
  .text
  .globl proc_range_α
proc_range_α:
#=======================================================================================================================
    .global proc_range_α
    .global proc_range_β
    .global proc_range_γ
    .global proc_range_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
  cmp esi, 0
  jne proc_range_β
proc_range_α_body:
xchain0_n0_α:
# IR_VAR
bb1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_β
xchain0_n1_α:
# IR_VAR
bb2_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_β
xchain0_n2_α:
# IR_TO
bb3_α:
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 80], rax
.Lx6_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 jg xchain0_n6_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 inc qword ptr [r12 + 80]
 jmp .Lx6_0
xchain0_n3_α:
bb4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 88], rax
 mov qword ptr [r12 + 96], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n2_β
xchain0_n4_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_range_ω
xchain0_n5_α:
# IR_SUSPEND yield+resume
bb6_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 8], rax
 jmp proc_range_γ
 xchain0_n5_β:
 jmp xchain0_n2_α
xchain0_n6_α:
# IR_EVERY
 jmp proc_range_ω
 xchain0_n6_β:
 jmp proc_range_ω
proc_range_β:
jmp xchain0_n5_β
proc_range_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_range_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_divisors_α
proc_divisors_α:
#=======================================================================================================================
    .global proc_divisors_α
    .global proc_divisors_β
    .global proc_divisors_γ
    .global proc_divisors_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
  cmp esi, 0
  jne proc_divisors_β
proc_divisors_α_body:
xchain13_n0_α:
# IR_LIT_I
bb8_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain13_n1_α
 xchain13_n0_β:
 jmp xchain13_n2_β
.Lx14_0:
 .quad 1
xchain13_n1_α:
# IR_VAR
bb9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain13_n2_α
 xchain13_n1_β:
 jmp xchain13_n2_β
xchain13_n2_α:
# IR_TO
bb10_α:
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 80], rax
.Lx18_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 24]
 cmp rax, rcx
 jg xchain13_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain13_n3_α
 xchain13_n2_β:
 inc qword ptr [r12 + 80]
 jmp .Lx18_0
xchain13_n3_α:
bb11_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 88], rax
 mov qword ptr [r12 + 96], rdx
 jmp xchain13_n4_α
 xchain13_n3_β:
 jmp xchain13_n2_β
xchain13_n4_α:
# IR_VAR
bb12_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain13_n5_α
 xchain13_n4_β:
 jmp xchain13_n2_β
xchain13_n5_α:
# IR_VAR
bb13_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain13_n6_α
 xchain13_n5_β:
 jmp xchain13_n2_β
xchain13_n6_α:
bb14_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [r12 + 104], 6
 mov qword ptr [r12 + 112], rax
 jmp xchain13_n7_α
 xchain13_n6_β:
 jmp xchain13_n2_β
xchain13_n7_α:
# IR_LIT_I
bb15_α:
 mov qword ptr [r12 + 120], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 128], rax
 jmp xchain13_n8_α
 xchain13_n7_β:
 jmp xchain13_n2_β
.Lx25_0:
 .quad 0
xchain13_n8_α:
bb16_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 128]
 cmp rax, rcx
 jne xchain13_n2_β
 mov rcx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 136], rcx
 mov rcx, qword ptr [r12 + 128]
 mov qword ptr [r12 + 144], rcx
 jmp xchain13_n9_α
 xchain13_n8_β:
 jmp xchain13_n2_β
xchain13_n9_α:
# IR_VAR
bb17_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain13_n10_α
 xchain13_n9_β:
 jmp proc_divisors_ω
xchain13_n10_α:
# IR_SUSPEND yield+resume
bb18_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 8], rax
 jmp proc_divisors_γ
 xchain13_n10_β:
 jmp xchain13_n2_α
xchain13_n11_α:
# IR_EVERY
 jmp proc_divisors_ω
 xchain13_n11_β:
 jmp proc_divisors_ω
proc_divisors_β:
jmp xchain13_n10_β
proc_divisors_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_divisors_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_fibs_α
proc_fibs_α:
#=======================================================================================================================
    .global proc_fibs_α
    .global proc_fibs_β
    .global proc_fibs_γ
    .global proc_fibs_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
  cmp esi, 0
  jne proc_fibs_β
proc_fibs_α_body:
xchain32_n0_α:
# IR_LIT_I
bb20_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain32_n1_α
 xchain32_n0_β:
 jmp xchain32_n2_α
.Lx33_0:
 .quad 0
xchain32_n1_α:
bb21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain32_n2_α
 xchain32_n1_β:
 jmp xchain32_n2_α
xchain32_n2_α:
# IR_LIT_I
bb22_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain32_n3_α
 xchain32_n2_β:
 jmp xchain32_n4_α
.Lx35_0:
 .quad 1
xchain32_n3_α:
bb23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain32_n4_α
 xchain32_n3_β:
 jmp xchain32_n4_α
xchain32_n4_α:
# IR_VAR
bb24_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain32_n5_α
 xchain32_n4_β:
 jmp xchain32_n8_α
xchain32_n5_α:
# IR_VAR
bb25_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain32_n6_α
 xchain32_n5_β:
 jmp xchain32_n8_α
xchain32_n6_α:
bb26_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 24]
 cmp rax, rcx
 jg xchain32_n8_α
 mov rcx, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rcx
 mov rcx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rcx
 jmp xchain32_n7_α
 xchain32_n6_β:
 jmp xchain32_n8_α
xchain32_n7_α:
# IR_VAR
bb27_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain32_n9_α
 xchain32_n7_β:
 jmp proc_fibs_ω
xchain32_n8_α:
xchain32_n8_β:
jmp proc_fibs_ω
jmp proc_fibs_ω
xchain32_n9_α:
# IR_SUSPEND yield+resume
bb28_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 8], rax
 jmp proc_fibs_γ
 xchain32_n9_β:
 jmp xchain32_n10_α
xchain32_n10_α:
# IR_VAR
bb29_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain32_n11_α
 xchain32_n10_β:
 jmp xchain32_n14_α
xchain32_n11_α:
# IR_VAR
bb30_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain32_n12_α
 xchain32_n11_β:
 jmp xchain32_n14_α
xchain32_n12_α:
bb31_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 56]
 add rax, rcx
 mov qword ptr [r12 + 176], 6
 mov qword ptr [r12 + 184], rax
 jmp xchain32_n13_α
 xchain32_n12_β:
 jmp xchain32_n14_α
xchain32_n13_α:
bb32_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain32_n14_α
 xchain32_n13_β:
 jmp xchain32_n14_α
xchain32_n14_α:
# IR_VAR
bb33_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain32_n15_α
 xchain32_n14_β:
 jmp xchain32_n16_α
xchain32_n15_α:
bb34_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain32_n16_α
 xchain32_n15_β:
 jmp xchain32_n16_α
xchain32_n16_α:
# IR_VAR
bb35_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain32_n17_α
 xchain32_n16_β:
 jmp xchain32_n4_α
xchain32_n17_α:
bb36_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain32_n18_α
 xchain32_n17_β:
 jmp xchain32_n4_α
xchain32_n18_α:
jmp xchain32_n4_α
xchain32_n18_β:
jmp xchain32_n4_α
proc_fibs_β:
jmp xchain32_n9_β
proc_fibs_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_fibs_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_perfect_α
proc_perfect_α:
#=======================================================================================================================
    .global proc_perfect_α
    .global proc_perfect_β
    .global proc_perfect_γ
    .global proc_perfect_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
  cmp esi, 0
  jne proc_perfect_β
proc_perfect_α_body:
xchain58_n0_α:
xargsub60_n0_α:
# IR_LIT_I
bb37_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg59_done
 xargsub60_n0_β:
 jmp xchain58_n2_α
.Lx61_0:
 .quad 2
xicnarg59_done:
xargsub63_n0_α:
# IR_VAR
bb38_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg62_done
 xargsub63_n0_β:
 jmp xchain58_n2_α
xicnarg62_done:
bb39_α:
  .section .rodata
  .Lcall39_pname: .string "range"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall39_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain58_n2_α
 jmp xchain58_n1_α
xchain58_n0_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain58_n2_α
 jmp xchain58_n1_α
xchain58_n1_α:
bb40_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain58_n3_α
 xchain58_n1_β:
 jmp xchain58_n6_β
xchain58_n2_α:
# IR_EVERY
 jmp proc_perfect_ω
 xchain58_n2_β:
 jmp proc_perfect_ω
xchain58_n3_α:
# IR_LIT_I
bb42_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain58_n4_α
 xchain58_n3_β:
 jmp xchain58_n5_α
.Lx69_0:
 .quad 0
xchain58_n4_α:
bb43_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain58_n5_α
 xchain58_n4_β:
 jmp xchain58_n5_α
xchain58_n5_α:
# IR_VAR
bb44_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain58_n6_α
 xchain58_n5_β:
 jmp xchain58_n6_β
xchain58_n6_α:
xargsub74_n0_α:
# IR_VAR
bb45_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xicnarg73_done
 xargsub74_n0_β:
 jmp xchain58_n8_α
xicnarg73_done:
bb46_α:
  .section .rodata
  .Lcall46_pname: .string "divisors"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall46_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain58_n8_α
 jmp xchain58_n7_α
xchain58_n6_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain58_n8_α
 jmp xchain58_n7_α
xchain58_n7_α:
bb47_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 152]
 add rax, rcx
 mov qword ptr [r12 + 160], 6
 mov qword ptr [r12 + 168], rax
 jmp xchain58_n9_α
 xchain58_n7_β:
 jmp xchain58_n6_β
xchain58_n8_α:
# IR_EVERY
 jmp xchain58_n10_α
 xchain58_n8_β:
 jmp xchain58_n10_α
xchain58_n9_α:
bb49_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain58_n6_β
 xchain58_n9_β:
 jmp xchain58_n6_β
xchain58_n10_α:
# IR_VAR
bb50_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain58_n11_α
 xchain58_n10_β:
 jmp xchain58_n14_α
xchain58_n11_α:
# IR_VAR
bb51_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain58_n12_α
 xchain58_n11_β:
 jmp xchain58_n14_α
xchain58_n12_α:
bb52_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 40]
 sub rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain58_n13_α
 xchain58_n12_β:
 jmp xchain58_n14_α
xchain58_n13_α:
bb53_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain58_n14_α
 xchain58_n13_β:
 jmp xchain58_n14_α
xchain58_n14_α:
# IR_VAR
bb54_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain58_n15_α
 xchain58_n14_β:
 jmp xchain58_n0_β
xchain58_n15_α:
# IR_VAR
bb55_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain58_n16_α
 xchain58_n15_β:
 jmp xchain58_n0_β
xchain58_n16_α:
bb56_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 jne xchain58_n0_β
 mov rcx, qword ptr [r12 + 32]
 mov qword ptr [r12 + 224], rcx
 mov rcx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 232], rcx
 jmp xchain58_n17_α
 xchain58_n16_β:
 jmp xchain58_n0_β
xchain58_n17_α:
# IR_VAR
bb57_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain58_n18_α
 xchain58_n17_β:
 jmp proc_perfect_ω
xchain58_n18_α:
# IR_SUSPEND yield+resume
bb58_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 8], rax
 jmp proc_perfect_γ
 xchain58_n18_β:
 jmp xchain58_n19_α
xchain58_n19_α:
jmp xchain58_n0_β
xchain58_n19_β:
jmp xchain58_n0_β
proc_perfect_β:
jmp xchain58_n18_β
proc_perfect_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_perfect_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lstartup_pname0: .string "range"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_range_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname1: .string "divisors"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_divisors_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname2: .string "fibs"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_fibs_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname3: .string "perfect"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_perfect_α]
  call rt_proc_set_fn@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
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
xchain96_n0_α:
# IR_LIT_S
bb59_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain96_n1_α
 xchain96_n0_β:
 jmp xchain96_n2_α
.Lx97_0:
 .quad .Lx97_0_s
.Lx97_0_s:
 .string "Fibs to 100:"
xchain96_n1_α:
bb60_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_write_any_nl@PLT
 jmp xchain96_n2_α
xchain96_n1_β:
xchain96_n1_β:
 jmp xchain96_n2_α
xchain96_n2_α:
# IR_LIT_S
bb61_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain96_n3_α
 xchain96_n2_β:
 jmp xchain96_n4_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string ""
xchain96_n3_α:
bb62_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain96_n4_α
 xchain96_n3_β:
 jmp xchain96_n4_α
xchain96_n4_α:
# IR_VAR
bb63_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain96_n5_α
 xchain96_n4_β:
 jmp xchain96_n33_β
xchain96_n5_α:
# IR_LIT_S
bb64_α:
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx103_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain96_n6_α
 xchain96_n5_β:
 jmp xchain96_n33_β
.Lx103_0:
 .quad .Lx103_0_s
.Lx103_0_s:
 .string " "
xchain96_n6_α:
xargsub105_n0_α:
# IR_LIT_I
bb65_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx106_0]
 mov qword ptr [r12 + 104], rax
 jmp xicnarg104_done
 xargsub105_n0_β:
 jmp xchain96_n8_α
.Lx106_0:
 .quad 100
xicnarg104_done:
bb66_α:
  .section .rodata
  .Lcall66_pname: .string "fibs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+96]
 mov rdx, qword ptr [r12+104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall66_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain96_n8_α
 jmp xchain96_n7_α
xchain96_n6_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain96_n8_α
 jmp xchain96_n7_α
xchain96_n7_α:
bb67_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call str_concat_d@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain96_n9_α
 xchain96_n7_β:
 jmp xchain96_n33_β
xchain96_n8_α:
# IR_EVERY
 jmp xchain96_n10_α
 xchain96_n8_β:
 jmp xchain96_n10_α
xchain96_n9_α:
bb69_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 call str_concat_d@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain96_n11_α
 xchain96_n9_β:
 jmp xchain96_n33_β
xchain96_n10_α:
# IR_LIT_S
bb70_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain96_n12_α
 xchain96_n10_β:
 jmp xchain96_n16_α
.Lx111_0:
 .quad .Lx111_0_s
.Lx111_0_s:
 .string " "
xchain96_n11_α:
bb71_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain96_n6_β
 xchain96_n11_β:
 jmp xchain96_n33_β
xchain96_n12_α:
# IR_VAR
bb72_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain96_n13_α
 xchain96_n12_β:
 jmp xchain96_n16_α
xchain96_n13_α:
# IR_LIT_I
bb73_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [r12 + 200], rax
 jmp xsec115_i1_done
 xsec115_i1_b:
 jmp xchain96_n16_α
.Lx116_0:
 .quad 2
xsec115_i1_done:
# IR_LIT_I
bb74_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx117_0]
 mov qword ptr [r12 + 216], rax
 jmp xsec115_i2_done
 xsec115_i2_b:
 jmp xchain96_n16_α
.Lx117_0:
 .quad 0
xsec115_i2_done:
# IR_SECTION
bb75_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8, qword ptr [r12 + 208]
 mov r9, qword ptr [r12 + 216]
 call subscript_get2@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain96_n14_α
 xchain96_n13_β:
 jmp xchain96_n16_α
xchain96_n14_α:
bb76_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 call str_concat_d@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain96_n15_α
 xchain96_n14_β:
 jmp xchain96_n16_α
xchain96_n15_α:
bb77_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 call rt_write_any_nl@PLT
 jmp xchain96_n16_α
xchain96_n15_β:
xchain96_n15_β:
 jmp xchain96_n16_α
xchain96_n16_α:
# IR_LIT_S
bb78_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx121_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain96_n17_α
 xchain96_n16_β:
 jmp xchain96_n18_α
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string "Perfect numbers to 10000:"
xchain96_n17_α:
bb79_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 call rt_write_any_nl@PLT
 jmp xchain96_n18_α
xchain96_n17_β:
xchain96_n17_β:
 jmp xchain96_n18_α
xchain96_n18_α:
# IR_LIT_S
bb80_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx123_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain96_n19_α
 xchain96_n18_β:
 jmp xchain96_n33_β
.Lx123_0:
 .quad .Lx123_0_s
.Lx123_0_s:
 .string "  "
xchain96_n19_α:
xargsub125_n0_α:
# IR_LIT_I
bb81_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [r12 + 296], rax
 jmp xicnarg124_done
 xargsub125_n0_β:
 jmp xchain96_n21_α
.Lx126_0:
 .quad 10000
xicnarg124_done:
bb82_α:
  .section .rodata
  .Lcall82_pname: .string "perfect"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+288]
 mov rdx, qword ptr [r12+296]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall82_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain96_n21_α
 jmp xchain96_n20_α
xchain96_n19_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain96_n21_α
 jmp xchain96_n20_α
xchain96_n20_α:
bb83_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call str_concat_d@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain96_n22_α
 xchain96_n20_β:
 jmp xchain96_n33_β
xchain96_n21_α:
# IR_EVERY
 jmp xchain96_n23_α
 xchain96_n21_β:
 jmp xchain96_n23_α
xchain96_n22_α:
bb85_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_write_any_nl@PLT
 jmp xchain96_n19_β
xchain96_n22_β:
xchain96_n22_β:
 jmp xchain96_n33_β
xchain96_n23_α:
# IR_LIT_S
bb86_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx131_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain96_n24_α
 xchain96_n23_β:
 jmp xchain96_n25_α
.Lx131_0:
 .quad .Lx131_0_s
.Lx131_0_s:
 .string "Primes to 50 (trial division by generators):"
xchain96_n24_α:
bb87_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 call rt_write_any_nl@PLT
 jmp xchain96_n25_α
xchain96_n24_β:
xchain96_n24_β:
 jmp xchain96_n25_α
xchain96_n25_α:
# IR_LIT_S
bb88_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx133_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain96_n26_α
 xchain96_n25_β:
 jmp xchain96_n27_α
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string ""
xchain96_n26_α:
bb89_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain96_n27_α
 xchain96_n26_β:
 jmp xchain96_n27_α
xchain96_n27_α:
# IR_VAR
bb90_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain96_n28_α
 xchain96_n27_β:
 jmp xchain96_n33_β
xchain96_n28_α:
# IR_LIT_S
bb91_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx137_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain96_n29_α
 xchain96_n28_β:
 jmp xchain96_n33_β
.Lx137_0:
 .quad .Lx137_0_s
.Lx137_0_s:
 .string " "
xchain96_n29_α:
xargsub139_n0_α:
# IR_LIT_I
bb92_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [r12 + 408], rax
 jmp xicnarg138_done
 xargsub139_n0_β:
 jmp xchain96_n31_α
.Lx140_0:
 .quad 2
xicnarg138_done:
xargsub142_n0_α:
# IR_LIT_I
bb93_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx143_0]
 mov qword ptr [r12 + 424], rax
 jmp xicnarg141_done
 xargsub142_n0_β:
 jmp xchain96_n31_α
.Lx143_0:
 .quad 50
xicnarg141_done:
bb94_α:
  .section .rodata
  .Lcall94_pname: .string "range"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+400]
 mov rdx, qword ptr [r12+408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+416]
 mov rdx, qword ptr [r12+424]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall94_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain96_n31_α
 jmp xchain96_n30_α
xchain96_n29_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain96_n31_α
 jmp xchain96_n30_α
xchain96_n30_α:
bb95_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain96_n31_α
 xchain96_n30_β:
 jmp xchain96_n31_α
xchain96_n31_α:
# IR_LIT_I
bb96_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain96_n32_α
 xchain96_n31_β:
 jmp xchain96_n35_α
.Lx146_0:
 .quad 0
xchain96_n32_α:
# IR_VAR
bb97_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain96_n33_α
 xchain96_n32_β:
 jmp xchain96_n35_α
xchain96_n33_α:
xargsub150_n0_α:
# IR_LIT_I
bb98_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [r12 + 488], rax
 jmp xicnarg149_done
 xargsub150_n0_β:
 jmp xchain96_n35_α
.Lx151_0:
 .quad 2
xicnarg149_done:
xargsub153_n0_α:
bb99_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+512]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn155: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn155]
 lea rsi, [r12 + 512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain96_n35_α
 jmp xicnarg152_done
 xargsub153_n0_β:
 jmp xchain96_n35_α
xicnarg152_done:
bb100_α:
  .section .rodata
  .Lcall100_pname: .string "range"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+480]
 mov rdx, qword ptr [r12+488]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+496]
 mov rdx, qword ptr [r12+504]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall100_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain96_n35_α
 jmp xchain96_n34_α
xchain96_n33_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain96_n35_α
 jmp xchain96_n34_α
xchain96_n34_α:
bb101_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 536]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [r12 + 544], 6
 mov qword ptr [r12 + 552], rax
 jmp xchain96_n36_α
 xchain96_n34_β:
 jmp xchain96_n35_α
xchain96_n35_α:
# IR_NOT
bb102_α:
 mov qword ptr [r12 + 560], 0
 mov qword ptr [r12 + 568], 0
 jmp xchain96_n37_α
 xchain96_n35_β:
 jmp xchain96_n33_β
xchain96_n36_α:
bb103_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 472]
 mov rcx, qword ptr [r12 + 552]
 cmp rax, rcx
 jne xchain96_n33_β
 mov rcx, qword ptr [r12 + 544]
 mov qword ptr [r12 + 576], rcx
 mov rcx, qword ptr [r12 + 552]
 mov qword ptr [r12 + 584], rcx
 jmp xchain96_n38_α
 xchain96_n36_β:
 jmp xchain96_n33_β
xchain96_n37_α:
# IR_VAR
bb104_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain96_n39_α
 xchain96_n37_β:
 jmp xchain96_n33_β
xchain96_n38_α:
# IR_EVERY
 jmp xchain96_n40_α
 xchain96_n38_β:
 jmp xchain96_n40_α
xchain96_n39_α:
jmp xchain96_n41_α
xchain96_n39_β:
jmp xchain96_n33_β
xchain96_n40_α:
# IR_LIT_S
bb106_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx163_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain96_n42_α
 xchain96_n40_β:
 jmp main_ω
.Lx163_0:
 .quad .Lx163_0_s
.Lx163_0_s:
 .string " "
xchain96_n41_α:
jmp xchain96_n43_α
xchain96_n41_β:
jmp xchain96_n33_β
xchain96_n42_α:
# IR_VAR
bb107_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain96_n44_α
 xchain96_n42_β:
 jmp main_ω
xchain96_n43_α:
bb108_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 call str_concat_d@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain96_n45_α
 xchain96_n43_β:
 jmp xchain96_n33_β
xchain96_n44_α:
# IR_LIT_I
bb109_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [r12 + 632], rax
 jmp xsec167_i1_done
 xsec167_i1_b:
 jmp main_ω
.Lx168_0:
 .quad 2
xsec167_i1_done:
# IR_LIT_I
bb110_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx169_0]
 mov qword ptr [r12 + 648], rax
 jmp xsec167_i2_done
 xsec167_i2_b:
 jmp main_ω
.Lx169_0:
 .quad 0
xsec167_i2_done:
# IR_SECTION
bb111_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 mov r8, qword ptr [r12 + 640]
 mov r9, qword ptr [r12 + 648]
 call subscript_get2@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain96_n46_α
 xchain96_n44_β:
 jmp main_ω
xchain96_n45_α:
bb112_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 call str_concat_d@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain96_n47_α
 xchain96_n45_β:
 jmp xchain96_n33_β
xchain96_n46_α:
bb113_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 656]
 mov rcx, qword ptr [r12 + 664]
 call str_concat_d@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain96_n48_α
 xchain96_n46_β:
 jmp main_ω
xchain96_n47_α:
bb114_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain96_n38_α
 xchain96_n47_β:
 jmp xchain96_n33_β
xchain96_n48_α:
bb115_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain96_n48_β:
xchain96_n48_β:
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
