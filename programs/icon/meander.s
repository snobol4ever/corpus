  .intel_syntax noprefix
  .text
  .globl proc_meander_α
proc_meander_α:
#=======================================================================================================================
    .global proc_meander_α
    .global proc_meander_β
    .global proc_meander_γ
    .global proc_meander_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_meander_α_body:
xchain0_n0_α:
# IR_VAR
bb1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n4_α
xchain0_n1_α:
# IR_UNOP
bb2_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n4_α
xchain0_n2_α:
bb3_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n8_α
xchain0_n5_α:
# IR_LIT_I
bb6_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n8_α
.Lx8_0:
 .quad 1
xchain0_n6_α:
bb7_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 184]
 sub rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
xchain0_n7_α:
bb8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
bb9_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+272]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = LIT_I -> [r12+288]
 mov qword ptr [r12 + 288], 6
 movabs rax, 1
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lcallfn12: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn12]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
# marshal arg1 = varslot [r12+80] -> [r12+256]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn13: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn13]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
xchain0_n9_α:
bb10_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n10_α
xchain0_n10_α:
bb11_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+16] -> [r12+336]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = varslot [r12+64] -> [r12+352]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lbynamefn16: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn16]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n11_α
xchain0_n10_β:
 jmp xchain0_n12_α
xchain0_n11_α:
bb12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
xchain0_n12_β:
jmp xchain0_n14_α
jmp xchain0_n14_α
xchain0_n13_α:
bb13_α:
# BOX IR_CALL find(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+96] -> [r12+400]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = varslot [r12+96] -> [r12+416]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lbynamefn19: .string "find"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn19]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
xchain0_n13_β:
 jmp xchain0_n16_α
xchain0_n14_α:
# IR_VAR
bb14_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp proc_meander_ω
xchain0_n15_α:
# IR_VAR
bb15_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n10_α
xchain0_n16_α:
# IR_VAR
bb16_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n24_α
xchain0_n17_α:
# IR_RETURN
bb17_α:
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_meander_γ
xchain0_n18_α:
# IR_LIT_I
bb18_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n10_α
.Lx27_0:
 .quad 1
xchain0_n19_α:
# IR_VAR
bb19_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n24_α
xchain0_n20_α:
bb20_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 72]
 mov rcx, qword ptr [r12 + 440]
 sub rax, rcx
 mov qword ptr [r12 + 448], 6
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n10_α
xchain0_n21_α:
bb21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call str_concat_d@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n24_α
xchain0_n22_α:
bb22_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n10_α
 xchain0_n22_β:
 jmp xchain0_n10_α
xchain0_n23_α:
bb23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n24_α
xchain0_n24_α:
# IR_VAR
bb24_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n10_α
xchain0_n25_α:
bb25_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n10_α
xchain0_n26_α:
jmp xchain0_n10_α
xchain0_n26_β:
jmp xchain0_n10_α
proc_meander_β:
jmp proc_meander_ω
proc_meander_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_meander_ω:
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
  .Lstartup_pname0: .string "meander"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_meander_α]
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
xchain37_n0_α:
bb26_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn39: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 32]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain37_n2_α
 jmp xchain37_n1_α
 xchain37_n0_β:
 jmp xchain37_n2_α
xchain37_n1_α:
bb27_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain37_n3_α
 xchain37_n1_β:
 jmp xchain37_n2_α
xchain37_n2_α:
xchain37_n2_β:
jmp main_γ
jmp main_γ
xchain37_n3_α:
xargsub42_n0_α:
# IR_VAR
bb28_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xscan41_subj_done
 xargsub42_n0_β:
 jmp xchain37_n0_α
xscan41_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan41_body_start
 xscan41_enter_β:
 jmp xchain37_n0_α
xscan41_body_start:
xargsub47_n0_α:
xargsub49_n0_α:
# IR_SCAN_UPTO
bb29_α:
 mov qword ptr [r12 + 88], r14
