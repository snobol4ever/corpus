  .intel_syntax noprefix
  .text
  .globl proc_palindrome_α
proc_palindrome_α:
#=======================================================================================================================
    .global proc_palindrome_α
    .global proc_palindrome_β
    .global proc_palindrome_γ
    .global proc_palindrome_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_palindrome_α_body:
xchain0_n0_α:
bb1_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+80]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn2: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_LIT_I
bb3_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
.Lx4_0:
 .quad 1
xchain0_n3_α:
bb4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n7_α
xchain0_n5_α:
# IR_UNOP
bb6_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n7_α
xchain0_n6_α:
bb7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n7_α
xchain0_n7_α:
# IR_VAR
bb8_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n11_α
xchain0_n8_α:
# IR_VAR
bb9_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n11_α
xchain0_n9_α:
bb10_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 56]
 cmp rax, rcx
 jge xchain0_n11_α
 mov rcx, qword ptr [r12 + 48]
 mov qword ptr [r12 + 176], rcx
 mov rcx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 184], rcx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n11_α
xchain0_n10_α:
bb11_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+16] -> [r12+208]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
# marshal arg1 = varslot [r12+32] -> [r12+224]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lbynamefn16: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn16]
 lea rsi, [r12 + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n12_α
xchain0_n10_β:
 jmp xchain0_n13_α
xchain0_n11_α:
xchain0_n11_β:
jmp xchain0_n14_α
jmp xchain0_n14_α
xchain0_n12_α:
bb12_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+16] -> [r12+256]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = varslot [r12+48] -> [r12+272]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lbynamefn18: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn18]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n15_α
xchain0_n12_β:
 jmp xchain0_n13_α
xchain0_n13_α:
# IR_VAR
bb13_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n22_α
xchain0_n14_α:
# IR_LIT_S
bb14_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp proc_palindrome_ω
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "yes"
xchain0_n15_α:
bb15_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n13_α
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n13_α
xchain0_n16_α:
# IR_LIT_I
bb16_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n22_α
.Lx23_0:
 .quad 1
xchain0_n17_α:
# IR_RETURN
bb17_α:
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_palindrome_γ
xchain0_n18_α:
# IR_LIT_S
bb18_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp proc_palindrome_ω
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "no"
xchain0_n19_α:
bb19_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 328]
 add rax, rcx
 mov qword ptr [r12 + 352], 6
 mov qword ptr [r12 + 360], rax
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n22_α
xchain0_n20_α:
# IR_RETURN
bb20_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_palindrome_γ
xchain0_n21_α:
bb21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n22_α
xchain0_n22_α:
# IR_VAR
bb22_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n7_α
xchain0_n23_α:
# IR_LIT_I
bb23_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n7_α
.Lx31_0:
 .quad 1
xchain0_n24_α:
bb24_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 392]
 sub rax, rcx
 mov qword ptr [r12 + 400], 6
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n7_α
xchain0_n25_α:
bb25_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n7_α
xchain0_n26_α:
jmp xchain0_n7_α
xchain0_n26_β:
jmp xchain0_n7_α
proc_palindrome_β:
jmp proc_palindrome_ω
proc_palindrome_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_palindrome_ω:
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
  .Lstartup_pname0: .string "palindrome"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_palindrome_α]
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
xchain34_n0_α:
xargsub36_n0_α:
# IR_LIT_S
bb26_α:
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg35_done
 xargsub36_n0_β:
 jmp xchain34_n2_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "racecar"
xicnarg35_done:
bb27_α:
  .section .rodata
  .Lcall27_pname: .string "palindrome"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall27_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain34_n2_α
 jmp xchain34_n1_α
xchain34_n0_β:
 jmp xchain34_n2_α
xchain34_n1_α:
bb28_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain34_n2_α
xchain34_n1_β:
xchain34_n1_β:
 jmp xchain34_n2_α
xchain34_n2_α:
xargsub41_n0_α:
# IR_LIT_S
bb29_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 40], rax
 jmp xicnarg40_done
 xargsub41_n0_β:
 jmp xchain34_n4_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "hello"
xicnarg40_done:
bb30_α:
  .section .rodata
  .Lcall30_pname: .string "palindrome"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall30_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain34_n4_α
 jmp xchain34_n3_α
xchain34_n2_β:
 jmp xchain34_n4_α
xchain34_n3_α:
bb31_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 call rt_write_any_nl@PLT
 jmp xchain34_n4_α
xchain34_n3_β:
xchain34_n3_β:
 jmp xchain34_n4_α
xchain34_n4_α:
xargsub46_n0_α:
# IR_LIT_S
bb32_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg45_done
 xargsub46_n0_β:
 jmp main_ω
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "level"
xicnarg45_done:
bb33_α:
  .section .rodata
  .Lcall33_pname: .string "palindrome"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall33_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je main_ω
 jmp xchain34_n5_α
xchain34_n4_β:
 jmp main_ω
xchain34_n5_α:
bb34_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain34_n5_β:
xchain34_n5_β:
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