.Lx51_0:
 mov rax, qword ptr [r12 + 88]
 cmp rax, r15
 jge xargsub47_n2_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx51_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx51_1
 mov qword ptr [r12 + 72], 6
 add rax, 1
 mov qword ptr [r12 + 80], rax
 jmp xscantab48_arg_done
.Lx51_1:
 inc qword ptr [r12 + 88]
 jmp .Lx51_0
 xargsub49_n0_β:
 inc qword ptr [r12 + 88]
 jmp .Lx51_0
.Lx51_2:
 .quad .Lx51_2_s
.Lx51_2_s:
 .string ":"
xscantab48_arg_done:
# IR_SCAN_TAB
bb30_α:
 mov rax, qword ptr [r12 + 80]
 cmp rax, 1
 jl xargsub47_n2_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xargsub47_n2_α
 mov qword ptr [r12 + 112], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xargsub47_n1_α
 xargsub47_n0_β:
 mov r14, qword ptr [r12 + 112]
 jmp xargsub47_n2_α
xargsub47_n1_α:
bb31_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 jmp xargsub47_n3_α
 xargsub47_n1_β:
 jmp xargsub47_n2_α
xargsub47_n2_α:
bb32_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+168]
 mov qword ptr [r12 + 168], 1
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [r12 + 176], rax
 jmp .Lx55_1
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "*** erroneous input ***"
.Lx55_1:
  .section .rodata
  .Lrkfn56: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn56]
 lea rsi, [r12 + 168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 cmp eax, 99
 je xscan41_body_fail
 jmp xscan41_body_done
 xargsub47_n2_β:
 jmp xscan41_body_fail
xargsub47_n3_α:
# IR_SCAN_MOVE
bb33_α:
 mov rax, r14
 add rax, 2
 cmp rax, 1
 jl xargsub47_n2_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xargsub47_n2_α
 mov qword ptr [r12 + 200], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp xargsub47_n4_α
 xargsub47_n3_β:
 mov r14, qword ptr [r12 + 200]
 jmp xargsub47_n2_α
xargsub47_n4_α:
bb34_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+240]
 mov qword ptr [r12 + 240], 6
 movabs rax, 0
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lcallfn60: .string "tab"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn60]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
  .section .rodata
  .Lrkfn61: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn61]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xargsub47_n2_α
 jmp xargsub47_n5_α
 xargsub47_n4_β:
 jmp xargsub47_n2_α
xargsub47_n5_α:
bb35_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xargsub47_n6_α
 xargsub47_n5_β:
 jmp xargsub47_n2_α
xargsub47_n6_α:
jmp xargsub47_n7_α
xargsub47_n6_β:
jmp xargsub47_n2_α
xargsub47_n7_α:
xargsub64_n0_α:
# IR_VAR
bb36_α:
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 120], rax
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 128], rax
 jmp xicnarg63_done
 xargsub64_n0_β:
 jmp xscan41_body_fail
xicnarg63_done:
xargsub68_n0_α:
# IR_VAR
bb37_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 264], rax
 jmp xicnarg67_done
 xargsub68_n0_β:
 jmp xscan41_body_fail
xicnarg67_done:
bb38_α:
  .section .rodata
  .Lcall41_pname: .string "meander"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+120]
 mov rdx, qword ptr [r12+128]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+256]
 mov rdx, qword ptr [r12+264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall41_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xscan41_body_fail
 jmp xargsub47_n8_α
xargsub47_n7_β:
 jmp xscan41_body_fail
xargsub47_n8_α:
bb39_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 call rt_write_any_nl@PLT
 jmp xscan41_body_done
xargsub47_n8_β:
xargsub47_n8_β:
 jmp xscan41_body_fail
xscan41_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain37_n0_α
 xscan41_leaveok_β:
 jmp xchain37_n0_α
xscan41_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain37_n0_α
 xscan41_leavef_β:
 jmp xchain37_n0_α
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
